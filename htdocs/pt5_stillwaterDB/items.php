<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Items List</title>
</head>
<link rel="stylesheet" href="css/style.css">
<?php
include("nav.php");
include("database.php");

$sql = "SELECT * FROM items WHERE is_sold = 0 ORDER BY item_num DESC";

$query = mysqli_query($conn, $sql);

if (!$query) {
    echo "Error: " . mysqli_error($conn);
}
?>
<style>
    .td a[href*="update_i.php"] {
        display: inline-block;
        padding: 5px 15px;
        margin: 0 10px;
        background-color: #185875;
        color: white;
        text-decoration: none;
        border-radius: 5px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
    }

    .td a[href*="update_i.php"]:hover {
        background-color: #72BF78;
        cursor: pointer;
        transition: background-color 0.3s ease;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
    }

    .td a[href*="items.php?action=delete"] {
        display: inline-block;
        padding: 5px 15px;
        margin: 0 10px;
        background-color: #185875;
        color: white;
        text-decoration: none;
        border-radius: 5px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
    }

    .td a[href*="items.php?action=delete"]:hover {
        background-color: #FB667A;
        cursor: pointer;
        transition: background-color 0.3s ease;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
    }

    .condition-excellent {
        color: gold;
        font-weight: bold;
        padding: 5px;
        border-radius: 5px;
    }

    .condition-good {
        color: greenyellow;
        font-weight: bold;
        padding: 5px;
        border-radius: 5px;
    }

    .condition-fair {
        color: orange;
        font-weight: bold;
        padding: 5px;
        border-radius: 5px;
    }

    .condition-bad {
        color: red;
        font-weight: bold;
        padding: 5px;
        border-radius: 5px;
    }
</style>
<body>
    <br>
    <br>
    <table class="container">
        <tr>
            <th class="th" width="17%"><a href="insert_c.php">Insert Client</a></th>
            <th>&nbsp;</th>
            <th>&nbsp;</th>
            <th>&nbsp;</th>
            <th>&nbsp;</th>
            <th>&nbsp;</th>
            <th align="right">Stillwater Items List</th>
        </tr>
        <tbody align="center">
            <tr>
                <th>Condition</th>
                <th>Price</th>
                <th>Description</th>
                <th>Critiqued Comments</th>
                <th>Item Type</th>
                <th>Item Number</th>
                <th>Actions</th>
            </tr>
            <?php while ($result = mysqli_fetch_assoc($query)) {
                $formatPrice = number_format($result['asking_price']);
                $conditionClass = '';
                switch (strtolower($result['condition'])) {
                    case 'excellent':
                        $conditionClass = 'condition-excellent';
                        break;
                    case 'good':
                        $conditionClass = 'condition-good';
                        break;
                    case 'fair':
                        $conditionClass = 'condition-fair';
                        break;
                    case 'bad':
                        $conditionClass = 'condition-bad';
                        break;
                }
            ?>
                <tr>
                    <td class="<?php echo $conditionClass; ?>">
                        <?php echo $result['condition']; ?>
                    </td>
                    <td align="left"><span style="color: green;">₱</span> <?php echo $formatPrice; ?></td>
                    <td><?php echo $result['description']; ?></td>
                    <td><?php echo $result['critiqued_comments']; ?></td>
                    <td><?php echo $result['item_type']; ?></td>
                    <td><span style="color: #FB667A"><?php echo $result['item_num']; ?></span></td>
                    <td align="center" width="20%" class="td">
                        <a href='update_i.php?action=edit&item_num=<?php echo $result["item_num"]; ?>'>Edit</a>
                        <a href='items.php?action=delete&item_num=<?php echo $result["item_num"]; ?>' onclick="return confirm('Are you sure you want to mark this item as sold?');">Delete</a>
                    </td>
                </tr>
            <?php } ?>
        </tbody>
        <?php
        if (isset($_GET['action']) && isset($_GET['item_num'])) {
            $action = $_GET['action'];
            $item_num = $_GET['item_num'];

            if ($action == 'delete') {
                // Mark item as sold instead of deleting it
                $sql = "UPDATE items SET is_sold = 1 WHERE item_num = '$item_num'";
                if (mysqli_query($conn, $sql)) {
                    echo "<script>alert('Item has been marked as sold.'); window.location='items.php';</script>";
                } else {
                    echo "<script>alert('Failed to update the item status.'); window.location='items.php';</script>";
                }
            }
        }
        ?>
</body>

</html>