version 1.0

task Potrace {
  input {
    Boolean? license
    File? write_output_file
    String? backend
    Boolean? eps
    Boolean? postscript
    Boolean? svg
    Boolean? pgm
    File? turn_policy
    Int? turd_size
    Int? alpha_max
    Boolean? long_curve
    Float? opt_tolerance
    Int? unit
    Int? debug
    Int? pagesize
    String? width
    String? height
    String? resolution
    String? scale
    String? stretch
    String? rotate
    String? margin
    String? left_margin
    String? rightmargin
    String? topmargin
    String? bottom_margin
    Boolean? tight
    Boolean? color
    Boolean? fillcolor
    Boolean? opaque
    Boolean? group
    Boolean? flat
    Boolean? cleartext
    Boolean? level_two
    Boolean? level_three
    Boolean? long_coding
    Float? gamma
    File? black_level
    Boolean? invert
    Boolean? progress
    Int? tty
    File? filename_dot_dot_dot
  }
  command <<<
    potrace \
      ~{filename_dot_dot_dot} \
      ~{if (license) then "--license" else ""} \
      ~{if defined(write_output_file) then ("--output " +  '"' + write_output_file + '"') else ""} \
      ~{if defined(backend) then ("--backend " +  '"' + backend + '"') else ""} \
      ~{if (eps) then "--eps" else ""} \
      ~{if (postscript) then "--postscript" else ""} \
      ~{if (svg) then "--svg" else ""} \
      ~{if (pgm) then "--pgm" else ""} \
      ~{if defined(turn_policy) then ("--turnpolicy " +  '"' + turn_policy + '"') else ""} \
      ~{if defined(turd_size) then ("--turdsize " +  '"' + turd_size + '"') else ""} \
      ~{if defined(alpha_max) then ("--alphamax " +  '"' + alpha_max + '"') else ""} \
      ~{if (long_curve) then "--longcurve" else ""} \
      ~{if defined(opt_tolerance) then ("--opttolerance " +  '"' + opt_tolerance + '"') else ""} \
      ~{if defined(unit) then ("--unit " +  '"' + unit + '"') else ""} \
      ~{if defined(debug) then ("--debug " +  '"' + debug + '"') else ""} \
      ~{if defined(pagesize) then ("--pagesize " +  '"' + pagesize + '"') else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if defined(height) then ("--height " +  '"' + height + '"') else ""} \
      ~{if defined(resolution) then ("--resolution " +  '"' + resolution + '"') else ""} \
      ~{if defined(scale) then ("--scale " +  '"' + scale + '"') else ""} \
      ~{if defined(stretch) then ("--stretch " +  '"' + stretch + '"') else ""} \
      ~{if defined(rotate) then ("--rotate " +  '"' + rotate + '"') else ""} \
      ~{if defined(margin) then ("--margin " +  '"' + margin + '"') else ""} \
      ~{if defined(left_margin) then ("--leftmargin " +  '"' + left_margin + '"') else ""} \
      ~{if defined(rightmargin) then ("--rightmargin " +  '"' + rightmargin + '"') else ""} \
      ~{if defined(topmargin) then ("--topmargin " +  '"' + topmargin + '"') else ""} \
      ~{if defined(bottom_margin) then ("--bottommargin " +  '"' + bottom_margin + '"') else ""} \
      ~{if (tight) then "--tight" else ""} \
      ~{if (color) then "--color" else ""} \
      ~{if (fillcolor) then "--fillcolor" else ""} \
      ~{if (opaque) then "--opaque" else ""} \
      ~{if (group) then "--group" else ""} \
      ~{if (flat) then "--flat" else ""} \
      ~{if (cleartext) then "--cleartext" else ""} \
      ~{if (level_two) then "--level2" else ""} \
      ~{if (level_three) then "--level3" else ""} \
      ~{if (long_coding) then "--longcoding" else ""} \
      ~{if defined(gamma) then ("--gamma " +  '"' + gamma + '"') else ""} \
      ~{if defined(black_level) then ("--blacklevel " +  '"' + black_level + '"') else ""} \
      ~{if (invert) then "--invert" else ""} \
      ~{if (progress) then "--progress" else ""} \
      ~{if defined(tty) then ("--tty " +  '"' + tty + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    license: "- print license info and exit"
    write_output_file: "- write all output to this file"
    backend: "- select backend by name"
    eps: "- EPS backend (encapsulated PostScript) (default)"
    postscript: "- PostScript backend"
    svg: "- SVG backend (scalable vector graphics)"
    pgm: "- PGM backend (portable greymap)"
    turn_policy: "- how to resolve ambiguities in path decomposition"
    turd_size: "- suppress speckles of up to this size (default 2)"
    alpha_max: "- corner threshold parameter (default 1)"
    long_curve: "- turn off curve optimization"
    opt_tolerance: "- curve optimization tolerance (default 0.2)"
    unit: "- quantize output to 1/unit pixels (default 10)"
    debug: "- produce debugging output of type n (n=1,2,3)"
    pagesize: "- page size (default is letter)"
    width: "- width of output image"
    height: "- height of output image"
    resolution: "[x<n>] - resolution (in dpi) (dimension-based backends)"
    scale: "[x<n>]      - scaling factor (pixel-based backends)"
    stretch: "- yresolution/xresolution"
    rotate: "- rotate counterclockwise by angle"
    margin: "- margin"
    left_margin: "- left margin"
    rightmargin: "- right margin"
    topmargin: "- top margin"
    bottom_margin: "- bottom margin"
    tight: "- remove whitespace around the input image"
    color: "#rrggbb        - set foreground color (default black)"
    fillcolor: "#rrggbb        - set fill color (default transparent)"
    opaque: "- make white shapes opaque"
    group: "- group related paths together"
    flat: "- whole image as a single path"
    cleartext: "- do not compress the output"
    level_two: "- use postscript level 2 compression (default)"
    level_three: "- use postscript level 3 compression"
    long_coding: "- do not optimize for file size"
    gamma: "- gamma value for anti-aliasing (default 2.2)"
    black_level: "- black/white cutoff in input file (default 0.5)"
    invert: "- invert bitmap"
    progress: "- show progress bar"
    tty: "- progress bar rendering: vt100 or dumb"
    filename_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
    File out_write_output_file = "${in_write_output_file}"
  }
}