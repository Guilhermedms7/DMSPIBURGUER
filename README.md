# DMS PiBurger

Aplicativo Flutter de pedidos para uma hamburgueria, desenvolvido como projeto acadêmico. O app reúne cardápio por categorias, personalização de produtos, carrinho, temas claro e escuro e uma demonstração do fluxo de finalização de pedido.

## Sobre o projeto

O DMS PiBurger foi criado para explorar uma experiência mobile de delivery e praticar a organização de uma aplicação Flutter em telas, componentes reutilizáveis, modelos de dados e gerenciamento de estado.

O fluxo passa pelo acesso ao app, navegação pelo cardápio, escolha de adicionais, montagem do carrinho e telas demonstrativas de pagamento e acompanhamento do pedido.

## Funcionalidades

- **Cardápio por categorias:** hambúrgueres, saladas, acompanhamentos, sobremesas e bebidas.
- **Detalhes do produto:** imagem, descrição, preço e opções de adicionais.
- **Carrinho de compras:** adicionar itens, ajustar quantidades, remover produtos e consultar a quantidade e o valor total do pedido.
- **Resumo do pedido:** recibo com os itens e o total calculado.
- **Temas:** alternância entre modo claro e escuro.
- **Telas de acesso:** interfaces de login e cadastro.
- **Finalização demonstrativa:** formulário visual de cartão e tela de acompanhamento da entrega.

## Tecnologias

- **Flutter e Dart** — interface e estrutura do aplicativo.
- **Provider** — gerenciamento de estado do cardápio, carrinho e tema.
- **flutter_credit_card** — componentes visuais do formulário de cartão.
- **collection** — comparação e busca de itens no carrinho.
- **intl** — formatação de data e valores no recibo.

## Organização do código

```text
lib/
├── auth/         # alternância entre as telas de login e cadastro
├── components/   # componentes reutilizáveis da interface
├── images/       # imagens dos produtos e identidade visual
├── models/       # produtos, adicionais, carrinho e estado do restaurante
├── pages/        # cardápio, detalhes, carrinho, pagamento e outras telas
└── themes/       # temas claro, escuro e controle de tema
```

O modelo `Restaurant` mantém o cardápio de demonstração e as operações do carrinho. O `ThemeProvider` controla a alternância de tema; ambos usam `ChangeNotifier` com Provider.

## Como executar

### Requisitos

- Flutter SDK compatível com a restrição de Dart `^3.6.1` definida no projeto.
- Um emulador ou dispositivo configurado. Para executar no navegador, é necessário ter o Chrome instalado.

### Passos

```bash
git clone https://github.com/Guilhermedms7/DMSPIBURGUER.git
cd DMSPIBURGUER
flutter pub get
flutter run
```

Para abrir no Chrome:

```bash
flutter run -d chrome
```

## Escopo atual

O projeto é um protótipo acadêmico executado localmente. O cardápio e o carrinho usam dados em memória; não há persistência ou backend conectado. As telas de login e cadastro são interfaces demonstrativas. O formulário de cartão e o acompanhamento de entrega não processam pagamentos nem consultam um serviço real de pedidos ou entregas.

**Não use dados reais de cartão neste protótipo.**
