  <!--================Home Banner Area =================-->
  <section class="home_banner_area mb-40">
    <div class="banner_inner d-flex align-items-center">
      <div class="container">
        <div class="banner_content row">
          <div class="col-lg-12">
            <p class="sub text-uppercase">toy Collection</p>
            <h3><span style="color: rgba(222,99,32,0.85);">Making</span> Your <br />Toys's <span style="color: rgba(222,99,32,0.85);">Memories</span></h3>
            <h4>Be healthy and happy</h4>
            <a class="main_btn mt-40" href="/">View Collection</a>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!--================End Home Banner Area =================-->

  <!-- Start feature Area -->
  <section class="feature-area section_gap_bottom_custom">
    <div class="container">
      <div class="row">
        <div class="col-lg-3 col-md-6">
          <div class="single-feature">
            <a href="#" class="title">
              <i class="flaticon-money"></i>
              <h3>Money Back Guagrantee</h3>
            </a>
            <p>100%</p>
          </div>
        </div>

        <div class="col-lg-3 col-md-6">
          <div class="single-feature">
            <a href="#" class="title">
              <i class="flaticon-truck"></i>
              <h3>Free Delivery</h3>
            </a>
            <p>> 1000$</p>
          </div>
        </div>

        <div class="col-lg-3 col-md-6">
          <div class="single-feature">
            <a href="#" class="title">
              <i class="flaticon-support"></i>
              <h3>Alway support</h3>
            </a>
            <p>5.30 A.M - 22.00 P.M</p>
          </div>
        </div>

        <div class="col-lg-3 col-md-6">
          <div class="single-feature">
            <a href="#" class="title">
              <i class="flaticon-blockchain"></i>
              <h3>Secure payment</h3>
            </a>
            <p>Momo, ToyPay</p>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- End feature Area -->

<?php
include 'db_connnection.php';

$sql = "SELECT * FROM Toys";
$result = OpenCon()->query($sql);

if ($result->num_rows > 0): ?>

      <!--================ Feature Product Area =================-->
  <section class="feature_product_area section_gap_bottom_custom">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-12">
          <div class="main_title">
            <h2><span>Ban Chay</span></h2>
            <p>Most good comments</p>
          </div>
        </div>
      </div>

      <div class="row">
      <?php while($row = $result->fetch_assoc()):  ?>      <!-- -->
        <div class="col-lg-4 col-md-6">
          <div class="single-product">
            <div class="product-img">
              <img class="img-fluid w-100" src="static/img/product/feature-product/<?= $row["images"]?>" alt="" />
              <div class="p_icon">
                <a href="#">
                  <i class="ti-eye"></i>
                </a>
                <a href="#">
                  <i class="ti-heart"></i>
                </a>
                <a href="#">
                  <i class="ti-shopping-cart"></i>
                </a>
              </div>
            </div>
            <div class="product-btm">
              <a href="#" class="d-block">
                <h4><?= $row["toy_name"]?></h4>
              </a>
              <div class="mt-3">
                <span class="mr-4">$<?= $row["price"]?></span>
                <!--<del>$35.00</del>-->
              </div>
            </div>
          </div>
        </div>
        <?php endwhile;?>
      </div>
    </div>
  </section>
  <!--================ End Feature Product Area =================-->

  <?php
else:
  echo "0 results";
endif;
CloseCon(OpenCon());
?>
