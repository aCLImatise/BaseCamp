class: CommandLineTool
id: potrace.cwl
inputs:
- id: in_license
  doc: '- print license info and exit'
  type: boolean
  inputBinding:
    prefix: --license
- id: in_output
  doc: '- write all output to this file'
  type: File
  inputBinding:
    prefix: --output
- id: in_backend
  doc: '- select backend by name'
  type: string
  inputBinding:
    prefix: --backend
- id: in_eps
  doc: '- EPS backend (encapsulated PostScript) (default)'
  type: boolean
  inputBinding:
    prefix: --eps
- id: in_postscript
  doc: '- PostScript backend'
  type: boolean
  inputBinding:
    prefix: --postscript
- id: in_svg
  doc: '- SVG backend (scalable vector graphics)'
  type: boolean
  inputBinding:
    prefix: --svg
- id: in_pgm
  doc: '- PGM backend (portable greymap)'
  type: boolean
  inputBinding:
    prefix: --pgm
- id: in_turn_policy
  doc: '- how to resolve ambiguities in path decomposition'
  type: File
  inputBinding:
    prefix: --turnpolicy
- id: in_turd_size
  doc: '- suppress speckles of up to this size (default 2)'
  type: long
  inputBinding:
    prefix: --turdsize
- id: in_alpha_max
  doc: '- corner threshold parameter (default 1)'
  type: long
  inputBinding:
    prefix: --alphamax
- id: in_long_curve
  doc: '- turn off curve optimization'
  type: boolean
  inputBinding:
    prefix: --longcurve
- id: in_opt_tolerance
  doc: '- curve optimization tolerance (default 0.2)'
  type: double
  inputBinding:
    prefix: --opttolerance
- id: in_unit
  doc: '- quantize output to 1/unit pixels (default 10)'
  type: long
  inputBinding:
    prefix: --unit
- id: in_debug
  doc: '- produce debugging output of type n (n=1,2,3)'
  type: long
  inputBinding:
    prefix: --debug
- id: in_pagesize
  doc: '- page size (default is letter)'
  type: long
  inputBinding:
    prefix: --pagesize
- id: in_width
  doc: '- width of output image'
  type: string
  inputBinding:
    prefix: --width
- id: in_height
  doc: '- height of output image'
  type: string
  inputBinding:
    prefix: --height
- id: in_resolution
  doc: '[x<n>] - resolution (in dpi) (dimension-based backends)'
  type: string
  inputBinding:
    prefix: --resolution
- id: in_scale
  doc: '[x<n>]      - scaling factor (pixel-based backends)'
  type: string
  inputBinding:
    prefix: --scale
- id: in_stretch
  doc: '- yresolution/xresolution'
  type: string
  inputBinding:
    prefix: --stretch
- id: in_rotate
  doc: '- rotate counterclockwise by angle'
  type: string
  inputBinding:
    prefix: --rotate
- id: in_margin
  doc: '- margin'
  type: string
  inputBinding:
    prefix: --margin
- id: in_left_margin
  doc: '- left margin'
  type: string
  inputBinding:
    prefix: --leftmargin
- id: in_rightmargin
  doc: '- right margin'
  type: string
  inputBinding:
    prefix: --rightmargin
- id: in_topmargin
  doc: '- top margin'
  type: string
  inputBinding:
    prefix: --topmargin
- id: in_bottom_margin
  doc: '- bottom margin'
  type: string
  inputBinding:
    prefix: --bottommargin
- id: in_tight
  doc: '- remove whitespace around the input image'
  type: boolean
  inputBinding:
    prefix: --tight
- id: in_color
  doc: '#rrggbb        - set foreground color (default black)'
  type: boolean
  inputBinding:
    prefix: --color
- id: in_fillcolor
  doc: '#rrggbb        - set fill color (default transparent)'
  type: boolean
  inputBinding:
    prefix: --fillcolor
- id: in_opaque
  doc: '- make white shapes opaque'
  type: boolean
  inputBinding:
    prefix: --opaque
- id: in_group
  doc: '- group related paths together'
  type: boolean
  inputBinding:
    prefix: --group
- id: in_flat
  doc: '- whole image as a single path'
  type: boolean
  inputBinding:
    prefix: --flat
- id: in_cleartext
  doc: '- do not compress the output'
  type: boolean
  inputBinding:
    prefix: --cleartext
- id: in_level_two
  doc: '- use postscript level 2 compression (default)'
  type: boolean
  inputBinding:
    prefix: --level2
- id: in_level_three
  doc: '- use postscript level 3 compression'
  type: boolean
  inputBinding:
    prefix: --level3
- id: in_long_coding
  doc: '- do not optimize for file size'
  type: boolean
  inputBinding:
    prefix: --longcoding
- id: in_gamma
  doc: '- gamma value for anti-aliasing (default 2.2)'
  type: double
  inputBinding:
    prefix: --gamma
- id: in_black_level
  doc: '- black/white cutoff in input file (default 0.5)'
  type: File
  inputBinding:
    prefix: --blacklevel
- id: in_invert
  doc: '- invert bitmap'
  type: boolean
  inputBinding:
    prefix: --invert
- id: in_progress
  doc: '- show progress bar'
  type: boolean
  inputBinding:
    prefix: --progress
- id: in_tty
  doc: '- progress bar rendering: vt100 or dumb'
  type: long
  inputBinding:
    prefix: --tty
- id: in_filename_dot_dot_dot
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: '- write all output to this file'
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- potrace
