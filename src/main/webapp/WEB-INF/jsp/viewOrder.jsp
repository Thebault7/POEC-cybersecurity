<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="o"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Visualisation de la commande</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/Product.css">
</head>


<body>

<%--  HEADER  --%>

<section class="py-3">
    <div class="container px-4 px-lg-5 my-1">
        <jsp:include page="menu.jsp" />
        <a href="manageProducts">
            <i class="fa fa-arrow-circle-left fa-2x" aria-hidden="true"></i>
        </a>
    </div>
</section>

<%--  MAIN BODY  --%>

<section class="py-3">
    <div class="container px-4 px-lg-5 my-3">
        <div class="row gx-4 gx-lg-5 align-items-center">

            <h1 class="display-6 fw-bolder">Détails de la commande ${order.reference}</h1>

            <div class="py-4">
                <div class="py-1">Date de création : ${order.creationDate}</div>
                <div class="py-1">Date de validation : ${order.validationDate}</div>
            </div>


            <div class="row gx-4 gx-lg-5 mb-5 align-items-top">
                <div class="col-md-4">
                    <div class="fw-bolder py-2">Contenu de la commande</div>
                        <table id="table" class="table table-bordered table-sm">
                            <thead>
                            <tr>
                                <th scope="col">Produit</th>
                                <th scope="col">Quantité</th>
                                <th scope="col">Prix HT</th>
                                <th scope="col">Total prix HT</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${soldProducts}" var="sp">
                                <tr>
                                    <td>${sp.product.label}</td>
                                    <td>${sp.quantity}</td>
                                    <td>${sp.price}</td>
                                    <td>${sp.getTotalPrice()}</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                        <div class="fw-bold"> Total TTC : ${orderTotalPriceDisplay}€</div>
                </div>
                <div class="col-md-4">
                    <div class="fw-bolder py-2">Information client</div>
                    <div class="border rounded p-2">
                        <div class="small">ref.  : ${customer.reference}</div>
                        <div class="small">nom : ${customer.firstName} ${customer.lastName}</div>
                        <div class="small">email : ${customer.email}</div>
                        <div class="small">tel : ${customer.phoneNumber}</div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="fw-bolder py-2">Addresse de livraison</div>
                    <div class="border rounded p-2">
                        <div class="small">${customer.addressLine1}</div>
                        <div class="small">${customer.addressLine2}</div>
                        <div class="small">${customer.addressLine3}</div>
                        <div class="small">${customer.postalCode.getNumber()}</div>
                        <div class="small">${city.getName()}</div>
                        <div class="small">${country}</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<%--<c:if--%>
<%--        test="${empty listProducts || order.listSoldProduct == null}">--%>
<%--    <h2>Aucun produit n'est associé à cette commande</h2>--%>
<%--</c:if>--%>
<%--<c:if--%>
<%--        test="${!(empty order.listSoldProduct || order.listSoldProduct == null)}">--%>
<%--    <c:forEach items="${order.listSoldProduct}" var="sp"--%>
<%--               varStatus="oStatus">--%>
<%--        <h2>- Référence des produits ${sp.reference}--%>
<%--                ${sp.quantity}</h2>--%>
<%--    </c:forEach>--%>
<%--</c:if>--%>

<%--  FOOTER  --%>

<section class="py-3">
    <div class="container px-4 px-lg-5 my-5">
        <div class="d-flex justify-content-between">
            <div>
                <a href="modifyProduct?productId=${order.id}">
                    <i class="fa fa-pencil fa-lg" aria-hidden="true"></i>
                    Modifier la commande
                </a>
            </div>
            <div>
                <a href="archiveProduct?productId=${order.id}" class="btn-delete">
                    <i class="fa fa-archive fa-lg" aria-hidden="true"></i>
                    Archiver la commande
                </a>
            </div>
        </div>
    </div>
</section>

<jsp:include page="archiveWarningPopup.jsp" />
<script type="text/javascript" src="<%=request.getContextPath()%>/js/archiveWarningPopup.js"></script>

</body>
</html>