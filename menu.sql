DROP TABLE ITEM_MENU
/
DROP TABLE MENU
/
CREATE TABLE "MENU"
(
  "ID" NUMBER(4,0) GENERATED BY DEFAULT AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 ORDER  NOCYCLE NOT NULL ENABLE,
  "DESCRIPTION" VARCHAR2(50) NOT NULL ENABLE,
  "SEQ" NUMBER(4,0) DEFAULT 0,
  "ACTIVE" NUMBER(1,0) DEFAULT 1,
   CONSTRAINT "MENU_PK" PRIMARY KEY ("ID")
  USING INDEX  ENABLE
)
/
CREATE TABLE "ITEM_MENU"
(
  "ID" NUMBER(4,0) GENERATED BY DEFAULT AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 ORDER  NOCYCLE NOT NULL ENABLE,
  "DESCRIPTION" VARCHAR2(50) NOT NULL ENABLE,
  "ID_MENU" NUMBER(4,0) NOT NULL ENABLE,
  "ID_PARENT" NUMBER(4,0) NOT NULL ENABLE,
  "TREE_LEVEL" NUMBER(1,0) DEFAULT 0,
  "SEQ" NUMBER(4,0) DEFAULT 1,
  "URL" VARCHAR2(300) DEFAULT '#',
  "ACTIVE" NUMBER(1,0) DEFAULT 1,
   CONSTRAINT "ITEM_MENU_PK" PRIMARY KEY ("ID") USING INDEX  ENABLE
)
/
ALTER TABLE  "ITEM_MENU" ADD CONSTRAINT "ITEM_MENU_FK" FOREIGN KEY ("ID_MENU") REFERENCES  "MENU" ("ID") ENABLE
/
INSERT INTO MENU(DESCRIPTION, SEQ) VALUES('NSGD',1)
/
--LEVEL 0
INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT, TREE_LEVEL, SEQ) VALUES('Conta/Contrato',1,0,0,1)
/
INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT, TREE_LEVEL, SEQ) VALUES('Unidade',1,0,0,2)
/
INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT, TREE_LEVEL, SEQ) VALUES('Informações Gerenciais',1,0,0,3)
/
INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT, TREE_LEVEL, SEQ) VALUES('Contábil',1,0,0,4)
/
INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT, TREE_LEVEL, SEQ) VALUES('Remuneração',1,0,0,5)
/
INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT, TREE_LEVEL, SEQ) VALUES('Tributário',1,0,0,6)
/
INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT, TREE_LEVEL, SEQ) VALUES('Parâmetros Produto',1,0,0,7)
/
INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT, TREE_LEVEL, SEQ) VALUES('Tarifa',1,0,0,8)
/
INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT, TREE_LEVEL, SEQ) VALUES('Parâmetros Cheque',1,0,0,9)
/
INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT, TREE_LEVEL, SEQ) VALUES('Parâmetros Conta/Contrato',1,0,0,10)
/
INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT, TREE_LEVEL, SEQ) VALUES('Parâmetros Sistema',1,0,0,11)
/
INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT, TREE_LEVEL, SEQ) VALUES('Parâmetros CIF',1,0,0,12)
/
INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT, TREE_LEVEL, SEQ) VALUES('Remanejamento Contas',1,0,0,13)
/
INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT, TREE_LEVEL, SEQ) VALUES('Transferência Contas',1,0,0,14)
/
INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT, TREE_LEVEL, SEQ) VALUES('Migração',1,0,0,15)
/
--level 1
--conta/contrato
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Informações do Contrato',1,1,1,1)
	/
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Informações do Contrato em Data Anterior',1,1,1,2)
	/
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Situação',1,1,1,3)
	/
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Numeração Contas Migradas',1,1,1,4)
	/
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Lançamentos Financeiros',1,1,1,5)
	/
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Lançamentos não Financeiros',1,1,1,6)
	/
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Funcionalidades Especiais',1,1,1,7)
	/
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Cheques',1,1,1,8)
	/
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Histórico de Conta/Contrato',1,1,1,9)
	/
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Consulta Tarifa Serviço Prestado',1,1,1,10)
	/
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Cheques Novos',1,1,1,11)
	/
--unidade
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Pendências',1,2,1,1)
	/
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Contas Abertas na Data de Movimento',1,2,1,2)
	/
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('CPF/CNPJ Irregular',1,2,1,3)
	/
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Lançamentos Financeiros',1,2,1,4)
	/                                                                              
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Lançamentos não Financeiros',1,2,1,5)
	/                                                                              
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Agendamentos',1,2,1,6)
	/                                                                              
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Solicitação Talão Cheques',1,2,1,7)
	/                                                                              
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Solicitação Encerramento Conta',1,2,1,8)
	/                                                                              
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Reserva Números Conta',1,2,1,9)
	/                                                                              
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Numeração Conta Disponível',1,2,1,10)
	/                                                                              
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Migração',1,2,1,11)
	/                                                                              
-- informações gerenciais
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Resumo de Movimentações',1,3,1,1)
	/                                                                              
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Pendências Regularizadas',1,3,1,2)
	/                                                                              
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Cenário de Poupança',1,3,1,3)
	/                                                                              
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Solicita Relatório Gerencial',1,3,1,4)
	/                                                                              
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Arquivos Processados',1,3,1,5)
	/                                                                              
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Solicitação de Talão de Cheque',1,3,1,6)
	/                                                                              
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Interfaces',1,3,1,7)
	/                                                                              
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Conta/Contrato Encerrada com Saldo',1,3,1,8)
	/
--contabil	
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Vincular Evento Contábil/Custo',1,4,1,1)
	/
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Histórico de Parametrização Contábil',1,4,1,2)
	/
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Pendência de Parametrização',1,4,1,3)
	/
--remuneracao	
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Associação Grupo Remuneração x Produto',1,5,1,1)
	/
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Taxa de Juros',1,5,1,2)
	/
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Taxa Referencial',1,5,1,3)
	/
--	tributario
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Alíquota',1,6,1,1)
	/
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Informações de IRRF Conta/Contrato',1,6,1,2)
	/
--param produto
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Produto Depósito',1,7,1,1)
	/
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Produto Propriedade',1,7,1,2)
	/
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Caracter de Produto e Prod/Propriedade',1,7,1,3)
	/
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Associação de Produto x Característica',1,7,1,4)
	/
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Associação Prod/Prop x Característica',1,7,1,5)
	/
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Produto/Propriedade/NJUR',1,7,1,6)
	/
-- tarifa	
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Tarifas de Serviços',1,8,1,1)
	/
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Pacotes de Serviços',1,8,1,2)
	/
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Cesta de Serviço',1,8,1,3)
	/
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Consultas',1,8,1,4)
	/
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Tarifas Periódicas',1,8,1,5)
	/
--	param cheque
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Situação de Cheque',1,9,1,1)
	/
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Motivo de Cheque',1,9,1,2)
	/
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Associação Situação x Motivo Cheque',1,9,1,3)
	/
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Parâmetros de Contas e Cheques',1,9,1,4)
	/
-- param conta contrato
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Situação de Conta/Contrato',1,10,1,1)
	/
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Motivo de Conta/Contrato',1,10,1,2)
	/
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Associação Sit/Motivo Conta/Contrato',1,10,1,3)
	/
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Tipo de Saldo',1,10,1,4)
	/
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Funcionalidade Especial',1,10,1,5)
	/
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Inativação/Encerramento',1,10,1,6)
	/
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Cadastro Impeditivo',1,10,1,7)
	/
--	param sistema
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Prioridade de Lançamento',1,11,1,1)
	/
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Canal',1,11,1,2)
	/
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Sistema de Acesso NSGD',1,11,1,3)
	/
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Descrição do Lançamento',1,11,1,4)
	/
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Mensagem do Sistema',1,11,1,5)
	/
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Unidade',1,11,1,6)
	/
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Inconsistência de Parâmetros',1,11,1,7)
	/
-- cif	
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Composição de CIF',1,12,1,1)
	/
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('CIF',1,12,1,2)
	/
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Comportamento do CIF',1,12,1,3)
	/
--	remanej
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Incluir Remanejamento Total',1,13,1,1)
	/
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Incluir Remanejam. Parcial por Produto',1,13,1,2)
	/
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Incluir Remanejamento Parcial por FE',1,13,1,3)
	/
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Consultar',1,13,1,4)
	/
--	transf
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Incluir',1,14,1,1)
	/
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Consultar',1,14,1,2)
	/
-- migracao
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Associação Produto e Área Gestora',1,15,1,1)
	/
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Calendário',1,15,1,2)
	/
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Ciclo',1,15,1,3)
	/
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Estatística de Migração',1,15,1,4)
	/
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Estatística de Validação SIDEC',1,15,1,5)
	/
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Inconsistência por Conta SIDEC',1,15,1,6)
	/
	INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Associação LF x CIF x Sistema Origem',1,15,1,7)
	/
--LEVEL 2
--numeração contas migradas
		INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Conta SIDEC a partir da Conta NSGD',1,20,2,1)
		/                                                                                                                       
		INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Conta NSGD a partir da Conta SIDEC',1,20,2,2)
		/
--cheque		
		INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Solicitação de Talão de Cheque',1,23,2,1)
		/                                                                                                                     
		INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Talão',1,23,2,2)
		/
		INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Histórico Talão',1,23,2,3)
		/
		INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Cheque OP',1,23,2,4)
		/
		INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Cheques Depositados',1,23,2,5)
		/
		INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Contra Ordem',1,23,2,6)
		/
		INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Situação de Conta e FL de Cheque Comp',1,23,2,7)
		/
		INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Histórico de Cheque',1,23,2,8)
		/
--historico conta contrato
		INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Informação de Conta em Data Anterior',1,24,2,1)
		/
		INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Extrato Histórico/Microfilmagem',1,24,2,2)
		/
		INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Histórico FE por Conta',1,24,2,3)
		/
--cheques novos		
		INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Cheques',1,26,2,1)
		/
		INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Talão',1,26,2,2)
		/
		INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Estoque',1,26,2,3)
		/
--unidade, lancamentos financeiros		
		INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Por Unidade de Origem / Data',1,31,2,1)
		/
		INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Por Unidade de Relacionamento / Data',1,31,2,2)
		/
--unidade, lancamentos nao financeiros				
		INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Por Unidade de Relacionamento / Data',1,32,2,1)
		/
		INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Por NSU / Data',1,32,2,2)
		/
--unidade, reserva numeros conta
		INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Consultar',1,36,2,1)
		/
		INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Gestor',1,36,2,1)
		/
		INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Temporária',1,36,2,1)
		/
--unidade, Numeração de Conta Disponível		
		INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Consultar por Número de Conta',1,37,2,1)
		/                                                                                   
		INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Consultar por Unidade/Situação Reserva',1,37,2,1)
		/
--unidade, migracao
		INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Adesão Convenente Conta Salário',1,38,2,1)
		/                                                                                             
		INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('Adesão Conta',1,38,2,2)
		/
		
		
		
INSERT INTO ITEM_MENU(DESCRIPTION, ID_MENU, ID_PARENT,TREE_LEVEL, SEQ) VALUES('',1,,2,)
/

--CONNECT BY, WORKS!!!
SELECT id, 
description, 
id_parent, 
tree_level, 
(select count(*) from item_menu where id_parent=id)
FROM item_menu
CONNECT BY PRIOR id = id_parent
ORDER SIBLINGS BY seq;

-- CONNECT BY refinado
SELECT a.id AS id, 
a.description AS description, 
a.id_parent AS id_parent, 
a.tree_level AS tree_level, 
a.url AS url, 
a.active AS active, 
(select count(*) from item_menu b where b.id_parent=a.id) AS children,
(select count(*) from item_menu c where c.id=a.id_parent) AS father
FROM item_menu a
WHERE a.id_menu = :id_menu
CONNECT BY PRIOR a.id = a.id_parent
ORDER SIBLINGS BY a.seq

--teste proc
BEGIN
   FOR level0 IN (
        SELECT *
          FROM item_menu
         WHERE id_parent = 0)
   LOOP

      DBMS_OUTPUT.put_line(level0.ID || '.' || level0.description);

      FOR LEVEL1 IN (
          SELECT * FROM item_menu WHERE tree_level = 1 AND id_parent = level0.id
      )
      LOOP
          DBMS_OUTPUT.put_line('---' || level1.id || '.' || level1.description);

          FOR LEVEL2 IN (
             SELECT * FROM item_menu WHERE tree_level = 2 AND id_parent = level1.id
          )
          LOOP
             DBMS_OUTPUT.put_line('------' || level2.id || '.' || level2.description);
          END LOOP;

      END LOOP;


   END LOOP;
END;



1.Conta/Contrato 1 0 1
---17.Informações do Contrato 1 1 1
---18.Informações do Contrato em Data Anterior 1 1 2
---19.Situação 1 1 3
---20.Numeração Contas Migradas
------100.Conta SIDEC a partir da Conta NSGD
------101.Conta NSGD a partir da Conta SIDEC
---21.Lançamentos Financeiros
---22.Lançamentos não Financeiros
---23.Funcionalidades Especiais
---24.Cheques
------102.Solicitação de Talão de Cheque
------103.Talão
------104.Histórico Talão
------105.Cheque OP
------106.Cheques Depositados
------107.Contra Ordem
------108.Situação de Conta e FL de Cheque Comp
------109.Histórico de Cheque
---25.Histórico de Conta/Contrato
---26.Consulta Tarifa Serviço Prestado
---27.Cheques Novos
2.Unidade
---28.Pendências
---29.Contas Abertas na Data de Movimento
---30.CPF/CNPJ Irregular
---31.Lançamentos Financeiros
---32.Lançamentos não Financeiros
---33.Agendamentos
---34.Solicitação Talão Cheques
---35.Solicitação Encerramento Conta
---36.Reserva Números Conta
---37.Numeração Conta Disponível
---38.Migração
3.Informações Gerenciais
---39.Resumo de Movimentações
---40.Pendências Regularizadas
---41.Cenário de Poupança
---42.Solicita Relatório Gerencial
---43.Arquivos Processados
---44.Solicitação de Talão de Cheque
---45.Interfaces
---46.Conta/Contrato Encerrada com Saldo
4.Contábil
---47.Vincular Evento Contábil/Custo
---48.Histórico de Parametrização Contábil
---49.Pendência de Parametrização
5.Remuneração
---50.Associação Grupo Remuneração x Produto
---51.Taxa de Juros
---52.Taxa Referencial
6.Tributário
---53.Alíquota
---54.Informações de IRRF Conta/Contrato
7.Parâmetros Produto
---55.Produto Depósito
---56.Produto Propriedade
---57.Caracter de Produto e Prod/Propriedade
---58.Associação de Produto x Característica
---59.Associação Prod/Prop x Característica
---60.Produto/Propriedade/NJUR
8.Tarifa
---61.Tarifas de Serviços
---62.Pacotes de Serviços
---63.Cesta de Serviço
---64.Consultas
---65.Tarifas Periódicas
9.Parâmetros Cheque
---66.Situação de Cheque
---67.Motivo de Cheque
---68.Associação Situação x Motivo Cheque
---69.Parâmetros de Contas e Cheques
10.Parâmetros Conta/Contrato
---70.Situação de Conta/Contrato
---71.Motivo de Conta/Contrato
---72.Associação Sit/Motivo Conta/Contrato
---73.Tipo de Saldo
---74.Funcionalidade Especial
---75.Inativação/Encerramento
---76.Cadastro Impeditivo
11.Parâmetros Sistema
---77.Prioridade de Lançamento
---78.Canal
---79.Sistema de Acesso NSGD
---80.Descrição do Lançamento
---81.Mensagem do Sistema
---82.Unidade
---83.Inconsistência de Parâmetros
12.Parâmetros CIF
---84.Composição de CIF
---85.CIF
---86.Comportamento do CIF
13.Remanejamento Contas
---87.Incluir Remanejamento Total
---88.Incluir Remanejam. Parcial por Produto
---89.Incluir Remanejamento Parcial por FE
---90.Consultar
14.Transferência Contas
---91.Incluir
---92.Consultar
15.Migração
---93.Associação Produto e Área Gestora
---94.Calendário
---95.Ciclo
---96.Estatística de Migração
---97.Estatística de Validação SIDEC
---98.Inconsistência por Conta SIDEC
---99.Associação LF x CIF x Sistema Origem
16.Teste FSW