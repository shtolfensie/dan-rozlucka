
#set page("a4")

#let angled-block(dir, dot, compact: true) = {
  let rot = 1
  let dx = -0.4em
  let dy = 0pt
  let base-letter-size = 1.4em
  let lwx = 0.4em
  let letter-width = base-letter-size + 0.2em
  let letter-height = base-letter-size

  let inner-height = base-letter-size
  let inner-width = base-letter-size


  if dir == "left" {}
  else if dir == "top" {
    rot = 3
    dx = 0pt
    letter-width = if compact { letter-width } else { letter-width + lwx }
    dy = -0.4em
  } else if dir == "right" {
    rot = 5
    dx = 0.4em
  } else if dir == "bottom" {
    rot = 7
    dx = 0pt
    letter-width = if compact { letter-width } else { letter-width + lwx }
    dy = 0.4em
  } else {
    panic("unknown dir: " + dir)
  }

  let dot-elem = if dot {
    circle(radius: 0.2em, fill: black)
  } else {
    []
  }
  box(stroke: 0pt + black, width: letter-width, height: letter-height, place(center + horizon, dx: dx, dy: dy, rotate(45deg * rot, reflow: true, box(stroke: (top: 1pt + black, right: 1pt + black), width: inner-width, height: inner-height, align(center + horizon, dot-elem)))))
}

#let grid-block(x, y, dot) = {
  let stroke = (top: 0pt, right: 0pt, bottom: 0pt, left: 0pt)
  if x == "top" {
    stroke.bottom = 1pt + black
  } else if x == "middle" {
    stroke.bottom = 1pt + black
    stroke.top = 1pt + black
  } else if x == "bottom" {
    stroke.top = 1pt + black
  } else if x == "none" {
    // no border
  } else {
    panic("unknown x: ", x)
  }

  if y == "left" {
    stroke.right = 1pt + black
  } else if y == "middle" {
    stroke.right = 1pt + black
    stroke.left = 1pt + black
  } else if y == "right" {
    stroke.left = 1pt + black
  } else if x == "none" {
    // no border
  } else {
    panic("unknown y: ", y)
  }

  let dot-elem = if dot {
    circle(radius: 0.2em, fill: black)
  } else {
    []
  }

  let base-size = 1.4em
  let width = base-size
  let height = base-size

  box(stroke: stroke, width: width, height: height, align(center + horizon, dot-elem))
}


#let cipher-lookup = (
  "a": (c: "a", elem: () => grid-block("top", "left", false), type: "grid"),
  "b": (c: "b", elem: () => grid-block("top", "middle", false), type: "grid"),
  "c": (c: "c", elem: () => grid-block("top", "right", false), type: "grid"),
  "d": (c: "d", elem: () => grid-block("middle", "left", false), type: "grid"),
  "e": (c: "e", elem: () => grid-block("middle", "middle", false), type: "grid"),
  "f": (c: "f", elem: () => grid-block("middle", "right", false), type: "grid"),
  "g": (c: "g", elem: () => grid-block("bottom", "left", false), type: "grid"),
  "h": (c: "h", elem: () => grid-block("bottom", "middle", false), type: "grid"),
  "i": (c: "i", elem: () => grid-block("bottom", "right", false), type: "grid"),

  "j": (c: "j", elem: () => grid-block("top", "left", true), type: "grid"),
  "k": (c: "k", elem: () => grid-block("top", "middle", true), type: "grid"),
  "l": (c: "l", elem: () => grid-block("top", "right", true), type: "grid"),
  "m": (c: "m", elem: () => grid-block("middle", "left", true), type: "grid"),
  "n": (c: "n", elem: () => grid-block("middle", "middle", true), type: "grid"),
  "o": (c: "o", elem: () => grid-block("middle", "right", true), type: "grid"),
  "p": (c: "p", elem: () => grid-block("bottom", "left", true), type: "grid"),
  "q": (c: "q", elem: () => grid-block("bottom", "middle", true), type: "grid"),
  "r": (c: "r", elem: () => grid-block("bottom", "right", true), type: "grid"),

  "s": (c: "s", elem: () => angled-block("top", false), type: "angle"),
  "t": (c: "t", elem: () => angled-block("right", false), type: "angle"),
  "u": (c: "u", elem: () => angled-block("bottom", false), type: "angle"),
  "v": (c: "v", elem: () => angled-block("left", false), type: "angle"),

  "w": (c: "w", elem: () => angled-block("top", true), type: "angle"),
  "x": (c: "x", elem: () => angled-block("right", true), type: "angle"),
  "y": (c: "y", elem: () => angled-block("bottom", true), type: "angle"),
  "z": (c: "z", elem: () => angled-block("left", true), type: "angle"),

  // " ": (elem: () => grid-block("none", "none", false), type: "space")
  " ": (elem: () => h(2em, weak: true), type: "space")

)

#let render-blocks(bs, solution: false) = {
  for b in bs [
    #if solution {
      box[
        #b.at("elem")()
        #place(top + left, text(fill: red, weight: "bold", b.at("c")))
      ]
    } else {
      b.at("elem")()
    }
  ]
}

#let grid-cipher(text, solution: false) = {
  let blocks = ()
  for w in lower(text).split(" ") {
    let word-blocks = ()
    for c in w {
      if cipher-lookup.at(c, default: none) != none {
        word-blocks.push(cipher-lookup.at(c))
      }
    }
    blocks.push(box[#render-blocks(word-blocks, solution: solution)])
    blocks.push(cipher-lookup.at(" ").at("elem")())
  }

  for b in blocks [
    #b
  ]

}


#text(size: 20pt, grid-cipher("ahoj jak se mas ja semmm mam dobre", solution: true))
