class: CommandLineTool
id: potrace.cwl
inputs:
- id: filename
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: license
  doc: '- print license info and exit'
  type: boolean
  inputBinding:
    prefix: --license
- id: backend
  doc: '- select backend by name'
  type: string
  inputBinding:
    prefix: --backend
- id: eps
  doc: '- EPS backend (encapsulated PostScript) (default)'
  type: boolean
  inputBinding:
    prefix: --eps
- id: postscript
  doc: '- PostScript backend'
  type: boolean
  inputBinding:
    prefix: --postscript
- id: svg
  doc: '- SVG backend (scalable vector graphics)'
  type: boolean
  inputBinding:
    prefix: --svg
- id: pgm
  doc: '- PGM backend (portable greymap)'
  type: boolean
  inputBinding:
    prefix: --pgm
- id: b
  doc: '- PDF backend (portable document format)'
  type: string
  inputBinding:
    prefix: -b
- id: b
  doc: '- fixed page-size PDF backend'
  type: string
  inputBinding:
    prefix: -b
- id: b
  doc: '- DXF backend (drawing interchange format)'
  type: string
  inputBinding:
    prefix: -b
- id: b
  doc: '- GeoJSON backend'
  type: string
  inputBinding:
    prefix: -b
- id: b
  doc: '- Gimppath backend (GNU Gimp)'
  type: string
  inputBinding:
    prefix: -b
- id: b
  doc: '- XFig backend'
  type: string
  inputBinding:
    prefix: -b
- id: turn_policy
  doc: resolve ambiguities in path decomposition
  type: string
  inputBinding:
    prefix: --turnpolicy
- id: turd_size
  doc: '- suppress speckles of up to this size (default 2)'
  type: string
  inputBinding:
    prefix: --turdsize
- id: alpha_max
  doc: '- corner threshold parameter (default 1)'
  type: string
  inputBinding:
    prefix: --alphamax
- id: long_curve
  doc: '- turn off curve optimization'
  type: boolean
  inputBinding:
    prefix: --longcurve
- id: opt_tolerance
  doc: '- curve optimization tolerance (default 0.2)'
  type: string
  inputBinding:
    prefix: --opttolerance
- id: unit
  doc: '- quantize output to 1/unit pixels (default 10)'
  type: string
  inputBinding:
    prefix: --unit
- id: debug
  doc: '- produce debugging output of type n (n=1,2,3)'
  type: string
  inputBinding:
    prefix: --debug
- id: pagesize
  doc: '- page size (default is letter)'
  type: string
  inputBinding:
    prefix: --pagesize
- id: width
  doc: '- width of output image'
  type: string
  inputBinding:
    prefix: --width
- id: height
  doc: '- height of output image'
  type: string
  inputBinding:
    prefix: --height
- id: resolution
  doc: '[x<n>] - resolution (in dpi) (dimension-based backends)'
  type: string
  inputBinding:
    prefix: --resolution
- id: scale
  doc: '[x<n>]      - scaling factor (pixel-based backends)'
  type: string
  inputBinding:
    prefix: --scale
- id: stretch
  doc: '- yresolution/xresolution'
  type: string
  inputBinding:
    prefix: --stretch
- id: rotate
  doc: '- rotate counterclockwise by angle'
  type: string
  inputBinding:
    prefix: --rotate
- id: margin
  doc: '- margin'
  type: string
  inputBinding:
    prefix: --margin
- id: left_margin
  doc: '- left margin'
  type: string
  inputBinding:
    prefix: --leftmargin
- id: rightmargin
  doc: '- right margin'
  type: string
  inputBinding:
    prefix: --rightmargin
- id: topmargin
  doc: '- top margin'
  type: string
  inputBinding:
    prefix: --topmargin
- id: bottom_margin
  doc: '- bottom margin'
  type: string
  inputBinding:
    prefix: --bottommargin
- id: tight
  doc: '- remove whitespace around the input image'
  type: boolean
  inputBinding:
    prefix: --tight
- id: color
  doc: '#rrggbb        - set foreground color (default black)'
  type: boolean
  inputBinding:
    prefix: --color
- id: fillcolor
  doc: '#rrggbb        - set fill color (default transparent)'
  type: boolean
  inputBinding:
    prefix: --fillcolor
- id: opaque
  doc: '- make white shapes opaque'
  type: boolean
  inputBinding:
    prefix: --opaque
- id: group
  doc: '- group related paths together'
  type: boolean
  inputBinding:
    prefix: --group
- id: flat
  doc: '- whole image as a single path'
  type: boolean
  inputBinding:
    prefix: --flat
- id: long_coding
  doc: '- do not optimize for file size'
  type: boolean
  inputBinding:
    prefix: --longcoding
- id: gamma
  doc: '- gamma value for anti-aliasing (default 2.2)'
  type: string
  inputBinding:
    prefix: --gamma
- id: black_level
  doc: '- black/white cutoff in input file (default 0.5)'
  type: string
  inputBinding:
    prefix: --blacklevel
- id: invert
  doc: '- invert bitmap'
  type: boolean
  inputBinding:
    prefix: --invert
- id: progress
  doc: '- show progress bar'
  type: boolean
  inputBinding:
    prefix: --progress
- id: tty
  doc: '- progress bar rendering: vt100 or dumb'
  type: string
  inputBinding:
    prefix: --tty
outputs: []
cwlVersion: v1.1
baseCommand:
- potrace
