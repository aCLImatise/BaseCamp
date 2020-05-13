class: CommandLineTool
id: ceqlogo.cwl
inputs:
- id: i
  doc: Loads motifs within the file as specified by the following -m options.
  type: string
  inputBinding:
    prefix: -i
- id: i
  doc: <id/n> <input filename>  Loads the specified motif (n-th position or ID) within
    the file. Can also be combined with the -m option.
  type: boolean
  inputBinding:
    prefix: -i
- id: m
  doc: <id/n>                  Loads a motif from the file specified by the previous
    -i option. The motif ID or position can be used.
  type: boolean
  inputBinding:
    prefix: -m
- id: n
  doc: Number of samples for previously loaded motif (-m or -i).
  type: string
  inputBinding:
    prefix: -n
- id: s
  doc: Shift for previously loaded motif (-m or -i).
  type: string
  inputBinding:
    prefix: -s
- id: r
  doc: Reverse complement previously loaded motif (-m or -i).
  type: boolean
  inputBinding:
    prefix: -r
- id: p
  doc: 'Pseudocounts for loaded motifs; default: 0.'
  type: string
  inputBinding:
    prefix: -p
- id: l
  doc: 'Prefentially lookup motifs by position; default: prefer the ID.'
  type: boolean
  inputBinding:
    prefix: -l
- id: o
  doc: Output file path. Default is stdout.
  type: string
  inputBinding:
    prefix: -o
- id: f
  doc: 'Format of output (EPS, PNG); default: EPS'
  type: string
  inputBinding:
    prefix: -f
- id: h
  doc: 'Height of output logo in cm (real # > 0).'
  type: string
  inputBinding:
    prefix: -h
- id: w
  doc: 'Width of output logo in cm (real # > 0).'
  type: string
  inputBinding:
    prefix: -w
- id: t
  doc: Label for title.
  type: string
  inputBinding:
    prefix: -t
- id: d
  doc: Descriptive fine print.
  type: string
  inputBinding:
    prefix: -d
- id: x
  doc: Label for x-axis.
  type: string
  inputBinding:
    prefix: -x
- id: y
  doc: 'Label for y-axis; default: "bits".'
  type: string
  inputBinding:
    prefix: -y
- id: c
  doc: Number of bits between tic marks.
  type: string
  inputBinding:
    prefix: -c
- id: e
  doc: 'Fraction of error bar to show (real # > 0).'
  type: string
  inputBinding:
    prefix: -e
- id: s
  doc: '...................   Turn on small sample correction.'
  type: boolean
  inputBinding:
    prefix: -S
- id: b
  doc: '...................   Turn on bar ends.'
  type: boolean
  inputBinding:
    prefix: -B
- id: e
  doc: '...................   Turn on error bars.'
  type: boolean
  inputBinding:
    prefix: -E
- id: o
  doc: '...................   Turn on outlining of characters.'
  type: boolean
  inputBinding:
    prefix: -O
- id: x
  doc: '...................   Turn on boxing of characters  '
  type: boolean
  inputBinding:
    prefix: -X
- id: n
  doc: '...................   Turn off numbering of x-axis.'
  type: boolean
  inputBinding:
    prefix: -N
- id: y
  doc: '...................   Turn off y-axis '
  type: boolean
  inputBinding:
    prefix: -Y
outputs: []
cwlVersion: v1.1
baseCommand:
- ceqlogo
