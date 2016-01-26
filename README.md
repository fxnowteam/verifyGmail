Verifica quantos e-mails não lidos tem na conta do Gmail.

COMO INSTALAR

1. O script utiliza "curl" e "notify-send". Instale os pacotes libnotify-bin e curl para rodar sem problemas;
2. Coloque o script para rodar no cron digitando crontab -e. No exemplo abaixo, o script roda a cada 15 minutos:
	*/15 * * * * ~/verifyGmail/verifyGmail.sh
3. No Google, você precisa alterar uma configuração de segurança (https://myaccount.google.com/security?utm_source=OGB&pli=1#connectedapps). Você deve ativar a opção "Permitir aplicativos menos seguros" (informação de 26/01/2016).

Agora é só usar!

MATERIAL DE PESQUISA

1. http://www.commandlinefu.com/commands/view/3386/check-your-unread-gmail-from-the-command-line
