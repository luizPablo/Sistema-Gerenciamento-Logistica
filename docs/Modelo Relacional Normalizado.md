Produto (**CódProduto**, Peso, Volume, Descrição)

Endereço (**CódEndereço**, #CódEntrega, Endereço)

Requisição (**CódRequisição**, #CódEntrega, Descrição, Status)

HistóricoAlteração (**CódAlteração**, #CódEntrega, Alteração)

Entrega (**CódEntrega**, #CódProduto, HoraDeSaída, HoraDeChegada, Trajeto, QtProduto, Anotações)

Acesso (**CódAcesso**)

AcessoFuncionário (**CódAcessoFunc**, #CodAcesso, TipoConta, Usuário, Senha)

AcEntrega(**#CódEntrega**, **#CódAcessoFunc**);

HistóricoAcesso (**CódHistórico**, #CódAcesso, HoraDeEntrada, HoraDeSaída)

Cliente (**CódCliente**, #CódAcesso, Nome, Usuário, Senha)

Telefone (**Telefone**, #CódCliente)

E-mail (**E-mail**, #CódCliente)