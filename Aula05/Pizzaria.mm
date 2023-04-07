<map version="1.0.1">
    <node LINK="domain.mm" TEXT="pizzaria">
        <icon BUILTIN="Package"/>
    <node FOLDED="true" TEXT="Clientes"> 
        <icon BUILTIN="Descriptor.bean"/>
        <node TEXT="@">
                    <node TEXT="table">
                        <icon BUILTIN="element"/>
                            <node TEXT="tb_cliente">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
                    <node TEXT="id">
                        <icon BUILTIN="element"/>
                        <node TEXT="column">
                            <icon BUILTIN="element"/>
                                <node TEXT="id_cliente">
                                    <icon BUILTIN="tag_green"/>
                                </node>
                        </node>
                        <node TEXT="type">
                            <icon BUILTIN="element"/>
                                <node TEXT="int()">
                                    <icon BUILTIN="tag_green"/>
                                </node>
                        </node>
                    </node>
                    <node TEXT="descricao">
                        <icon BUILTIN="element"/>
                            <node TEXT="Clientes que visitam a pizzaria para consumo">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
    <node TEXT="index"> 
        <icon BUILTIN="element"/>
        <node TEXT="CPF_UNIQUE"> 
            <icon BUILTIN="element"/>
            <node TEXT="id_cliente"> 
                <icon BUILTIN="tag_green"/>
            </node>
        </node>
    </node>
        </node> 
    <node TEXT="numcelular: (11)"> 
        <icon BUILTIN="Mapping.directToField"/>
        <node TEXT="@">
                    <node TEXT="column">
                        <icon BUILTIN="element"/>
                            <node TEXT="numCelular">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
                    <node TEXT="descricao">
                        <icon BUILTIN="element"/>
                            <node TEXT="">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
        </node> 
    </node>
    <node TEXT="nomecliente: (100)"> 
        <icon BUILTIN="Mapping.directToField"/>
        <node TEXT="@">
                    <node TEXT="column">
                        <icon BUILTIN="element"/>
                            <node TEXT="nomeCliente">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
                    <node TEXT="descricao">
                        <icon BUILTIN="element"/>
                            <node TEXT="">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
        </node> 
    </node>
    <node TEXT="datacadastro: ()"> 
        <icon BUILTIN="Mapping.directToField"/>
        <node TEXT="@">
                    <node TEXT="column">
                        <icon BUILTIN="element"/>
                            <node TEXT="dataCadastro">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
                    <node TEXT="descricao">
                        <icon BUILTIN="element"/>
                            <node TEXT="">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
        </node> 
    </node>
    </node>
    <node FOLDED="true" TEXT="TipoRelatorio"> 
        <icon BUILTIN="Descriptor.bean"/>
        <node TEXT="@">
                    <node TEXT="table">
                        <icon BUILTIN="element"/>
                            <node TEXT="tb_tipoRelatorio">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
<node TEXT="@TODO _ tem que implementar: GERA-DOMAIN-PROPERTY-ID">
<icon BUILTIN="closed"/>
<node TEXT="Caminho xpath:">
<node TEXT="classes/class[4]/properties/tabelas/tb_tipoRelatorio">
</node>
</node>
<node FOLDED="true" TEXT="Estrutura xpath:">
<node TEXT=".[count(*)=3 and child::*[position()=1 and name()='value']/.[count(*)=0 and text()] and child::*[position()=2 and name()='value']/.[count(*)=0 and text()] and child::*[position()=3 and name()='value']/.[count(*)=0 and text()]]">
</node>
</node>
</node>
                    <node TEXT="descricao">
                        <icon BUILTIN="element"/>
                            <node TEXT="Define o tipo de relatório">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
        </node> 
    </node>
    <node FOLDED="true" TEXT="TipoProduto"> 
        <icon BUILTIN="Descriptor.bean"/>
        <node TEXT="@">
                    <node TEXT="table">
                        <icon BUILTIN="element"/>
                            <node TEXT="tb_tipoproduto">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
                    <node TEXT="id">
                        <icon BUILTIN="element"/>
                        <node TEXT="column">
                            <icon BUILTIN="element"/>
                                <node TEXT="id_tipoProduto">
                                    <icon BUILTIN="tag_green"/>
                                </node>
                        </node>
                        <node TEXT="type">
                            <icon BUILTIN="element"/>
                                <node TEXT="int()">
                                    <icon BUILTIN="tag_green"/>
                                </node>
                        </node>
                    </node>
                    <node TEXT="descricao">
                        <icon BUILTIN="element"/>
                            <node TEXT="Define o tipo de produto">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
        </node> 
    <node TEXT="tipoproduto: (50)"> 
        <icon BUILTIN="Mapping.directToField"/>
        <node TEXT="@">
                    <node TEXT="column">
                        <icon BUILTIN="element"/>
                            <node TEXT="tipoProduto">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
                    <node TEXT="descricao">
                        <icon BUILTIN="element"/>
                            <node TEXT="">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
        </node> 
    </node>
    </node>
    <node FOLDED="true" TEXT="Relatorio"> 
        <icon BUILTIN="Descriptor.bean"/>
        <node TEXT="@">
                    <node TEXT="table">
                        <icon BUILTIN="element"/>
                            <node TEXT="tb_relatorio">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
                    <node TEXT="id">
                        <icon BUILTIN="element"/>
                        <node TEXT="column">
                            <icon BUILTIN="element"/>
                                <node TEXT="id_relatorio">
                                    <icon BUILTIN="tag_green"/>
                                </node>
                        </node>
                        <node TEXT="type">
                            <icon BUILTIN="element"/>
                                <node TEXT="int()">
                                    <icon BUILTIN="tag_green"/>
                                </node>
                        </node>
                    </node>
                    <node TEXT="descricao">
                        <icon BUILTIN="element"/>
                            <node TEXT="Armazenamento de todos os relatórios gerados">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
    <node TEXT="index"> 
        <icon BUILTIN="element"/>
        <node TEXT="fk_TB_relatorio_TB_tipoRelatorio1_idx"> 
            <icon BUILTIN="element"/>
            <node TEXT="TB_tipoRelatorio_id_tipoRelatorio"> 
                <icon BUILTIN="tag_green"/>
            </node>
        </node>
    </node>
        </node> 
    <node TEXT="datarelatorio: ()"> 
        <icon BUILTIN="Mapping.directToField"/>
        <node TEXT="@">
                    <node TEXT="column">
                        <icon BUILTIN="element"/>
                            <node TEXT="dataRelatorio">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
                    <node TEXT="descricao">
                        <icon BUILTIN="element"/>
                            <node TEXT="">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
        </node> 
    </node>
    <node TEXT="tbTiporelatorioIdTiporelatorio: ()"> 
        <icon BUILTIN="Mapping.directToField"/>
        <node TEXT="@">
                    <node TEXT="column">
                        <icon BUILTIN="element"/>
                            <node TEXT="TB_tipoRelatorio_id_tipoRelatorio">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
                    <node TEXT="descricao">
                        <icon BUILTIN="element"/>
                            <node TEXT="">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
        </node> 
    </node>
    </node>
    <node FOLDED="true" TEXT="Cartao"> 
        <icon BUILTIN="Descriptor.bean"/>
        <node TEXT="@">
                    <node TEXT="table">
                        <icon BUILTIN="element"/>
                            <node TEXT="tb_cartao">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
                    <node TEXT="id">
                        <icon BUILTIN="element"/>
                        <node TEXT="column">
                            <icon BUILTIN="element"/>
                                <node TEXT="id_cartao">
                                    <icon BUILTIN="tag_green"/>
                                </node>
                        </node>
                        <node TEXT="type">
                            <icon BUILTIN="element"/>
                                <node TEXT="int()">
                                    <icon BUILTIN="tag_green"/>
                                </node>
                        </node>
                    </node>
                    <node TEXT="descricao">
                        <icon BUILTIN="element"/>
                            <node TEXT="Cartões de uso no atendimento">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
    <node TEXT="index"> 
        <icon BUILTIN="element"/>
        <node TEXT="fk_TB_cartao_TB_cliente1_idx"> 
            <icon BUILTIN="element"/>
            <node TEXT="TB_cliente_id_cliente"> 
                <icon BUILTIN="tag_green"/>
            </node>
        </node>
        <node TEXT="fk_TB_cartao_TB_pagamento1_idx"> 
            <icon BUILTIN="element"/>
            <node TEXT="TB_pagamento_id_pagamento"> 
                <icon BUILTIN="tag_green"/>
            </node>
        </node>
    </node>
        </node> 
    <node TEXT="dataEntrada: ()"> 
        <icon BUILTIN="Mapping.directToField"/>
        <node TEXT="@">
                    <node TEXT="column">
                        <icon BUILTIN="element"/>
                            <node TEXT="data_entrada">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
                    <node TEXT="descricao">
                        <icon BUILTIN="element"/>
                            <node TEXT="">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
        </node> 
    </node>
    <node TEXT="dataSaida: ()"> 
        <icon BUILTIN="Mapping.directToField"/>
        <node TEXT="@">
                    <node TEXT="column">
                        <icon BUILTIN="element"/>
                            <node TEXT="data_saida">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
                    <node TEXT="descricao">
                        <icon BUILTIN="element"/>
                            <node TEXT="">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
        </node> 
    </node>
    <node TEXT="tbClienteIdCliente: ()"> 
        <icon BUILTIN="Mapping.directToField"/>
        <node TEXT="@">
                    <node TEXT="column">
                        <icon BUILTIN="element"/>
                            <node TEXT="TB_cliente_id_cliente">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
                    <node TEXT="descricao">
                        <icon BUILTIN="element"/>
                            <node TEXT="">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
        </node> 
    </node>
    <node TEXT="tbPagamentoIdPagamento: ()"> 
        <icon BUILTIN="Mapping.directToField"/>
        <node TEXT="@">
                    <node TEXT="column">
                        <icon BUILTIN="element"/>
                            <node TEXT="TB_pagamento_id_pagamento">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
                    <node TEXT="descricao">
                        <icon BUILTIN="element"/>
                            <node TEXT="">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
        </node> 
    </node>
    </node>
    <node FOLDED="true" TEXT="ComandaRelatorio"> 
        <icon BUILTIN="Descriptor.bean"/>
        <node TEXT="@">
                    <node TEXT="table">
                        <icon BUILTIN="element"/>
                            <node TEXT="tb_comandarelatorio">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
                    <node TEXT="descricao">
                        <icon BUILTIN="element"/>
                            <node TEXT="Relação entre Comandas e Relatório">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
    <node TEXT="index"> 
        <icon BUILTIN="element"/>
        <node TEXT="fk_TB_comanda_has_TB_relatorio_TB_relatorio1_idx"> 
            <icon BUILTIN="element"/>
            <node TEXT="TB_relatorio_id_relatorio"> 
                <icon BUILTIN="tag_green"/>
            </node>
        </node>
        <node TEXT="fk_TB_comanda_has_TB_relatorio_TB_comanda1_idx"> 
            <icon BUILTIN="element"/>
            <node TEXT="TB_comanda_id_comanda"> 
                <icon BUILTIN="tag_green"/>
            </node>
        </node>
    </node>
        </node> 
    <node TEXT="tbComandaId: ()"> 
        <icon BUILTIN="Mapping.directToField"/>
        <node TEXT="@">
                    <node TEXT="references">
                        <icon BUILTIN="element"/>
<node TEXT="@TODO _ tem que implementar: GERA-ATTRIBUTES-FIELD-PROPERTIES">
<icon BUILTIN="closed"/>
<node TEXT="Caminho xpath:">
<node TEXT="classes/class[4]/properties/xml/mysqldump/database/table_structure[6]/field[1]">
</node>
</node>
<node FOLDED="true" TEXT="Estrutura xpath:">
<node TEXT=".[count(*)=0 and ]">
</node>
</node>
</node>
                    </node>
                    <node TEXT="column">
                        <icon BUILTIN="element"/>
                            <node TEXT="TB_comanda_id_comanda">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
                    <node TEXT="descricao">
                        <icon BUILTIN="element"/>
                            <node TEXT="">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
        </node> 
    </node>
    <node TEXT="tbRelatorioId: ()"> 
        <icon BUILTIN="Mapping.directToField"/>
        <node TEXT="@">
                    <node TEXT="references">
                        <icon BUILTIN="element"/>
<node TEXT="@TODO _ tem que implementar: GERA-ATTRIBUTES-FIELD-PROPERTIES">
<icon BUILTIN="closed"/>
<node TEXT="Caminho xpath:">
<node TEXT="classes/class[4]/properties/xml/mysqldump/database/table_structure[6]/field[2]">
</node>
</node>
<node FOLDED="true" TEXT="Estrutura xpath:">
<node TEXT=".[count(*)=0 and ]">
</node>
</node>
</node>
                    </node>
                    <node TEXT="column">
                        <icon BUILTIN="element"/>
                            <node TEXT="TB_relatorio_id_relatorio">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
                    <node TEXT="descricao">
                        <icon BUILTIN="element"/>
                            <node TEXT="">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
        </node> 
    </node>
    </node>
    <node FOLDED="true" TEXT="Pagamento"> 
        <icon BUILTIN="Descriptor.bean"/>
        <node TEXT="@">
                    <node TEXT="table">
                        <icon BUILTIN="element"/>
                            <node TEXT="tb_pagamento">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
                    <node TEXT="id">
                        <icon BUILTIN="element"/>
                        <node TEXT="column">
                            <icon BUILTIN="element"/>
                                <node TEXT="id_pagamento">
                                    <icon BUILTIN="tag_green"/>
                                </node>
                        </node>
                        <node TEXT="type">
                            <icon BUILTIN="element"/>
                                <node TEXT="int()">
                                    <icon BUILTIN="tag_green"/>
                                </node>
                        </node>
                    </node>
                    <node TEXT="descricao">
                        <icon BUILTIN="element"/>
                            <node TEXT="Define o tipo de pagamento">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
        </node> 
    <node TEXT="metodopagamento: (50)"> 
        <icon BUILTIN="Mapping.directToField"/>
        <node TEXT="@">
                    <node TEXT="column">
                        <icon BUILTIN="element"/>
                            <node TEXT="metodoPagamento">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
                    <node TEXT="descricao">
                        <icon BUILTIN="element"/>
                            <node TEXT="">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
        </node> 
    </node>
    <node TEXT="dinheiro: (10,0)"> 
        <icon BUILTIN="Mapping.directToField"/>
        <node TEXT="@">
                    <node TEXT="column">
                        <icon BUILTIN="element"/>
                            <node TEXT="dinheiro">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
                    <node TEXT="descricao">
                        <icon BUILTIN="element"/>
                            <node TEXT="">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
        </node> 
    </node>
    </node>
    <node FOLDED="true" TEXT="Comanda"> 
        <icon BUILTIN="Descriptor.bean"/>
        <node TEXT="@">
                    <node TEXT="table">
                        <icon BUILTIN="element"/>
                            <node TEXT="tb_comanda">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
                    <node TEXT="id">
                        <icon BUILTIN="element"/>
                        <node TEXT="column">
                            <icon BUILTIN="element"/>
                                <node TEXT="id_comanda">
                                    <icon BUILTIN="tag_green"/>
                                </node>
                        </node>
                        <node TEXT="type">
                            <icon BUILTIN="element"/>
                                <node TEXT="int()">
                                    <icon BUILTIN="tag_green"/>
                                </node>
                        </node>
                    </node>
                    <node TEXT="descricao">
                        <icon BUILTIN="element"/>
                            <node TEXT="Informações dos pedidos dos clientes">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
    <node TEXT="index"> 
        <icon BUILTIN="element"/>
        <node TEXT="id_cartao_UNIQUE"> 
            <icon BUILTIN="element"/>
            <node TEXT="id_comanda"> 
                <icon BUILTIN="tag_green"/>
            </node>
        </node>
        <node TEXT="fk_TB_comanda_TB_cartao1_idx"> 
            <icon BUILTIN="element"/>
            <node TEXT="TB_cartao_id_cartao"> 
                <icon BUILTIN="tag_green"/>
            </node>
        </node>
        <node TEXT="fk_TB_comanda_TB_garcon1_idx"> 
            <icon BUILTIN="element"/>
            <node TEXT="TB_usuario_id_usuario"> 
                <icon BUILTIN="tag_green"/>
            </node>
        </node>
        <node TEXT="fk_TB_comanda_TB_impressora1_idx"> 
            <icon BUILTIN="element"/>
            <node TEXT="TB_impressora_id_impressora"> 
                <icon BUILTIN="tag_green"/>
            </node>
        </node>
    </node>
        </node> 
    <node TEXT="situacao: (100)"> 
        <icon BUILTIN="Mapping.directToField"/>
        <node TEXT="@">
                    <node TEXT="column">
                        <icon BUILTIN="element"/>
                            <node TEXT="situacao">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
                    <node TEXT="descricao">
                        <icon BUILTIN="element"/>
                            <node TEXT="">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
        </node> 
    </node>
    <node TEXT="datacadastro: ()"> 
        <icon BUILTIN="Mapping.directToField"/>
        <node TEXT="@">
                    <node TEXT="column">
                        <icon BUILTIN="element"/>
                            <node TEXT="dataCadastro">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
                    <node TEXT="descricao">
                        <icon BUILTIN="element"/>
                            <node TEXT="">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
        </node> 
    </node>
    <node TEXT="numeromesa: (4)"> 
        <icon BUILTIN="Mapping.directToField"/>
        <node TEXT="@">
                    <node TEXT="column">
                        <icon BUILTIN="element"/>
                            <node TEXT="numeroMesa">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
                    <node TEXT="descricao">
                        <icon BUILTIN="element"/>
                            <node TEXT="">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
        </node> 
    </node>
    <node TEXT="tbCartaoIdCartao: ()"> 
        <icon BUILTIN="Mapping.directToField"/>
        <node TEXT="@">
                    <node TEXT="column">
                        <icon BUILTIN="element"/>
                            <node TEXT="TB_cartao_id_cartao">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
                    <node TEXT="descricao">
                        <icon BUILTIN="element"/>
                            <node TEXT="">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
        </node> 
    </node>
    <node TEXT="tbUsuarioIdUsuario: ()"> 
        <icon BUILTIN="Mapping.directToField"/>
        <node TEXT="@">
                    <node TEXT="column">
                        <icon BUILTIN="element"/>
                            <node TEXT="TB_usuario_id_usuario">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
                    <node TEXT="descricao">
                        <icon BUILTIN="element"/>
                            <node TEXT="">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
        </node> 
    </node>
    <node TEXT="tbImpressoraIdImpressora: ()"> 
        <icon BUILTIN="Mapping.directToField"/>
        <node TEXT="@">
                    <node TEXT="column">
                        <icon BUILTIN="element"/>
                            <node TEXT="TB_impressora_id_impressora">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
                    <node TEXT="descricao">
                        <icon BUILTIN="element"/>
                            <node TEXT="">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
        </node> 
    </node>
    </node>
    <node FOLDED="true" TEXT="Impressora"> 
        <icon BUILTIN="Descriptor.bean"/>
        <node TEXT="@">
                    <node TEXT="table">
                        <icon BUILTIN="element"/>
                            <node TEXT="tb_impressora">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
                    <node TEXT="id">
                        <icon BUILTIN="element"/>
                        <node TEXT="column">
                            <icon BUILTIN="element"/>
                                <node TEXT="id_impressora">
                                    <icon BUILTIN="tag_green"/>
                                </node>
                        </node>
                        <node TEXT="type">
                            <icon BUILTIN="element"/>
                                <node TEXT="int()">
                                    <icon BUILTIN="tag_green"/>
                                </node>
                        </node>
                    </node>
                    <node TEXT="descricao">
                        <icon BUILTIN="element"/>
                            <node TEXT="Equipamentos que imprimem as comandas">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
        </node> 
    <node TEXT="nomeimpressora: (50)"> 
        <icon BUILTIN="Mapping.directToField"/>
        <node TEXT="@">
                    <node TEXT="column">
                        <icon BUILTIN="element"/>
                            <node TEXT="nomeImpressora">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
                    <node TEXT="descricao">
                        <icon BUILTIN="element"/>
                            <node TEXT="">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
        </node> 
    </node>
    <node TEXT="nomelocalimpressora: (50)"> 
        <icon BUILTIN="Mapping.directToField"/>
        <node TEXT="@">
                    <node TEXT="column">
                        <icon BUILTIN="element"/>
                            <node TEXT="nomeLocalImpressora">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
                    <node TEXT="descricao">
                        <icon BUILTIN="element"/>
                            <node TEXT="">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
        </node> 
    </node>
    <node TEXT="modeloimpressora: (50)"> 
        <icon BUILTIN="Mapping.directToField"/>
        <node TEXT="@">
                    <node TEXT="column">
                        <icon BUILTIN="element"/>
                            <node TEXT="modeloImpressora">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
                    <node TEXT="descricao">
                        <icon BUILTIN="element"/>
                            <node TEXT="">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
        </node> 
    </node>
    </node>
    <node FOLDED="true" TEXT="ComandaProduto"> 
        <icon BUILTIN="Descriptor.bean"/>
        <node TEXT="@">
                    <node TEXT="table">
                        <icon BUILTIN="element"/>
                            <node TEXT="tb_comandaproduto">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
<node TEXT="@TODO _ tem que implementar: GERA-DOMAIN-PROPERTY-ID">
<icon BUILTIN="closed"/>
<node TEXT="Caminho xpath:">
<node TEXT="classes/class[4]/properties/tabelas/tb_comandaproduto">
</node>
</node>
<node FOLDED="true" TEXT="Estrutura xpath:">
<node TEXT=".[count(*)=3 and child::*[position()=1 and name()='value']/.[count(*)=0 and text()] and child::*[position()=2 and name()='value']/.[count(*)=0 and text()] and child::*[position()=3 and name()='value']/.[count(*)=0 and text()]]">
</node>
</node>
</node>
                    <node TEXT="descricao">
                        <icon BUILTIN="element"/>
                            <node TEXT="Relação entre Comandas e Produtos">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
    <node TEXT="index"> 
        <icon BUILTIN="element"/>
        <node TEXT="fk_TB_comanda_has_TB_produto_TB_produto1_idx"> 
            <icon BUILTIN="element"/>
            <node TEXT="TB_produto_id_produto"> 
                <icon BUILTIN="tag_green"/>
            </node>
        </node>
        <node TEXT="fk_TB_comanda_has_TB_produto_TB_comanda1_idx"> 
            <icon BUILTIN="element"/>
            <node TEXT="TB_comanda_id_comanda"> 
                <icon BUILTIN="tag_green"/>
            </node>
        </node>
    </node>
        </node> 
    <node TEXT="quantia: ()"> 
        <icon BUILTIN="Mapping.directToField"/>
        <node TEXT="@">
                    <node TEXT="column">
                        <icon BUILTIN="element"/>
                            <node TEXT="quantia">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
                    <node TEXT="descricao">
                        <icon BUILTIN="element"/>
                            <node TEXT="">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
        </node> 
    </node>
    <node TEXT="precodia: (5,2)"> 
        <icon BUILTIN="Mapping.directToField"/>
        <node TEXT="@">
                    <node TEXT="column">
                        <icon BUILTIN="element"/>
                            <node TEXT="precoDia">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
                    <node TEXT="descricao">
                        <icon BUILTIN="element"/>
                            <node TEXT="">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
        </node> 
    </node>
    </node>
    <node FOLDED="true" TEXT="Produto"> 
        <icon BUILTIN="Descriptor.bean"/>
        <node TEXT="@">
                    <node TEXT="table">
                        <icon BUILTIN="element"/>
                            <node TEXT="tb_produto">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
                    <node TEXT="id">
                        <icon BUILTIN="element"/>
                        <node TEXT="column">
                            <icon BUILTIN="element"/>
                                <node TEXT="id_produto">
                                    <icon BUILTIN="tag_green"/>
                                </node>
                        </node>
                        <node TEXT="type">
                            <icon BUILTIN="element"/>
                                <node TEXT="int()">
                                    <icon BUILTIN="tag_green"/>
                                </node>
                        </node>
                    </node>
                    <node TEXT="descricao">
                        <icon BUILTIN="element"/>
                            <node TEXT="Produtos que estão disponíveis para vender aos clientes">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
    <node TEXT="index"> 
        <icon BUILTIN="element"/>
        <node TEXT="fk_TB_produto_TB_tipoProduto1_idx"> 
            <icon BUILTIN="element"/>
            <node TEXT="TB_tipoProduto_id_tipoProduto"> 
                <icon BUILTIN="tag_green"/>
            </node>
        </node>
    </node>
        </node> 
    <node TEXT="nomeproduto: (100)"> 
        <icon BUILTIN="Mapping.directToField"/>
        <node TEXT="@">
                    <node TEXT="column">
                        <icon BUILTIN="element"/>
                            <node TEXT="nomeProduto">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
                    <node TEXT="descricao">
                        <icon BUILTIN="element"/>
                            <node TEXT="">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
        </node> 
    </node>
    <node TEXT="descricao: (150)"> 
        <icon BUILTIN="Mapping.directToField"/>
        <node TEXT="@">
                    <node TEXT="column">
                        <icon BUILTIN="element"/>
                            <node TEXT="descricao">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
                    <node TEXT="descricao">
                        <icon BUILTIN="element"/>
                            <node TEXT="">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
        </node> 
    </node>
    <node TEXT="preco: (5,2)"> 
        <icon BUILTIN="Mapping.directToField"/>
        <node TEXT="@">
                    <node TEXT="column">
                        <icon BUILTIN="element"/>
                            <node TEXT="preco">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
                    <node TEXT="descricao">
                        <icon BUILTIN="element"/>
                            <node TEXT="">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
        </node> 
    </node>
    <node TEXT="dataregistro: ()"> 
        <icon BUILTIN="Mapping.directToField"/>
        <node TEXT="@">
                    <node TEXT="column">
                        <icon BUILTIN="element"/>
                            <node TEXT="dataRegistro">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
                    <node TEXT="descricao">
                        <icon BUILTIN="element"/>
                            <node TEXT="">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
        </node> 
    </node>
    <node TEXT="tbTipoprodutoIdTipoproduto: ()"> 
        <icon BUILTIN="Mapping.directToField"/>
        <node TEXT="@">
                    <node TEXT="column">
                        <icon BUILTIN="element"/>
                            <node TEXT="TB_tipoProduto_id_tipoProduto">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
                    <node TEXT="descricao">
                        <icon BUILTIN="element"/>
                            <node TEXT="">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
        </node> 
    </node>
    </node>
    <node FOLDED="true" TEXT="Usuario"> 
        <icon BUILTIN="Descriptor.bean"/>
        <node TEXT="@">
                    <node TEXT="table">
                        <icon BUILTIN="element"/>
                            <node TEXT="tb_usuario">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
                    <node TEXT="id">
                        <icon BUILTIN="element"/>
                        <node TEXT="column">
                            <icon BUILTIN="element"/>
                                <node TEXT="id_usuario">
                                    <icon BUILTIN="tag_green"/>
                                </node>
                        </node>
                        <node TEXT="type">
                            <icon BUILTIN="element"/>
                                <node TEXT="int()">
                                    <icon BUILTIN="tag_green"/>
                                </node>
                        </node>
                    </node>
                    <node TEXT="descricao">
                        <icon BUILTIN="element"/>
                            <node TEXT="Usuários que trabalham na pizzaria">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
    <node TEXT="index"> 
        <icon BUILTIN="element"/>
        <node TEXT="id_garcon_UNIQUE"> 
            <icon BUILTIN="element"/>
            <node TEXT="id_usuario"> 
                <icon BUILTIN="tag_green"/>
            </node>
        </node>
        <node TEXT="fk_TB_garcon_TB_cargo1_idx"> 
            <icon BUILTIN="element"/>
            <node TEXT="TB_cargo_id_cargo"> 
                <icon BUILTIN="tag_green"/>
            </node>
        </node>
    </node>
        </node> 
    <node TEXT="login: (45)"> 
        <icon BUILTIN="Mapping.directToField"/>
        <node TEXT="@">
                    <node TEXT="column">
                        <icon BUILTIN="element"/>
                            <node TEXT="login">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
                    <node TEXT="descricao">
                        <icon BUILTIN="element"/>
                            <node TEXT="">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
        </node> 
    </node>
    <node TEXT="senha: (45)"> 
        <icon BUILTIN="Mapping.directToField"/>
        <node TEXT="@">
                    <node TEXT="column">
                        <icon BUILTIN="element"/>
                            <node TEXT="senha">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
                    <node TEXT="descricao">
                        <icon BUILTIN="element"/>
                            <node TEXT="">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
        </node> 
    </node>
    <node TEXT="nome: (100)"> 
        <icon BUILTIN="Mapping.directToField"/>
        <node TEXT="@">
                    <node TEXT="column">
                        <icon BUILTIN="element"/>
                            <node TEXT="nome">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
                    <node TEXT="descricao">
                        <icon BUILTIN="element"/>
                            <node TEXT="">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
        </node> 
    </node>
    <node TEXT="datacadastro: ()"> 
        <icon BUILTIN="Mapping.directToField"/>
        <node TEXT="@">
                    <node TEXT="column">
                        <icon BUILTIN="element"/>
                            <node TEXT="dataCadastro">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
                    <node TEXT="descricao">
                        <icon BUILTIN="element"/>
                            <node TEXT="">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
        </node> 
    </node>
    <node TEXT="tbCargoIdCargo: ()"> 
        <icon BUILTIN="Mapping.directToField"/>
        <node TEXT="@">
                    <node TEXT="column">
                        <icon BUILTIN="element"/>
                            <node TEXT="TB_cargo_id_cargo">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
                    <node TEXT="descricao">
                        <icon BUILTIN="element"/>
                            <node TEXT="">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
        </node> 
    </node>
    </node>
    <node FOLDED="true" TEXT="Cargo"> 
        <icon BUILTIN="Descriptor.bean"/>
        <node TEXT="@">
                    <node TEXT="table">
                        <icon BUILTIN="element"/>
                            <node TEXT="tb_cargo">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
                    <node TEXT="id">
                        <icon BUILTIN="element"/>
                        <node TEXT="column">
                            <icon BUILTIN="element"/>
                                <node TEXT="id_cargo">
                                    <icon BUILTIN="tag_green"/>
                                </node>
                        </node>
                        <node TEXT="type">
                            <icon BUILTIN="element"/>
                                <node TEXT="int()">
                                    <icon BUILTIN="tag_green"/>
                                </node>
                        </node>
                    </node>
                    <node TEXT="descricao">
                        <icon BUILTIN="element"/>
                            <node TEXT="Define o cargo dos usuários/funcionários">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
        </node> 
    <node TEXT="nomecargo: (50)"> 
        <icon BUILTIN="Mapping.directToField"/>
        <node TEXT="@">
                    <node TEXT="column">
                        <icon BUILTIN="element"/>
                            <node TEXT="nomeCargo">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
                    <node TEXT="descricao">
                        <icon BUILTIN="element"/>
                            <node TEXT="">
                                <icon BUILTIN="tag_green"/>
                            </node>
                    </node>
        </node> 
    </node>
    </node>
    </node>
</map>
