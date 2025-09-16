#import "@preview/wrap-it:0.1.1": *

#set text(font: "JetBrains Mono")

#set page(
  paper: "a4",
  margin: (x: 1cm, y: 1cm),
  header: [#align(center, [DRSS Institut])],
  footer: [#grid(columns: (auto, 1fr, auto), [9187661], [], [Přepisový formulář DaI\#25])]
)


// #let wave-ascii = block(par(leading: 0.5em, text(size: 4pt,
//   "a
//       ⡇⡀  ⡀⡀         ⣾⣀⣄⢀⣀⣀⢠⡀⡀⢀⢀⣠ ⡄⢠ ⡀   ⢀⣧⣿⡆       ⢀⡀        
// ⣦⣠⣤⣄⣠⣧⣷⣦⣄⣿⣧⣿⣦⣷⣤⣾⣤⣤⣧⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣾⣿⣷⣆⣤⣴⣾⣿⣿⣷⣿⣷⣿⣿⣷⣿⣼⣿⣷⣤⣷⣿⣿⣿⣾⣶⣶
// ⠟⠙⠛⠋⠙⡟⡿⠟⠋⣿⡟⣿⠟⡿⠛⢿⠛⠛⡟⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⢿⣿⡿⠏⠛⠻⢿⣿⣿⡿⣿⡿⣿⣿⡿⣿⢻⣿⡿⠛⡿⣿⣿⣿⢿⠿⠿
//       ⡇⠁  ⠁⠁         ⢿⠉⠋⠈⠉⠉⠘⠁⠁⠈⠈⠙ ⠃⠘ ⠁   ⠈⡟⣿⠇       ⠈⠁        
//   "
// )))
#let wave-ascii = image("images/audio.svg", height: 2.5em)

#let sender-img = block(stroke: none,// {{{
  par(leading: 0.3em, text(font: "JetBrains Mono", size: 4.3pt, "..............................:::::::::.:::;;;;::::::::;;;;;;;;;;;;+++xxx$$$$$$$$$$$$$$
:::::::::::::::...::.........:...:..:;;;;;;;:::::;::::;;:;;;;;;;;;;;++++++X$$$$$$$$$$$&
::::::::::::::::::::::..........:;;;;;;;:;;;;;;;::;;;::;;;;;;;;;;;;++++++++$&&&&&&&&&&&
::::::::::::::.:::.......... :;;;;;;;;;;;:;::::..;;;;;;;;;;;;;;;;;++++++++xX&&&&&&&&&&&
:::::::::::................:;++;;;;;;:.:...:.:..;;;;;;;;;;;;;;;;;++++++++++X$$&&&&&&&&&
:::::::. .:....:.......::.:+x+++;;:.:::.::::::;;;;;;;;;;;;;;;;;;;++++++++++x$&&$&&&&&&&
::::   .::;;::::::::::;:::;++x+;:;;:..:.::;;;;;;;;;;;:;;;;;;;;;;+++++++++++xX&&&&&&&&&&
::.  ..::;+;::..::;;;;;;:::;++;;::;+::::;;;;;;;;;;;:;;;;;;;;;;;;;++++++++++xX$&&&&&&&&&
   .::;+x+. ..::;+;;;;;;:::;+xx;+;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;++++++++xxxxX$&&&&&&&&&
 .::;++: .:::;;;x+:::::::::;;;;;;;;;;;;;;;;;;;+X$X::+&&&&&&&&&&$x++;;;;++++xx$&&&&&&&&&
::;+x;:..:;;+xXx;::::::...:::;;;;;;;;;++X$&&&&&&&&&&&&&&&&&&&&&&&&&$XX;;:;;;+X&&&&&&&&&
;++X;..::;+Xx;:::::::.....::;;++;;++xX$&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&$$$$x;x+&&&&&&&&&
+XX:::;+xX+:::::::::::.....:;X$&$&&&&&&&&&&&&&&&&&&&&&$$$$$$&&&&&&&&&&&&&&$X;+$&&&&&&&&
X+::;+++;:..:::...::;::..;$&&&&&&&&&&&&&&&&&$XXXXxxXXX$$$$$$$XXx+xxXXXX$&&&&&$$&&&&&&&&
;::;;;;...::...:::;;XXX&&&$&&&&&&&&&&&$X++XX+++++XXXXx++;:::::::;;;xXXXXXX$$&&&&&&&&&&&
;;;++:....  .:::;;+$&&&&&&&&&&&&&&$+xx++xXXx++++++;:::::;;;:;:;;;;;+X$$$$&&&&&$&&&&&&&&
++;:..  ...:::;xXXx&&&&&&&&&&&&X+++++++++++x+;;::;+++++;;;;;;;;;;;;+XX$&&&&&&&&$&&&&&&&
;:.  ...:::;;+Xx::;$&&&&&&&&&$x++++xxXX++;;;:::;;;;;;;;::;;;;;;;;;;+xXX$&&&&&&&&&&&&&&&
::::...:;;;+X+::::::;$&&&&&&$X++xX$$X+;;;:.:::::::;;;;;;:::;;;;;;;;;xxX$$&&&&&&&&&&&&&&
::;;::;;;++:::::::::::::+X&&$XxXx++;+++;;:::::::;;;+++++;;;::;;++;;;++xX$$&&&&&$x++X&&&
+++x++x+;::::::::::::::::..;$Xxx+;::;+++++;::::;++++;;;;;+x+;;;++;;;++++X$$&&&$Xx$&$x&&
xxXx:::::::::::::::::::::..:$xx+;;+;;;;;+x+;::;;++;++;;+;;++x++;;;;;++++XX$$&&$$+++xXX&
XX;:::::::::::::::::::::::.:X;+++xxxx;;;;+x;::;;+++;;:X$$;;;++;;;;;+++++X&&&&&Xx+++++x&
X;::::::::::::::::::::::::::X:.++X+$$$::;;+:::;;;;++;;;;;;;;;;;;;++++++xX&&&&&$X+;+++$&
;:::::::::::::::::::::::::.;$;.:++;;:::;;;::::;;;;;;;;;;;;::::;;;;++++xxX$&$XXXXx;++x&&
;;:::. :::;;;;::::::::::::::XX....;;;;;:;;:::;;;;;::::::::::::;;;++xxxxXXXx++;;xx+++&&&
;+:..:::::;;+X;::::::::::::::x:...:::::;;::::;;;;;::::::::::::;;;++xXxxxxx+++;;++++$&&&
++:::::;;;+xX+:;;;:::::::::::::::::::::;::::;;;;;;:::::::::::;;;++xXxxxxxX+;;+++++&&&&&
+++;;;;;+XX;;;;;;;;:::::::::::::::::::;;::::;;+;;;;;::::::::;;;+++xxx+xXXX++++++X&&&&&&
+xx+++xx;;;;;;;;;;;:;;;:::::::::;;;::;;;;;;;xXXXx+;:::::::;;;+++++xxx+xXXx;;;++$&&&&&&&
xxXxx+::;;;;;;;;;:::;;:::::::::;++;;;++xxXX$&&X+x;;;;;;;;;;+++x+++++++xX$&XxX$&&&&&&&&&
$$$$;:::::;::::::::::::::::::::;Xx++x+;;xx$$XXXXXXx++xX++++++xx++++++xX$&&&&&&&&&&&&&&&
$X;:::::::::::::::::::::::::::::xXXXx;+XXXXxxXxxxxx+xxXXXXx+++x+++++xX$$X&&&&&&&&&&&&&&
;;::::::;;;:;;::::::::::::::::::;XX+;;+XXXX$XXXX$XX$$XXX$$x+++x++++xX$$XxX&&&&&&&&&&&&&
+++;;;+++xx+++++;;;;;;:;;;;;;;;;;xX+;+X$$$$$$$$$$X$$$XXx+++++xx+++xX$&$xx$&&&&&&&&&&&&&
xXXXXXX$$$&$$$$XXx++++++++++++++++x+xx$$$XXX+++xxx+XXXXxx+++xx+++xX$$$X++$&&&&&&&&&&&&&
X$&&&&&&$$$$$$$$$$$$$$$XXXxxxXXXXxx++X$$XXXxxx++++++++xXx+++++++xX$$$Xx+x$&&&&&&&&&&&&&
X$&&$$XXXxx+++xXXXX$$$$Xx++;;++xxXXXXXXXx++;;;;;;;;;;+Xx+++xxxxXX$$XX++xX$&&&&&&&&&&&&&
X$&$$$XXXx+++;;;++xXXXXX+;;::::;;++xXXx++++;;;;;;;;;;;+++xXXXX$$$$$X++xxX+&&&&&&&&&&&&&
X$&&&$$$$$Xx+++++xX$$$$$X++;;;;;++xxXXX$Xxx+++++++++++xXX$&&&&&&&$x+++xXxx&&&&&&&&&&&&&
X$&&&&&&&&&&&&&&&&&&&&&&&&$XXxXX$$$$$XXxx$$$XXXXXXXX$$&&&&&&&&&&X+++++x++&&&&&&&&&&&&&&
X$&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&+;+$&&&&&&&&&&&&&&&&&$Xx++++x+;$&&&&&&&&&&&&&&&
X$&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&X+&X$$$$$$$$$$$$$XxXXXx+++++;;$&&X+x+X&&$$&&&&&&
X$&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&$+++;+;+x+&&$+X$$$$$$Xx+xxxxx+++;:+&&$++X&&$xX&&$x++xXX
X$&&x;;;;++;;++xxX$XXXxxxxx+++;;;;;+$&+X$$+$&&$++XXXx++++++x+;:+$&&X+x$$&&&&+X&&&&&$XXX
X$$;:+xX$&+;;++;+++++xx+xX$&&&$+;+X&&&XX$&&x+X&&&x::::;+x+::;$&$x++X&&&&&&&&;$&&&&&&&$$
")))// }}}


// #let body-grid = grid(
//   columns: 1,
//   [#wrap-content( sender-img, [#par(justify: true, lorem(500))], align: top + right, column-gutter: 1em)]
// )
//
#let text-intro = par[
  TODO. Kvůli velkému náporu na naše tratě, je potřeba některé vlaky odklinit, aby se ty nejdůležitější dostaly do svého cíle.
  Pro správný chod sítě také potřebujeme zajistit, aby všechny úseky tratě splňovaly požadavky pro důležité soupravy, jež po nich budou jezdit. V příloze jsou
  nedokončené úseky, které je třeba navrhnout. Jakmile budou tratě rozvrženy, je možné spustit provoz na plno. #v(1em) _Příloha #1:_
]

// #let train

#let text-main = table(
  columns: (1fr, 1fr),
  table.cell(colspan: 2, [Možné nastavení kolejí: #box(rotate(90deg, reflow: true, image("images/trains/possible-rails.jpeg", width: 4em)))]),
  [#align(top, [\#1]) #box(rotate(-90deg, reflow: true, image("images/trains/trat-1.jpeg", width: 9em)))],
  [],
  [],
  [],
  table.cell(colspan: 2, ["main solution part"
  - list of trains which have to go through all four parts in order
  - some of them can go through, others cant
  - the ones which can go through form the solution
  - each train has a letter/number associated to it. the solution is the sequence of characters of the accepted trains.
  ])
)

#let body-grid = grid(
  columns: 1,
  grid.cell(grid(
    columns: (1fr, 1fr),
    grid.cell(inset: 0.5em, text-intro),
    grid.cell(
      stroke: 1pt + black,
      inset: 0.7em,
      align(center + horizon, sender-img)
    )
 
  )),
  grid.cell(inset: 0em, text-main)
)




#table(
  columns: (1fr, 1fr),

  align(horizon, text(weight: "bold", size: 1.2em, [Přepis přijaté zprávy])),
  [#wave-ascii],
  [*Zdroj:* ],
  [*Odesílatel:* Ťopka, Přednosta stanice],
  table.cell(colspan: 2, inset: 0pt, [#body-grid]),
  table.cell(colspan: 2, inset: 0pt, table(
    columns: (1fr, 2fr, 1fr),
    align(center + horizon, rotate(90deg, reflow: true, image("images/three-body-logo-smaller.svg", height: 5em))),
    [],
    align(horizon + right, [20. 9. 2025])
  ))
)
