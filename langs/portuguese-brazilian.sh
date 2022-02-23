#!/bin/bash

# Write your translation instead of ##########

# Grafana can completely die after translating, so we should create backup of build folder
echo "Fazendo backup para /usr/share/grafana/public/backup"
sudo cp -r /usr/share/grafana/public/build/ /usr/share/grafana/public/backup/
cd /usr/share/grafana/public/build

echo "Iniciando a tradução..."

# TimePicker
sed -i 's/"Last 5 minutes"/"Últimos 5 minutos"/g' app*.js*
sed -i 's/"Last 15 minutes"/"Últimos 15 minutos"/g' app*.js*
sed -i 's/"Last 30 minutes"/"Últimos 5 minutos"/g' app*.js*
sed -i 's/"Last 1 hour"/"Última hora"/g' app*.js*
sed -i 's/"Last 3 hours"/"Últimas 3 horas"/g' app*.js*
sed -i 's/"Last 6 hours"/"Últimas 6 horas"/g' app*.js*
sed -i 's/"Last 12 hours"/"Últimas 12 horas"/g' app*.js*
sed -i 's/"Last 24 hours"/"Últimas 24 horas"/g' app*.js*
sed -i 's/"Last 2 days"/"Últimos 2 dias"/g' app*.js*
sed -i 's/"Last 7 days"/"Últimos 7 dias"/g' app*.js*
sed -i 's/"Last 30 days"/"Últimos 30 dias"/g' app*.js*
sed -i 's/"Last 90 days"/"Últimos 90 dias"/g' app*.js*
sed -i 's/"Last 6 months"/"Últimos 6 meses"/g' app*.js*
sed -i 's/"Last 1 year"/"Último ano"/g' app*.js*
sed -i 's/"Last 2 years"/"Últimos 2 anos"/g' app*.js*
sed -i 's/"Last 5 years"/"Últimos 5 anos"/g' app*.js*
sed -i 's/"Yesterday"/"Ontem"/g' app*.js*
sed -i 's/"Day before yesterday"/"Um dia antes de ontem"/g' app*.js*
sed -i 's/"This day last week"/"Este mesmo dia na semana passada"/g' app*.js*
sed -i 's/"Previous week"/"Semana passada"/g' app*.js*
sed -i 's/"Previous month"/"Mês passado"/g' app*.js*
sed -i 's/"Previous year"/"Ano passado"/g' app*.js*
sed -i 's/"Today"/"Hoje"/g' app*.js*
sed -i 's/"Today so far"/"Até agora, hoje"/g' app*.js*
sed -i 's/"This week"/"Esta semana"/g' app*.js*
sed -i 's/"This week so far"/"Até agora, nesta semana"/g' app*.js*
sed -i 's/"This month"/"Este mês"/g' app*.js*
sed -i 's/"This month so far"/"Até agora, neste mês"/g' app*.js*
sed -i 's/"This year"/"Este ano"/g' app*.js*
sed -i 's/"This year so far"/"Este ano, até agora"/g' app*.js*
sed -i 's/"Next 30 minutes"/"Próximos 30 minuts"/g' app*.js*

sed -i 's/"Russian Federation"/"Brasil"/g' app*.js*

sed -i 's/"It looks like you haven'\''t used this timer picker before. As soon as you enter some time intervals, recently used intervals will appear here."/"Parece que você nunca usou usou este seletor de timer. Assim que você inserir alguns intervalos de tempo, os intervalos usados recentemente aparecerão aqui."/g' app*.js*
sed -i 's/"Read the documentation"/"Leia a documentação"/g' app*.js*
sed -i 's/" to find out more about how to enter custom time ranges."/" para saber mais sobre como inserir intervalos de tempo personalizados."/g' app*.js*

sed -i 's/title:"Recently used absolute ranges"/title:"Intervalos absolutos usados recentemente"/g' app*.js*
sed -i 's/title:"Relative time ranges"/title:"Intervalos de tempo relativos"/g' app*.js*
sed -i 's/(d,null,"Absolute time range")/(d,null,"Intervalo de tempo absoluto")/g' app*.js*
sed -i 's/"Apply time range"/"Aplicar intervalo de tempo"/g' app*.js*
sed -i 's/"Browser Time"/"Hora do navegador"/g' app*.js*
sed -i 's/"Change time zone"/"Alterar fuso horário"/g' app*.js*
sed -i 's/"Other quick ranges"/"Outros intervalos rápidos"/g' app*.js*
sed -i 's/"From"/"De"/g' app*.js*
sed -i 's/"To"/"Até"/g' app*.js*

sed -i 's/"Local browser time"/"Horário local do navegador"/g' app*.js*
sed -i 's/{className:"text-center"},"to")/{className:"text-center"},"até")/g' app*.js*

# Login page
sed -i 's/"Welcome to Grafana"/"Bem-vindo ao Grafana"/g' app*.js*
sed -i 's/"Don'\''t get in the way of the data"/"Não perca seus dados de vista | Powered by Grafana"/g' app*.js*
sed -i 's/"Your single pane of glass"/"########## | Powered by Grafana"/g' app*.js*
sed -i 's/"Built better together"/"Juntos somos mais fortes | Powered by Grafana"/g' app*.js*
sed -i 's/"Democratising data"/"Democratizando o acesso aos dados | Powered by Grafana"/g' app*.js*

sed -i 's/"Email or username"/"E-mail ou usuário"/g' app*.js*
sed -i 's/"Password"/"Senha"/g' app*.js*
sed -i 's/"Forgot your password?"/"Esqueceu sua senha?"/g' app*.js*
sed -i 's/"Log in"/"Entrar"/g' app*.js*
sed -i 's/"Logged in"/"Credenciais validadas com sucesso"/g' app*.js*
sed -i 's/placeholder="email or username"/placeholder="email ou usuário"/g' app*.js* # Not working yet, idk why 
sed -i 's/placeholder="password"/placeholder="senha"/g' app*.js* # Not working yet, idk why 
sed -i 's/"Logging in..."/"Validando as credenciais fornecidas..."/g' app*.js*
sed -i 's/"Email or username is required"/"O nome de usuário é obrigatório!"/g' app*.js*
sed -i 's/"Password is required"/"A senha é obrigatória!"/g' app*.js*

# Other (not sorted yet)
sed -i 's/title:"Dashboards"/title:"##########"/g' app*.js*
sed -i 's/tooltip:"Save dashboard"/tooltip:"Salvar dashboard"/g' app*.js*
sed -i 's/tooltip:"Dashboard settings"/tooltip:"Configurações do dashboard"/g' app*.js*
sed -i 's/tooltip:"Add panel"/tooltip:"Adicinar painel"/g' app*.js*
sed -i 's/tooltip:"Cycle view mode"/tooltip:"Visualização em repetição inifinita"/g' app*.js*
sed -i 's/"Time range zoom out "/"Diminuir o zoom do intervalo de tempo "/g' app*.js*
sed -i 's/"Mark as favorite"/"Marcar como favorito"/g' app*.js*
sed -i 's/"Share dashboard"/"Compartilhar dashboard"/g' app*.js*
sed -i 's/label:"Save current variable values as dashboard default"/label:"Salvar valores de variáveis atuais como padrão do dashboard"/g' app*.js*
sed -i 's/label:"Save current time range as dashboard default"/label:"Salvar o intervalo de tempo atual como padrão do dashboard"/g' app*.js*
sed -i 's/placeholder:"Add a note to describe your changes..."/placeholder:"Adicione um comentário para descrever suas alterações..."/g' app*.js*
sed -i 's/title:"Save dashboard"/title:"Salvar o dashboard"/g' app*.js*
sed -i 's/"Save"/"Salvar"/g' app*.js*
sed -i 's/"Cancel"/"Cancelar"/g' app*.js*
sed -i 's/" ago"/" atrás"/g' app*.js*
sed -i 's/"Press ESC to exit Kiosk mode"/"Pressine ESC para sair do modo Kiosque"/g' app*.js*
sed -i 's/tooltip:"Refresh dashboard"/tooltip:"Atualizar dashboard"/g' app*.js*

sed -i 's/"Jan"/"Jan"/g' app*.js*
sed -i 's/"Feb"/"Fev"/g' app*.js*
sed -i 's/"Mar"/"Mar"/g' app*.js*
sed -i 's/"Apr"/"Abr"/g' app*.js*
sed -i 's/"May"/"Mai"/g' app*.js*
sed -i 's/"Jun"/"Jun"/g' app*.js*
sed -i 's/"Jul"/"Jul"/g' app*.js*
sed -i 's/"Aug"/"Ago"/g' app*.js*
sed -i 's/"Sep"/"Set"/g' app*.js*
sed -i 's/"Oct"/"Out"/g' app*.js*
sed -i 's/"Nov"/"Nov"/g' app*.js*
sed -i 's/"Dec"/"Dez"/g' app*.js*

sed -i 's/"Mon"/"Seg"/g' app*.js*
sed -i 's/"Tue"/"Ter"/g' app*.js*
sed -i 's/"Wed"/"Qua"/g' app*.js*
sed -i 's/"Thu"/"Qui"/g' app*.js*
sed -i 's/"Fri"/"Sex"/g' app*.js*
sed -i 's/"Sat"/"Sab"/g' app*.js*
sed -i 's/"Sun"/"Dom"/g' app*.js*

sed -i 's/"Selected (",n.length,")"/"Selecionado (",n.length,")"/g' app*.js* # in variables list (multiple selection)
sed -i 's/"Type to search (country, city, abbreviation)"/"Digite para pesquisar (país, cidade, sigla)"/g' app*.js*
sed -i 's/"Default"/"Padrão"/g' app*.js*

sleep 5
sudo service grafana-server restart
echo "Tradução realizada com sucesso! Limpe o cache do seu navegador para aplicar as mudanças! (CTRL+F5)"
