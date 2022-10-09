<?php
header("Content-Output: top10.json");
// kiểm tra endpoint có tồn tại parameter top_price và ko rỗng
if(isset($_GET['top_price']) && $_GET['top_price']!=""){ // top_price chỉ top bao nhiêu sản phẩm đắt nhất
    include 'db_connnection.php'; // connect mysql 
    
    $top_price = $_GET['top_price']; // 
    // câu lệnh truy vấn, chọn ra tất cả sản phẩm sắp xếp theo giá giảm dần, rồi lấy top theo _GET
    $sql = "SELECT * FROM toys order by price desc limit $top_price";
    $result = OpenCon()->query($sql); // lấy kết quả của câu lệnh truy vấn
    if ($result->num_rows > 0): // nếu có kết quả (1 hoặc nhiều row)
        while($row = $result->fetch_assoc()):
            response($row["toy_id"],$row["toy_name"],$row["price"]);
        endwhile;
    endif;
    CloseCon(OpenCon());

}
function response($toy_id,$toy_name,$price){ //func tự định nghĩa, in ra dạng json 3 key id, name, price của sản phẩm
    $response['toy_id'] = $toy_id;
    $response['toy_name'] = $toy_name;
    $response['price'] = $price;
    
    $json_response = json_encode($response);
    echo $json_response;
}
?>