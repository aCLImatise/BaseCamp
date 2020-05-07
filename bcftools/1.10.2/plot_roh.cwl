class: CommandLineTool
id: plot_roh.py.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: dir
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: highlight
  doc: +group1,-group2       Highlight calls shared within group1 but not present
    in group2
  type: boolean
  inputBinding:
    prefix: --highlight
- id: interactive
  doc: Run interactively
  type: boolean
  inputBinding:
    prefix: --interactive
- id: min_length
  doc: Filter input regions shorter than this [0]
  type: string
  inputBinding:
    prefix: --min-length
- id: min_markers
  doc: Filter input regions with fewer marker than this [0]
  type: string
  inputBinding:
    prefix: --min-markers
- id: outfile
  doc: Output file name [plot.png]
  type: File
  inputBinding:
    prefix: --outfile
- id: min_qual
  doc: Filter input regions with quality smaller than this [0]
  type: string
  inputBinding:
    prefix: --min-qual
- id: region
  doc: '[^]<chr|chr:beg-end>     Plot this chromosome/region only'
  type: boolean
  inputBinding:
    prefix: --region
- id: samples
  doc: 'List of samples to show, rename or group: "name[\tnew_name[\tgroup]]"'
  type: File
  inputBinding:
    prefix: --samples
outputs: []
cwlVersion: v1.1
baseCommand:
- plot-roh.py
