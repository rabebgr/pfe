<!DOCTYPE html>
<html style="font-size: 16px" lang="fr">

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <title>Product Page</title>
    <link rel="stylesheet" href="nicepage.css" media="screen">
    <link rel="stylesheet" href="product-page.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
    <link rel="stylesheet" href="femme.css" media="screen" />
    <meta name="generator" content="Nicepage 4.21.5, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lobster:400">
    <script type="application/ld+json">
        {
            "@context": "http://schema.org",
            "@type": "Organization",
            "name": "Copie de Site1",
            "logo": "images/logoPNG.png",
            "sameAs": [
                "https://www.facebook.com/profile.php?id=61552121878099&sk=about",
                "https://www.instagram.com/accessoiresrg/",
                "https://www.tiktok.com/@rg.accessoires6"
            ]
        }
    </script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="Product Page">
    <meta property="og:description" content="">
    <meta property="og:type" content="website">

    <script>
        function addToCart() {
            const product = getProductFromLocalStorage();
            const cart = JSON.parse(localStorage.getItem("cart")) || [];
            cart.push(product);
            localStorage.setItem("cart", JSON.stringify(cart));
            console.log(cart.length);
            // window.location.href = "cart.php";

        }
        function getProductFromLocalStorage() {
            const product = JSON.parse(localStorage.getItem("product"));
            console.log(product);
            return product;
        }

        function displayProduct() {
            const product = getProductFromLocalStorage();
            if (product) {
                const productContainer = document.getElementById("product-container");
                productContainer.innerHTML = `
                <div class="u-align-center u-container-style u-products-item u-repeater-item">
                    <div class="u-container-layout u-similar-container u-container-layout-1">
                        <img class="u-border-2 u-border-grey-75 u-image u-image-default u-image-1"
                            src="${product.image}" alt="" data-image-width="1280"
                            data-image-height="960" data-animation-out="0" />
                        <p class="u-align-center u-text u-text-default u-text-1">
                            ${product.name}
                        </p>
                        <div class="u-product-control u-product-price u-product-price-1" data-add-zero-cents="false">
                            <div class="u-price-wrapper">
                                <div class="u-old-price" style="text-decoration: line-through !important">
                                    $20.00
                                </div>
                                <div class="u-price" style="font-size: 1.25rem; font-weight: 700">
                                    ${product.price}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            `;
            }
        }
        document.addEventListener("DOMContentLoaded", displayProduct);

    </script>
</head>

<body class="u-body u-xl-mode">



    <section class="u-clearfix u-custom-color-2 u-lightbox u-section-1" id="sec-39e6">
        <div class="u-clearfix u-sheet u-sheet-1">
            <!--products--><!--products_options_json--><!--{"type":"Recent","source":"","tags":"","count":""}--><!--/products_options_json-->
            <div class="custom-expanded u-layout-grid u-products u-products-1" data-site-sorting-prop="created"
                data-site-sorting-order="desc" data-items-per-page="4">
                <div id="product-container"></div>
                <button onclick="addToCart()"
                    class="u-border-none u-btn u-button-style u-grey-90 u-hover-grey-40 u-btn-1">Ajouter au panier
                </button>
            </div>
            <!--/products-->
        </div>
    </section>


</body>

</html>