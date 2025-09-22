#import "@preview/wrap-it:0.1.1": *

#set text(font: "JetBrains Mono")

#set page(
  paper: "a4",
  margin: (x: 1cm, y: 1cm),
  header: [#align(center, [DRSS Institut])],
  footer: [#grid(columns: (auto, 1fr, auto), [9187661], [], [Přepisový formulář DaI\#25])]
)


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


  Dane, doufám, že se k tobě zpráva dostane, je to naléhavé.
  Abychom si opravdu byli jisti, že když uspějěš, tak bude Země (a slyšel jsem,  že je ve hře i nějaká svatba?) opravdu zachráněna,
  je potřeba udržovat naši železnici v perfektním stavu. Neptej se, je to složité. Máme pár úseků, které nesplňují požadavky vlaků, co tam mají jezdit.
  Každý vlak potřebuje projet správnými stanicemi, ve správném pořadí. Naši strojvedoucí často zapomenou, že mají vlak řídit, a tak je potřeba stavět koleje co nejjednodušší.
  Posílám ti instrukce, jaké konfigurace výhybek zvládnou. Dej vědět, jak budeš mít úseky navrženy.

]

#let color-lookup = (
  "red": red,
  "green": green
)

#let train(accept: true, stations) = {

  let n = stations.len()

  let blocks = ()
    for s in stations {
      blocks.push(align(horizon, box(width: 8pt, height: 8pt, fill: color-lookup.at(s))))
    }

  grid(
    gutter: 1pt,
    columns: n+1,
    if accept { 
    image("./images/trains/train-icon-green.svg", width: 15pt)
  } else { 
    image("./images/trains/train-icon-red.svg", width: 15pt)
  },
    ..blocks
  )
  
}

#let top1 = [⠘⠁⠈⠈⠙]
#let top2 = [⠁  ⠁⠁]
#let bot1 = [⣦⣠⣤⣄]
#let bot2 = [⣀⣄⢀⣀]
#let top-deco = (top1, top2)
#let bot-deco = (bot1, bot2)


#let map-cell(start: false, end: false, deco: 0, station: none) = {
  let square-dim = 30pt
  box(width: square-dim, height: square-dim)[
    #place(dy: 2.1pt, dx: if deco == 0 {-3pt} else {2pt})[#text(size: 0.8em, fill: gray)[#top-deco.at(deco)]]
    #place(bottom, dy: -3.5pt, dx: -0.4pt)[#text(size: 0.8em, fill: gray)[#bot-deco.at(deco)]]
    #if start {
      place(left+horizon, dx: 0.42pt, box(image("./images/trains/track-start.svg", width: square-dim + 5pt)))
    }
    #if end {
      place(left+horizon, dx: -0.42pt, rotate(180deg, image("./images/trains/track-start.svg", width: square-dim + 5pt)))
    }
    #if station != none {
      place(box(stroke: (paint: station, dash: (array: (20pt, 10pt), phase: 10pt), thickness: 2pt), width: 100%, height: 100%))

    }
  ]
}

#let train-ex-1 = {
  grid(
    columns: (auto, auto),
    [
    #stack(spacing: 0pt ,train(("red", "green")) ,train(("green", "red")) ,train(("green",)) ,train(("red",)))
  ],
    box(width: 100%,
      align(right,
    table(
      inset: 0pt,
      // columns: (1fr, 1fr,1fr,1fr,1fr,1fr),
      columns: 6,
      map-cell(deco: 1), map-cell(), map-cell(), map-cell(), map-cell(), map-cell(), 
      map-cell(), map-cell(), map-cell(deco: 1), map-cell(deco: 1, station: red), map-cell(), map-cell(), 
      map-cell(start: true), map-cell(), map-cell(), map-cell(), map-cell(), map-cell(end: true), 
      map-cell(), map-cell(deco: 1), map-cell(station: green), map-cell(deco: 1), map-cell(deco: 1), map-cell(), 
      map-cell(), map-cell(), map-cell(deco: 1), map-cell(), map-cell(), map-cell(deco: 1), 
    )))

  )
}

#let train-ex-2 = {
  grid(
    columns: (auto, auto),
    [
    #stack(spacing: 0pt ,train(("red", "red", "green")) ,train(("green", "red", "red")))
],
    box(width: 100%,
      align(right,
    table(
      inset: 0pt,
      // columns: (1fr, 1fr,1fr,1fr,1fr,1fr),
      columns: 6,
      map-cell(deco: 1), map-cell(), map-cell(), map-cell(), map-cell(), map-cell(), 
      map-cell(), map-cell(station: red), map-cell(deco: 1), map-cell(deco: 1), map-cell(), map-cell(), 
      map-cell(start: true), map-cell(), map-cell(), map-cell(station: green), map-cell(), map-cell(end: true), 
      map-cell(), map-cell(deco: 1, station: red), map-cell(), map-cell(deco: 1), map-cell(deco: 1), map-cell(), 
      map-cell(), map-cell(), map-cell(deco: 1), map-cell(), map-cell(), map-cell(deco: 1), 
    )))

  )
}

#let train-ex-3 = {
  grid(
    columns: (auto, auto),
    [
    #stack(spacing: 0pt ,train(("green", "red", "red", "green")) ,train(("green", "red", "red", "green", "red", "red", "green")), train(("green", "red", "red", "green", "green"), accept: false))
],
    box(width: 100%,
      align(right,
    table(
      inset: 0pt,
      // columns: (1fr, 1fr,1fr,1fr,1fr,1fr),
      columns: 6,
      map-cell(deco: 1), map-cell(deco: 1, station: green), map-cell(), map-cell(), map-cell(station: red, deco: 1), map-cell(), 
      map-cell(), map-cell(), map-cell(deco: 1), map-cell(deco: 0), map-cell(), map-cell(deco: 1), 
      map-cell(start: true), map-cell(), map-cell(), map-cell(), map-cell(), map-cell(end: true), 
      map-cell(), map-cell(deco: 1, station: red), map-cell(), map-cell(deco: 1), map-cell(deco: 0, station: green), map-cell(), 
      map-cell(), map-cell(), map-cell(deco: 1), map-cell(), map-cell(), map-cell(deco: 1), 
    )))

  )
}

#let train-ex-4 = {
  grid(
    columns: (auto, auto),
    [
    #stack(spacing: 0pt ,train(accept: false, ("green",)) ,train(("green", "green")), train(accept: false, ("green", "green", "green")), train(accept: true, ("green", "green", "green", "green")),)
],
    box(width: 100%,
      align(right,
    table(
      inset: 0pt,
      // columns: (1fr, 1fr,1fr,1fr,1fr,1fr),
      columns: 6,
      map-cell(deco: 1), map-cell(), map-cell(), map-cell(), map-cell(), map-cell(), 
      map-cell(), map-cell(), map-cell(deco: 0), map-cell(deco: 0), map-cell(), map-cell(deco: 1), 
      map-cell(start: true), map-cell(deco: 1), map-cell(), map-cell(), map-cell(), map-cell(end: true), 
      map-cell(), map-cell(), map-cell(), map-cell(deco: 1), map-cell(), map-cell(), 
      map-cell(), map-cell(), map-cell(deco: 1), map-cell(), map-cell(deco: 1, station: green), map-cell(deco: 0), 
    )))

  )
}


#let example-size = 30pt

#let text-main = table(
  columns: (1fr, 1fr),
  table.cell(colspan: 2, [
    #grid(
      columns: 2,
      gutter: 10pt,
      [

    Možné nastavení kolejí:   #h(5.8em)      (+ vertikálně) #grid(
    columns: 10,
    gutter: 5pt,
    box(stroke: black, inset: 1pt, image("./images/trains/track-straight.svg", height: example-size)),
    box(stroke: black, inset: 1pt, rotate(90deg, image("./images/trains/track-straight.svg", height: example-size))),
    box(stroke: black, inset: 1pt, rotate(0deg, image("./images/trains/track-bend.svg", height: example-size))),
    box(stroke: black, inset: 1pt, rotate(90deg, image("./images/trains/track-bend.svg", height: example-size))),
    box(stroke: black, inset: 1pt, rotate(180deg, image("./images/trains/track-bend.svg", height: example-size))),
    box(stroke: black, inset: 1pt, rotate(270deg, image("./images/trains/track-bend.svg", height: example-size))),
    box(stroke: black, inset: 1pt)[#rotate(0deg, image("./images/trains/track-bend.svg", height: example-size)) #place(top, image("./images/trains/track-straight.svg", height: example-size))],
    box(stroke: black, inset: 1pt)[#rotate(90deg, image("./images/trains/track-bend.svg", height: example-size)) #place(top, image("./images/trains/track-straight.svg", height: example-size))],
    box(stroke: black, inset: 1pt)[#rotate(180deg, image("./images/trains/track-bend.svg", height: example-size)) #place(top, image("./images/trains/track-straight.svg", height: example-size))],
    box(stroke: black, inset: 1pt)[#rotate(270deg, image("./images/trains/track-bend.svg", height: example-size)) #place(top, image("./images/trains/track-straight.svg", height: example-size))],
  )],
    [*Zakázané nastavení*: #grid(
    columns: 3,
    gutter: 5pt,
    box(stroke: black, inset: 1pt)[#rotate(270deg, image("./images/trains/track-bend.svg", height: example-size)) #place(top, image("./images/trains/track-straight.svg", height: example-size)) #place(top, image("./images/trains/track-bend.svg", height: example-size))],
    box(stroke: black, inset: 1pt)[#rotate(90deg, image("./images/trains/track-bend.svg", height: example-size)) #place(top, image("./images/trains/track-bend.svg", height: example-size))],
  )
    ]
    )
    ],
    ),
  train-ex-1,
  train-ex-2,
  train-ex-3,
  train-ex-4
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
  [*Zdroj:* 49.841664N, 14.652588E],
  [*Odesílatel:* Ťopka, Přednosta stanice],
  table.cell(colspan: 2, inset: 0pt, [#body-grid]),
  table.cell(colspan: 2, inset: 0pt, table(
    columns: (1fr, 2fr, 1fr),
    align(center + horizon, rotate(90deg, reflow: true, image("images/three-body-logo-smaller.svg", height: 5em))),
    [],
    align(horizon + right, [20. 9. 2025])
  ))
)
