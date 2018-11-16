<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>grid</title>
<link rel="stylesheet" type="text/css" href="css/lib/normalize.css">
<link rel="stylesheet" type="text/css" href="css/style2.css">
<style>


</style>
</head>
<body>
<div class="navbar">
  <div class="dropdown">
    <button class="dropbtn">Conta/Contrato 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <div class="header"><br /><br /></div> 
      <div class="row">
        <div class="column">
          	<a href="#">Informa��es do Contrato</a>
          	<a href="#">Informa��es do Contrato em Data Anterior</a>
          	<a href="#">Situa��o</a>
          	<div class="tab">
		      <input id="tab1" type="checkbox" name="tabs">
		      <label for="tab1">Numera��o Contas Migradas</label>
		      <div class="tab-content">
		      	<a href="#">Conta SIDEC a partir da Conta NSGD</a>
		      	<a href="#">Conta NSGD a partir da Conta SIDEC</a>
		      </div>
		    </div>
          	<a href="#">Funcionalidades Especiais</a>
          	<div class="tab">
		      <input id="tab2" type="checkbox" name="tabs">
		      <label for="tab2">Cheques</label>
		      <div class="tab-content">
		      	<a href="#">Solicita��o de Tal�o de Cheque</a>
		      	<a href="#">Tal�o</a>
		      	<a href="#">Hist�rico Tal�o</a>
		      	<a href="#">Cheque OP</a>
		      	<a href="#">Cheques Depositados</a>
		      	<a href="#">Contra Ordem</a>
		      	<a href="#">Situa��o de Conta e FL de Cheque Comp</a>
		      	<a href="#">Hist�rico de Cheque</a>
		      </div>
		    </div>
        </div>
        <div class="column">
          <a href="#">Lan�amentos Financeiros</a>
          <a href="#">Lan�amentos n�o Financeiros</a>
        </div>
        <div class="column">
          <div class="tab">
		      <input id="tab3" type="checkbox" name="tabs">
		      <label for="tab3">Hist�rico de Conta/Contrato</label>
		      <div class="tab-content">
		      	<a href="#">Informa��o de Conta em Data Anterior</a>
		      	<a href="#">Extrato Hist�rico / Microfilmagem</a>
		      	<a href="#">Hist�rico FE por Conta</a>
		      </div>
		  </div>
        </div>
         <div class="column">
          <a href="#">Consulta Tarifa Servi�o Prestado</a>
          <div class="tab">
		      <input id="tab4" type="checkbox" name="tabs">
		      <label for="tab4">Cheques Novos</label>
		      <div class="tab-content">
		      	<a href="#">Cheques</a>
		      	<a href="#">Tal�o</a>
		      	<a href="#">Estoque</a>
		      </div>
		  </div>
        </div>
      </div>
    </div>
  </div> 
  
  <!-- 
  <div class="dropdown">
    <button class="dropbtn">Unidade 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <div class="header"><br /><br /></div> 
      <div class="row">
        <div class="column">
          	<a href="#">Pend�ncias</a>
          	<a href="#">Contas Abertas na Data de Movimento</a>
          	<a href="#">CPF/CNPJ Irregular</a>
          	<div class="tab">
		      <input id="tab1" type="checkbox" name="tabs">
		      <label for="tab1">Lan�amentos Financeiros +</label>
		      <div class="tab-content">
		      	<a href="#">Por Unidade de Origem / Data</a>
		      	<a href="#">Por Unidade de Relacionamento / Data</a>
		      </div>
		    </div>
          	<div class="tab">
		      <input id="tab2" type="checkbox" name="tabs">
		      <label for="tab2">Cheques +</label>
		      <div class="tab-content">
		      	<a href="#">Solicita��o de Tal�o de Cheque</a>
		      	<a href="#">Tal�o</a>
		      	<a href="#">Hist�rico Tal�o</a>
		      	<a href="#">Cheque OP</a>
		      	<a href="#">Cheques Depositados</a>
		      	<a href="#">Contra Ordem</a>
		      	<a href="#">Situa��o de Conta e FL de Cheque Comp</a>
		      	<a href="#">Hist�rico de Cheque</a>
		      </div>
		    </div>
        </div>
        <div class="column">
          <a href="#">Lan�amentos Financeiros</a>
          <a href="#">Lan�amentos n�o Financeiros</a>
        </div>
        <div class="column">
          <div class="tab">
		      <input id="tab3" type="checkbox" name="tabs">
		      <label for="tab3">Hist�rico de Conta/Contrato +</label>
		      <div class="tab-content">
		      	<a href="#">Informa��o de Conta em Data Anterior</a>
		      	<a href="#">Extrato Hist�rico / Microfilmagem</a>
		      	<a href="#">Hist�rico FE por Conta</a>
		      </div>
		  </div>
        </div>
         <div class="column">
          <a href="#">Consulta Tarifa Servi�o Prestado</a>
          <div class="tab">
		      <input id="tab4" type="checkbox" name="tabs">
		      <label for="tab4">Cheques Novos +</label>
		      <div class="tab-content">
		      	<a href="#">Cheques</a>
		      	<a href="#">Tal�o</a>
		      	<a href="#">Estoque</a>
		      </div>
		  </div>
        </div>
      </div>
    </div>
  </div> 
   -->
  <a href="#news">Unidade</a>
  <a href="#news">Inf. Gerenciais</a>
  <a href="#news">Cont�bil</a>
  <a href="#news">Remunera��o</a>
  <a href="#news">Tribut�rio</a>
  <a href="#news">Par�m. Produto</a>
  <a href="#news">Tarifa</a>
  <a href="#news">Par�m. Cheque</a>
  <a href="#news">Par�m. Conta/Contrato</a>
  <a href="#news">Par�m. Sistema</a>
  <a href="#news">Par�m. CIF</a>
  <a href="#news">Remanej. Contas</a>
  <a href="#news">Transf. Contas</a>
  <a href="#news">Migra��o</a>
  
  
  
  <!-- 
  <div class="dropdown">
    <button class="dropbtn">Dropdown 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <div class="header">
        <h2>Mega Menu</h2>
      </div> 
      <div class="row">
        <div class="column">
          <h3>Category 1</h3>
          <a href="#"></a>
          <a href="#">Link 2</a>
          <a href="#">Link 3</a>
        </div>
        <div class="column">
          <h3>Category 2</h3>
          <a href="#">Link 1</a>
          <a href="#">Link 2</a>
          <a href="#">Link 3</a>
        </div>
        <div class="column">
          <h3>Category 3</h3>
          <a href="#">Link 1</a>
          <a href="#">Link 2</a>
          <a href="#">Link 3</a>
        </div>
      </div>
    </div>
  </div> 
   -->
</div>


<!-- 
<div class="grid-container">
  <div class="item1">
  	<span>Conta/Contrato</span>
  	<div class="xxx">
  		<span>Informa��es do Contrato</span>
  		<div>
  			<span class="yyy">Consultar</span>
  		</div>
  		<br />
  		<span>Situa��o</span>
  		<div>
  			<span class="yyy">Consultar</span>
  		</div>
  	</div>
  </div>
  <div class="item2">2</div>
  <div class="item3">3</div>  
  <div class="item4">4</div>
  <div class="item5">5</div>
  <div class="item6">6</div>
  <div class="item7">7</div>
  <div class="item8">8</div>  
  <div class="item9">9</div>
  <div class="item10">10</div>
  <div class="item11">11</div>
  <div class="item12">12</div>
  <div class="item13">13</div>
  <div class="item14">14</div>
  <div class="item15">15</div>
</div>
 -->
 
</body>
</html>