<?php
    class showproduct extends controller{
        var $productmodel;
        var $commonmodel;
        function __construct()
        {
            $this->productmodel = $this->ModelAdmin("productmodel");
            $this->commonmodel = $this->ModelCommon("commonmodel");
        }
        function productpage(){
            $id =  $_POST["id"];
            if(isset($_POST["page"])){
            $current_page = $_POST["page"];
            }else $current_page = 1;
            if($id != 0){
                $limit =  8;
                $offset = ($current_page - 1) * 8;
                $result = $this->productmodel->GetProductPage($id,$limit,$offset);
            }else{
                $limit =  8;
                $offset = ($current_page - 1) * 8;
                $result = json_decode($this->commonmodel->GetCategoryPage($limit,$offset,"product"),true);
            }
            
                foreach($result as $key =>$values){ 
                echo '<div class="col-sm-4">
                    <div class="product-image-wrapper"style="max-height: 500px; min-height: 400px;">
                        <div class="single-products"style="max-height: 500px;">
                            <div class="productinfo text-center" style="max-height: 500px;">
                            <a href="javascript:void(0)" class=" btn-default add-to-cart" idproduct ="'.$values["id"].'">
                            <img style="object-fit: cover;" src="public/images/img_product/'.$values["img_product"].'" alt="" />
                            </a>
                                <h4 style="text-decoration: line-through;">'.number_format ($values["price"] , $decimals = 0 , $dec_point = "," , $thousands_sep = "." ).'đ</h4>
                                <h2 style="margin:unset">'.number_format ($values["price"] * (1 - $values["sale_product"]/100) , $decimals = 0 , $dec_point = "," , $thousands_sep = "." ).'đ</h2>
                                <p>'.$values["name"].'</p>
                                <a href="javascript:void(0)" class="btn btn-default add-to-cart" idproduct ="'.$values["id"].'"><i class="fa fa-shopping-cart"></i>Mua Hàng</a>
                            </div>
                            
                        </div>
                    </div>
                </div>
                ';
                }
    }
}