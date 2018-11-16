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
          	<a href="#">Informações do Contrato</a>
          	<a href="#">Informações do Contrato em Data Anterior</a>
          	<a href="#">Situação</a>
          	<div class="tab">
		      <input id="tab1" type="checkbox" name="tabs">
		      <label for="tab1">Numeração Contas Migradas</label>
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
		      	<a href="#">Solicitação de Talão de Cheque</a>
		      	<a href="#">Talão</a>
		      	<a href="#">Histórico Talão</a>
		      	<a href="#">Cheque OP</a>
		      	<a href="#">Cheques Depositados</a>
		      	<a href="#">Contra Ordem</a>
		      	<a href="#">Situação de Conta e FL de Cheque Comp</a>
		      	<a href="#">Histórico de Cheque</a>
		      </div>
		    </div>
        </div>
        <div class="column">
          <a href="#">Lançamentos Financeiros</a>
          <a href="#">Lançamentos não Financeiros</a>
        </div>
        <div class="column">
          <div class="tab">
		      <input id="tab3" type="checkbox" name="tabs">
		      <label for="tab3">Histórico de Conta/Contrato</label>
		      <div class="tab-content">
		      	<a href="#">Informação de Conta em Data Anterior</a>
		      	<a href="#">Extrato Histórico / Microfilmagem</a>
		      	<a href="#">Histórico FE por Conta</a>
		      </div>
		  </div>
        </div>
         <div class="column">
          <a href="#">Consulta Tarifa Serviço Prestado</a>
          <div class="tab">
		      <input id="tab4" type="checkbox" name="tabs">
		      <label for="tab4">Cheques Novos</label>
		      <div class="tab-content">
		      	<a href="#">Cheques</a>
		      	<a href="#">Talão</a>
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
          	<a href="#">Pendências</a>
          	<a href="#">Contas Abertas na Data de Movimento</a>
          	<a href="#">CPF/CNPJ Irregular</a>
          	<div class="tab">
		      <input id="tab1" type="checkbox" name="tabs">
		      <label for="tab1">Lançamentos Financeiros +</label>
		      <div class="tab-content">
		      	<a href="#">Por Unidade de Origem / Data</a>
		      	<a href="#">Por Unidade de Relacionamento / Data</a>
		      </div>
		    </div>
          	<div class="tab">
		      <input id="tab2" type="checkbox" name="tabs">
		      <label for="tab2">Cheques +</label>
		      <div class="tab-content">
		      	<a href="#">Solicitação de Talão de Cheque</a>
		      	<a href="#">Talão</a>
		      	<a href="#">Histórico Talão</a>
		      	<a href="#">Cheque OP</a>
		      	<a href="#">Cheques Depositados</a>
		      	<a href="#">Contra Ordem</a>
		      	<a href="#">Situação de Conta e FL de Cheque Comp</a>
		      	<a href="#">Histórico de Cheque</a>
		      </div>
		    </div>
        </div>
        <div class="column">
          <a href="#">Lançamentos Financeiros</a>
          <a href="#">Lançamentos não Financeiros</a>
        </div>
        <div class="column">
          <div class="tab">
		      <input id="tab3" type="checkbox" name="tabs">
		      <label for="tab3">Histórico de Conta/Contrato +</label>
		      <div class="tab-content">
		      	<a href="#">Informação de Conta em Data Anterior</a>
		      	<a href="#">Extrato Histórico / Microfilmagem</a>
		      	<a href="#">Histórico FE por Conta</a>
		      </div>
		  </div>
        </div>
         <div class="column">
          <a href="#">Consulta Tarifa Serviço Prestado</a>
          <div class="tab">
		      <input id="tab4" type="checkbox" name="tabs">
		      <label for="tab4">Cheques Novos +</label>
		      <div class="tab-content">
		      	<a href="#">Cheques</a>
		      	<a href="#">Talão</a>
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
  <a href="#news">Contábil</a>
  <a href="#news">Remuneração</a>
  <a href="#news">Tributário</a>
  <a href="#news">Parâm. Produto</a>
  <a href="#news">Tarifa</a>
  <a href="#news">Parâm. Cheque</a>
  <a href="#news">Parâm. Conta/Contrato</a>
  <a href="#news">Parâm. Sistema</a>
  <a href="#news">Parâm. CIF</a>
  <a href="#news">Remanej. Contas</a>
  <a href="#news">Transf. Contas</a>
  <a href="#news">Migração</a>
  
  
  
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
  		<span>Informações do Contrato</span>
  		<div>
  			<span class="yyy">Consultar</span>
  		</div>
  		<br />
  		<span>Situação</span>
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