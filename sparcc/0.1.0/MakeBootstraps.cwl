class: CommandLineTool
id: MakeBootstraps.py.cwl
inputs:
- id: make
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: n
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: simulated
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: datasets
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: used
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: to
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: get
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: pseudo
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: p_values
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: n
  doc: Number of simulated datasets to create (100 default).
  type: string
  inputBinding:
    prefix: -n
- id: template
  doc: "The template for the permuted data file names. Should not include the path,\
    \ which is specified using the -p option. The iteration number is indicated with\
    \ a \"#\". For example: 'permuted/counts.permuted_#.txt'If not provided a '.permuted_#.txt'\
    \ suffix will be added to the counts file name."
  type: string
  inputBinding:
    prefix: --template
- id: path
  doc: The path to which permuted data will be written. If not provided files will
    be written to the cwd.
  type: string
  inputBinding:
    prefix: --path
outputs: []
cwlVersion: v1.1
baseCommand:
- MakeBootstraps.py
