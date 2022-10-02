# TermuxTDI - 
Shell script simples para automatizar a instalação das aplicações mencionadas no módulo de "Hackeando com Android" no curso do "Técnicas de Invasão".
Espero sinceramente que este código ajude você, aluno ou não, em seus primeiros passos no Pentesting.
Muito cuidado ao usar as aplicações que você instalará!

Não me responsabilizo pelo uso indevido das aplicações aqui instaladas!


Instalação:

<p>O procedimento aqui utilizado foi pensado usando o Termux encontrado no FDroid: https://f-droid.org/packages/com.termux/ 
O Termux pela Google Play foi descontinuado em 2019 e, portanto, está inutilizável.</p>

$termux-setup-storage

O comando acima é usado para você dar as permissões necessárias ao bom funcionamento do Termux. Basta permitir que o aplicativo tenha acesso aos arquivos!

$termux-change-repo 

Você precisa apenas selecionar a primeira opção ao apertar ENTER DUAS VEZES.

$apt install git

$git clone https://github.com/LyannaValerie/termuxtdi

$cd termuxtdi

$chmod +x termuxtdi.sh

$bash termuxtdi.sh 

ou 

$./termuxtdi.sh
