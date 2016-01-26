#!/bin/bash

: << LICENCA
/*
* Script para verificar se o processo do MySQL está rodando
* Imbé, Rio Grande do Sul, Brasil
* Tiago Floriano <https://github.com/paico>
*
* Este programa e software livre; voce pode redistribui-lo e/ou
* modifica-lo sob os termos da Licenca Publica Geral GNU, conforme
* publicada pela Free Software Foundation; tanto a versao 2 da
* Licenca como (a seu criterio) qualquer versao mais nova.
*
* Este programa e distribuido na expectativa de ser util, mas SEM
* QUALQUER GARANTIA; sem mesmo a garantia implicita de
* COMERCIALIZACAO ou de ADEQUACAO A QUALQUER PROPOSITO EM
* PARTICULAR. Consulte a Licenca Publica Geral GNU para obter mais
* detalhes.
*
* Voce deve ter recebido uma copia da Licenca Publica Geral GNU
* junto com este programa; se nao, escreva para a Free Software
* Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA
* 02111-1307, USA.
*
* Copia da licenca no diretorio licenca/licenca_en.txt
* licenca/licenca_pt.txt
*/
LICENCA

NM=`curl -u usuario@gmail.com:senha --silent "https://mail.google.com/mail/feed/atom" | perl -ne 'print "$2\n" if /<(fullcount)>(.*)<\/\1>/;'`

if [ $NM -eq 0 ]; then
	MSG="Nenhum e-mail novo até este momento."
fi

if [ $NM -eq 1 ]; then
	MSG="Você tem $NM novo e-mail."
fi

if [ $NM -gt 1 ]; then
	MSG="Você tem $NM novos e-mails."
fi

notify-send -i important "$MSG"
