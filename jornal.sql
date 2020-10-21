-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Out-2020 às 01:42
-- Versão do servidor: 10.4.13-MariaDB
-- versão do PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `jornal`
--
CREATE DATABASE IF NOT EXISTS `jornal` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `jornal`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ano`
--

CREATE TABLE `ano` (
  `ano` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `ano`
--

INSERT INTO `ano` (`ano`) VALUES
(1901),
(1902),
(1903),
(1904),
(1905),
(1906),
(1907),
(1908),
(1909),
(1910),
(1911),
(1912),
(1913),
(1914),
(1915),
(1916),
(1917),
(1918),
(1919),
(1920),
(1921),
(1922),
(1923),
(1924),
(1925),
(1926),
(1927),
(1928),
(1929),
(1930),
(1931),
(1932),
(1933),
(1934),
(1935),
(1936),
(1937),
(1938),
(1939),
(1940),
(1941),
(1942),
(1943),
(1944),
(1945),
(1946),
(1947),
(1948),
(1949),
(1950),
(1951),
(1952),
(1953),
(1954),
(1955),
(1956),
(1957),
(1958),
(1959),
(1960),
(1961),
(1962),
(1963),
(1964),
(1965),
(1966),
(1967),
(1968),
(1969),
(1970),
(1971),
(1972),
(1973),
(1974),
(1975),
(1976),
(1977),
(1978),
(1979),
(1980),
(1981),
(1982),
(1983),
(1984),
(1985),
(1986),
(1987),
(1988),
(1989),
(1990),
(1991),
(1992),
(1993),
(1994),
(1995),
(1996),
(1997),
(1998),
(1999),
(2000),
(2001),
(2002),
(2003),
(2004),
(2005),
(2006),
(2007),
(2008),
(2009),
(2010),
(2011),
(2012),
(2013),
(2014),
(2015),
(2016),
(2017),
(2018),
(2019),
(2020),
(2021),
(2022),
(2023),
(2024),
(2025),
(2026),
(2027),
(2028),
(2029),
(2030);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `codCategoria` int(11) NOT NULL,
  `categoria` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`codCategoria`, `categoria`) VALUES
(1, 'Esporte'),
(2, 'Política'),
(3, 'Economia'),
(4, 'Lazer'),
(5, 'Gastronomia'),
(6, 'Entretenimento'),
(7, 'Especiais'),
(8, 'Cinema'),
(9, 'Kids'),
(10, 'Ciências'),
(11, 'Educação');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dia`
--

CREATE TABLE `dia` (
  `dia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `dia`
--

INSERT INTO `dia` (`dia`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mes`
--

CREATE TABLE `mes` (
  `mes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `mes`
--

INSERT INTO `mes` (`mes`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12);

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticia`
--

CREATE TABLE `noticia` (
  `codNoticia` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `noticia` text DEFAULT NULL,
  `codCategoria` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `codRedator` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `noticia`
--

INSERT INTO `noticia` (`codNoticia`, `titulo`, `noticia`, `codCategoria`, `dia`, `mes`, `codRedator`, `ano`) VALUES
(1, 'The Last of Us Part 2: diretor diz que multiplayer valerá a espera', 'No último sábado (26), a Naughty Dog e os fãs celebraram o “The Last of Us Day” nas redes sociais. Aproveitando o momento, o diretor do jogo e vice-presidente do estúdio Neil Druckmann comentou brevemente sobre o multiplayer de The Last of Us Part 2.\r\n\r\nNo Twitter, o desenvolvedor agradeceu a todos que estavam participando das comemorações da franquia e pediu para que tivessem um pouco mais de paciência. Com isso, ele garantiu que a espera pelo novo modo de jogo valerá a pena.  \r\n\r\nAnteriormente, Druckmann revelou que o modo multijogador ganhou proporções que iam além de um simples conteúdo adicional. Portanto, é possível imaginar que os devs estão trabalhando para entregar um material no mesmo nível do single player.\r\n\r\nEspeculações sobre o lançamento do multiplayer\r\nEm fóruns, muitos fãs especulam sobre como o novo conteúdo poderá ser adicionado ao jogo. Por exemplo, há dúvidas se ele será um DLC gratuito para PS4 ou será algo separado do título principal e disponível para todos – como Call of Duty: Warzone.\r\n\r\nEnquanto isso, outros jogadores acreditam que o material será um extra da possível versão remasterizada para PS5. Lembrando que nenhuma dessas informações foram confirmadas pela Sony ou pela própria desenvolvedora.\r\n\r\nQual é a sua expectativa sobre o modo multijogador de The Last of Us Part 2? Como você imagina que será o lançamento do novo conteúdo? Conte para gente nos comentários!', 6, 28, 9, 1, 2020),
(2, 'O Corinthians voltou a ser Corinthians com Mancini', 'O time sofreu. Walter salvou. Everaldo fez o gol aos 49 minutos do segundo tempo. Mas a vitória conta o Athletico tirou o time da zona do rebaixamento\r\n\r\nSão Paulo, Brasil\r\n\r\n\"Foi uma vitória que nos traz paz.\r\n\r\n\"E que extremamento comemorada no vestiário, porque todos nós sabemos o quanto foi difícil.\r\n\r\n\"Com um jogador a menos, depois da expulsão do Bruno Mendéz, a equipe foi lá e fez o gol e leva pontos valiosos na nossa luta para sair dessa situação desconfortável que nos encontramos.\r\n\r\nEssas foram palavras do entusiasmado Vagner Mancini, após a supreendente vitória do Corinthians, diante do Athletico Paranaense, em plena Arena da Baixada, com seu gramado sintético.\r\n\r\nResultado que tirou o clube da zona do rebaixamento, logo na sua estreia como técnico.\r\n\r\nSurpreendente porque o Corinthians foi pior durante todo o jogo.\r\n\r\nPrincipalmente no segundo tempo, quando ficou com um homem a menos, com a expulsão infantil de Bruno Méndez, que mesmo sabendo do VAR, deu uma cotovelada em Renato Kayzer e recebeu o vermelho, aos 30 minutos do segundo tempo.\r\n\r\nBruno Méndez. Expulsão tola, que quase sabota o Corinthians\r\nBruno Méndez. Expulsão tola, que quase sabota o Corinthians\r\n\r\nWalter, sem jogar há 231 partidas, foi disparado o melhor jogador em campo. O goleiro reserva de Cássio fez pelo menos seis grandes defesas. Evitou a vitória do Athletico.\r\n\r\nE Mancini indicou que ele pode ser o novo titular corintiano, já que Cássio não passa por boa fase técnica.\r\n\r\nOutro jogados que se impôs foi Xavier.\r\n\r\nO novo técnico disse que observava o jogador desde que comandava outras equipes. Ele o convenceu a colocá-lo no time, durante os treinamentos.\r\n\r\nE Xavier foi fundamental na marcação e na \'roubada\' de bola que deixou Everaldo livre, para marcar o gol da vitória corintiana, aos 49 minutos do segundo tempo.\r\n\r\nAté Mancini na sua coletiva após o jogo deixou claro que sabia que o resultado foi injusto.\r\n\r\n\"Vencer era fundamental. A vitória deixa o ambiente mais tranquilo para trabalhar. Não tenha dúvida que significou muito. Era o que buscávamos depois de um começo de primeiro tempo bom.\r\n\r\n\"Tivemos mais a posse de bola, incomodamos mais o Athletico.\r\n\r\n\"No segundo tempo não, demos muito campo na iniciação deles. Foi o primeiro jogo, serve como laboratório, análise. Para ver o que tem que ser consertado.\"\r\n\r\nLógico que ele foi perguntado sobre o que havia mudado, desde a sua chegada.\r\n\r\n\"Difícil saber ao certo o que já mudou. O que vai mudar eu posso dizer: a maneira de jogar, que marque melhor, mais velocidade, agressivo.\r\n\r\nMas é cedo para exigir isso dos atletas.\r\n\r\n\"O que vi hoje foi uma dedicação fora do normal que tem que existir numa marca como a do Corinthians. Ainda distante do que julgo ideal.\"\r\n\r\nFoi um recado direto a atletas como Luan, pouco vibrantes. A mais cara contratação do atual elenco não entrou um minuto sequer na estreia de Mancini.\r\n\r\nO treinador sabia que havia rompido uma sequência de cinco partidas sem vitórias. E celebrou muito o resultado diante do Athletico.\r\n\r\n\"Cheguei há dois dias. Tem muita coisa a ser feita. A cara do Corinthians tem que ser mudada, não está bom ainda.\r\n\r\n\"Foi muito importante a vitória. Vindo vitória, você consegue elaborar mudanças de forma mais rápidas.\r\n\r\n\"Derrota você sofre, abala o emocional.\"\r\n\r\nMancini sabe que o elenco do Corinthians é limitado.\r\n\r\nE terá jogos difíceis pela frente.\r\n\r\nO primeiro será no domingo, contra o Flamengo, em Itaquera.\r\n\r\nO clube segue a três pontos da zona do rebaixamento.\r\n\r\nA tensão ainda cerca o Corinthians.\r\n\r\nMas Mancini tem razão.\r\n\r\nA vitória trouxe \'paz\' para trabalhar.\r\n\r\nInjusta ou não...', 1, 15, 10, 2, 2020),
(3, 'Netflix anuncia versão digital do Tudum para novembro', 'A Netflix anunciou nesta quinta-feira (15) as novidades da próxima edição do Tudum, festival dedicado às produções originais da plataforma. Marcada para acontecer entre 3 e 5 de novembro, o evento terá apresentação de Maísa Silva e participações de Joel Courtney (A Barraca do Beijo 2), Ashley Park, Lucas Bravo (ambos de Emily em Paris), Ana Valeria Becerril, Yankel Stevan (ambos de Control Z), MC Jottapê, Christian Malheiros e Bruna Mascarenhas (de Sintonia), Felipe Castanhari e Emicida. O Tudum poderá ser acompanhado pelo YouTube oficial da plataforma.\r\n\r\nAlém disso, a Netflix criou um almanaque especial do evento, que trará atividades, entrevistas e curiosidades de seus filmes e séries. O almanaque estará disponível em formato digital e terá 100 mil exemplares impressos, que poderão ser adquiridos no site oficial do Tudum a partir de 16 de outubro', 4, 15, 10, 4, 2020),
(4, 'Rapper Djonga é o único representante brasileiro em prêmio internacional de hip hop', 'O rapper mineiro Djonga é o único representante brasileiro em um prêmio internacional de hip hop.\r\n\r\n“Pode entrar”, convida Jorge, filho de Djonga.\r\n\r\nAs boas-vindas são do Jorge, filho mais velho do Djonga. É das origens que vem a inspiração.\r\n\r\n“Minha família é uma família de preto, gosta de fazer festa demais, entendeu? E festa, uma das coisas que não pode faltar é música. Então, eu cresci ouvindo muita música, de tudo quanto é estilo que você imaginar”, conta Gustavo Pereira Marques, o Djonga.\r\n\r\nDe Elza Soares, Milton Nascimento, Cazuza aos Racionais. Essa mistura ajudou Djonga a traduzir em rimas as desigualdades sociais, a violência que quando o assunto é racismo, Djonga não tem meias palavras. Coloca o dedo na ferida.\r\n\r\n“Tipo, tem situações que você nunca imaginaria que seria possível você conseguir ser discriminado. Você é. E aí, diante disso, você começa a entender o tamanho da estrutura. E como que a gente tem que lutar de fato, e como que a luta é muito mais pesada e mais séria do que parece. Não é uma coisa só de boca para fora. E ainda assim, o lance era bater no peito e falar: ‘vamos longe’”, diz Djonga.\r\n\r\n\r\nA música do rapper saiu da Zona Leste de Belo Horizonte e ganhou o mundo. E é em um estúdio, no quintal da casa da avó do Djonga que ele costuma fazer as gravações. Em cinco anos de carreira, ele já lançou vários sucessos. Os últimos estão entre os mais ouvidos na internet.\r\n\r\nA família está sempre ao lado. Dona Maria, a avó de 84 anos, é referência para ele e acompanha o neto até nos shows.\r\n\r\n“Agora que eu estou aproveitando a minha vida. Nunca fui de sair para festa, bar e farra, o tempo não dava”, conta Maria Eni Viana, avó de Djonga.\r\n\r\nRepórter: E agora?\r\n\r\nAvó: então agora eu estou tirando o atraso.\r\n\r\nDjonga largou o último período do curso de história na Universidade Federal de Ouro Preto para se dedicar à música.\r\n\r\n“Eu chamei meu marido e falei: \'vamos entregar na mão de Deus\'. Aí nós abençoamos e falou para ele seguir o caminho dele”, conta Rosângela Pereira Marques, mãe de Djonga.\r\n\r\nE ele não decepcionou. O jovem negro, de família simples, é o primeiro brasileiro indicado a um dos principais prêmios de hip hop do mundo, que acontece nos Estados Unidos.\r\n\r\n“O papel da arte de incomodar, de causar reflexão, para mim, é mais do que fundamental. Fora isso, é levar diversão e amor para o coração de todo mundo”, diz Djonga.', 7, 13, 10, 5, 2020),
(5, 'Após operação, governo quer senador que escondeu dinheiro na cueca fora de vice-liderança', 'O Planalto quer que o senador Chico Rodrigues (DEM-RR), vice-líder do governo no Senado, deixe o posto, após ele ter sido alvo da Polícia Federal (PF) durante operação deflagrada nesta quarta-feira (14) para combater um suposto esquema criminoso de desvio de recursos públicos destinados ao combate da pandemia do coronavírus em Roraima.\r\n\r\nDurante a abordagem da PF, Chico Rodrigues tentou esconder dinheiro na cueca. A tentativa de esconder dinheiro dentro da roupa foi revelada pela revista \"Crusoé\".\r\n\r\nNo Planalto, a ordem é que o líder do governo no Senado, Fernando Bezerra (MDB-PE), converse com ele para que o senador deixe o posto por inciativa própria. Caso contrário, será destituído.\r\n\r\nO líder do governo no Congresso, senador Eduardo Gomes (MDB-TO), disse ao blog defender que Chico Rodrigues deixe o posto para se defender.\r\n\r\n“Ele é vice-líder no Senado. Defendo que ele se afaste para conseguir se defender\", disse o líder do governo no Congresso.\r\n\r\nChico Rodrigues, vice-líder do governo Bolsonaro no Senado, carregava dinheiro na cueca\r\nChico Rodrigues, vice-líder do governo Bolsonaro no Senado, carregava dinheiro na cueca\r\n\r\nEntre parlamentares, há ainda a expectativa de alguma punição pelo DEM – partido do senador –, além do próprio Senado.\r\n\r\nO flagra envolvendo o vice-líder irritou o Planalto, uma vez que a repercussão negativa para a imagem do governo ocorre uma semana após Bolsonaro ter dito que não havia mais Lava Jato porque a corrupção tinha acabado em seu governo.', 2, 15, 10, 6, 2020),
(6, 'Vasco x Corinthians: onde assistir ao vivo ao jogo de hoje', 'O jogo Vasco x Corinthians terá transmissão da Globo (menos Ceará), do SporTV (menos estado do Rio de Janeiro) e do Premiere. Os dois times se enfrentam em confronto da 18ª rodada do Brasileirão nesta quarta-feira, às 21h30, em São Januário.\r\n\r\nO ge acompanha a partir das 20h30 o jogo, com vídeos dos lances. Clique AQUI para ir ao Tempo Real.\r\n\r\nNa Globo, a narração da partida será de Luis Roberto, com comentários de Caio Ribeiro e Roger Flores. No SporTV e no Premiere, Everaldo Marques narra, enquanto Casagrande e Ledio Carmona serão os comentaristas.', 1, 21, 10, 2, 2020),
(7, 'Filme de Kimetsu no Yaiba entra para a história no Japão', 'Demon Slayer the Movie: Mugen Train, o filme de Kimetsu no Yaiba, se tornou a maior estreia de cinema na história do Japão.\r\n\r\nSegundo o site Box Office Mojo, que reúne informações de bilheteria para filmes do mundo inteiro, Mugen Train rendeu o equivalente a US$ 44 milhões no final de semana de estreia.\r\n\r\nEsta já é a segunda maior bilheteria do ano para um filme no Japão e configura a maior estreia de todos os tempos no país — cujo ranking traz Star Wars: Episódio III - A Vingança dos Sith e Matrix Reloaded em segundo e terceiro lugar, respectivamente.', 6, 20, 10, 1, 2020),
(8, 'Bitcoin atinge máxima histórica em reais com uso pelo PayPal e analistas ainda enxergam oportunidades', 'SÃO PAULO – O Bitcoin superou nesta quarta-feira (21) sua máxima histórica em reais, chegando a R$ 71.265. A disparada veio depois que a empresa de meios de pagamento PayPal permitiu que clientes comprem, vendam e armazenem bitcoins e outras criptomoedas em suas carteiras digitais.\r\n\r\nAssim, os mais de 26 milhões de comerciantes que fazem parte da rede do PayPal poderão ser pagos com a moeda a partir de 2021, conforme noticiou a Reuters.\r\n\r\nSegundo Safiri Félix, diretor da ABCripto, a medida vai facilitar a aquisição dessas moedas, aumentando a base de usuários. “É uma resposta à Square, que anunciou ter parte do seu capital alocado em Bitcoin”, destaca.\r\n\r\nPUBLICIDADE\r\n\r\nNa mesma linha, Beibei Liu, CEO da NovaDAX, aponta que o principal vetor dessa valorização recente do Bitcoin é o aumento do investimento internacional.\r\n\r\n“Square, MicroStrategy, Grayscale e Bit Digital anunciaram seus investimentos em Bitcoin e afirmaram que tratarão a criptomoeda como parte do seu portfolio de ativos de longo prazo. A Square inclusive permitiu a compra e venda de bitcoins no seu Cash App”, ressalta.', 3, 21, 10, 6, 2020),
(9, 'Programadores Altamente Eficazes: 7 Hábitos', 'Eu tenho certeza absoluta que pelo menos um desses hábitos vai dar aquele clique na sua cabeça, aquele momento “Eureka!” que vai mudar, daqui pra frente, o jeito que você evolui as suas habilidades como programador.\r\n\r\nClique no play acima para ver sobre o tema deste artigo em formato de vídeo, caso seja da sua preferência.\r\nVocê vai começar a notar algumas coisas que te impedem de evoluir de verdade, porque inclusive isso aconteceu comigo em alguns pontos enquanto eu estava estudando e escrevendo a respeito desse assunto.\r\nE agora partiu logo para os 7 hábitos e o primeiro você vai falar: \"Ei, esse eu já sei!\" , mas eu suspeito que você nunca o viu da forma com eu vou explicar aqui. …', 11, 9, 10, 5, 2020),
(10, 'Como ficar com o nome invisível no Among Us', 'Já viu algum jogador “sem nome” nas salas e partidas de Among Us? Nome invisível, nome em branco, sem nome — chame como quiser, a tática é a mesma e pode te dar uma ligeira vantagem caso você seja um impostor no jogo. Acompanhe este tutorial e saiba como ficar com o nome invisível no Among Us.\r\n\r\nComo jogar Among Us [Guia para iniciantes]\r\nComo jogar e não passar raiva no Fall Guys [Guia para Iniciantes]\r\nNão é necessário usar nenhum hack ou plugin. O truque, na verdade, é bem simples.\r\n\r\nAmong US pode ser jogado no iOS, Android ou PC (Imagem: Divulgação/InnerSloth)\r\nAmong US pode ser jogado no iOS, Android ou PC (Imagem: Divulgação/InnerSloth)\r\n\r\nNome de usuário invisível no Among Us\r\nApesar do jogo estar disponível para iOS, Android e PC, por aqui o teste do nome em branco só funcionou no celular. Você pode testar pelo computador, mas é provável que o jogo recuse.\r\n\r\nO segredo é usar um caractere Unicode na hora de escolher o nome de usuário no jogo. Não adianta usar apenas a barra de espaço, pois o espaço normal não será considerado como um caractere e você não conseguirá avançar para a próxima tela. Para o nome invisível dar certo no Among Us, é só seguir os passos abaixo:\r\n\r\nCopie o espaço em branco entre estas aspas “ㅤ”;\r\nAbra o Among Us e escolha entre Local ou Online;\r\nToque no campo para digitar seu nome no jogo e cole o caractere;\r\nComo ficar com nome invisível no Among Us (Imagem: Reprodução/Among Us)\r\nCrie sua própria sala ou entre em uma já existente;\r\nPronto! Agora você sabe como ficar com o nome invisível no Among Us. Nenhum texto vai aparecer abaixo do seu personagem, como na minha imagem.\r\nEu testei o username em branco tanto no celular como no computador, mas por aqui deu certo apenas pelo celular.\r\n\r\nÉ possível jogar com o nome de usuário em branco no Among Us (Imagem:Reprodução/Among Us)\r\nÉ possível jogar com o nome de usuário em branco no Among Us (Imagem:Reprodução/Among Us)\r\n\r\nPor que deixar o username invisível?\r\nA tática é usada para despistar outros jogadores, mas realmente é um pouco questionável.\r\n\r\nEla só faz sentido se você for escolhido como impostor, e mesmo assim outras pessoas podem te acusar pela cor do boneco — “é o ciano”, “é o rosa”, como já é comum acontecer —, ou simplesmente podem se referir a você como “é o sem nome”.\r\n\r\nMas existe uma pequena vantagem em jogar sem nome — é possível se locomover pelo mapa sem chamar tanta atenção. Usernames muito compridos podem ser vistos com facilidade, mesmo quando estão do outro lado do mapa. Com o nome invisível, não há um texto flutuando abaixo do boneco.\r\n\r\nCom o nome em branco, os outros usuários só te veem de longe se realmente estiverem prestando atenção, fica mais fácil se “camuflar” como impostor. Porém, se você for um membro da equipe e não um impostor, o nome em branco não vai fazer diferença.', 6, 13, 5, 3, 2019);

-- --------------------------------------------------------

--
-- Estrutura da tabela `redator`
--

CREATE TABLE `redator` (
  `codRedator` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `sobrenome` varchar(255) DEFAULT NULL,
  `ddd` varchar(2) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `codTurma` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `redator`
--

INSERT INTO `redator` (`codRedator`, `nome`, `sobrenome`, `ddd`, `cidade`, `email`, `ano`, `mes`, `codTurma`, `dia`, `telefone`) VALUES
(1, 'João Victor ', 'Morais', '11', 'Ribeirão Pires', 'joao@gmail.com', 2003, 10, 2, 21, '11111-1111'),
(2, 'Gustavo ', 'Henrique', '11', 'Ribeirão Pires', 'gusta@gmail.com', 2004, 9, 2, 23, '22222-2222'),
(3, 'Gisele', 'Marques', '11', 'Mauá', 'gigi@gmail.com', 2003, 6, 6, 27, '44444-4444'),
(4, 'Letícia', 'Giolo', '11', 'São Paulo', 'lelefofa@gmail.com', 2002, 4, 3, 24, '33333-3333'),
(5, 'Vitor ', 'Pimenta', '11', 'Ribeirão Pires', 'vitor@gmail.com', 2004, 5, 2, 13, '5555-5555'),
(6, 'Matheus', 'Foresto', '11', 'Ribeirão Pires', 'little@gmail.com', 2004, 5, 2, 13, '77777-7777');

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `codTurma` int(11) NOT NULL,
  `turma` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`codTurma`, `turma`) VALUES
(1, '1C'),
(2, '2C'),
(3, '3C'),
(4, '1F'),
(5, '2F'),
(6, '3F');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `ano`
--
ALTER TABLE `ano`
  ADD PRIMARY KEY (`ano`);

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`codCategoria`);

--
-- Índices para tabela `dia`
--
ALTER TABLE `dia`
  ADD PRIMARY KEY (`dia`);

--
-- Índices para tabela `mes`
--
ALTER TABLE `mes`
  ADD PRIMARY KEY (`mes`);

--
-- Índices para tabela `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`codNoticia`),
  ADD KEY `codCategoria` (`codCategoria`),
  ADD KEY `dia` (`dia`),
  ADD KEY `mes` (`mes`),
  ADD KEY `codRedator` (`codRedator`),
  ADD KEY `ano` (`ano`);

--
-- Índices para tabela `redator`
--
ALTER TABLE `redator`
  ADD PRIMARY KEY (`codRedator`),
  ADD KEY `ano` (`ano`),
  ADD KEY `mes` (`mes`),
  ADD KEY `codTurma` (`codTurma`),
  ADD KEY `dia` (`dia`);

--
-- Índices para tabela `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`codTurma`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `codCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `noticia`
--
ALTER TABLE `noticia`
  MODIFY `codNoticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `redator`
--
ALTER TABLE `redator`
  MODIFY `codRedator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `turma`
--
ALTER TABLE `turma`
  MODIFY `codTurma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `noticia`
--
ALTER TABLE `noticia`
  ADD CONSTRAINT `noticia_ibfk_1` FOREIGN KEY (`codCategoria`) REFERENCES `categoria` (`codCategoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_2` FOREIGN KEY (`dia`) REFERENCES `dia` (`dia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_3` FOREIGN KEY (`mes`) REFERENCES `mes` (`mes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_4` FOREIGN KEY (`codRedator`) REFERENCES `redator` (`codRedator`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_5` FOREIGN KEY (`ano`) REFERENCES `ano` (`ano`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `redator`
--
ALTER TABLE `redator`
  ADD CONSTRAINT `redator_ibfk_1` FOREIGN KEY (`ano`) REFERENCES `ano` (`ano`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_2` FOREIGN KEY (`mes`) REFERENCES `mes` (`mes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_3` FOREIGN KEY (`codTurma`) REFERENCES `turma` (`codTurma`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_4` FOREIGN KEY (`dia`) REFERENCES `dia` (`dia`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
