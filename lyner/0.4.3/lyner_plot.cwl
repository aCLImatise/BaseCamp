class: CommandLineTool
id: ../../../lyner_plot.cwl
inputs:
- id: in_outfile
  doc: ''
  type: File
  inputBinding:
    prefix: --outfile
- id: in_directory
  doc: ''
  type: Directory
  inputBinding:
    prefix: --directory
- id: in_with_annotation
  doc: ''
  type: boolean
  inputBinding:
    prefix: --with-annotation
- id: in_annotation_split
  doc: RANGE
  type: double
  inputBinding:
    prefix: --annotation-split
- id: in_color_scale
  doc: '[Greys|YlGnBu|Greens|YlOrRed|Bluered|RdBu|Reds|Blues|Picnic|Rainbow|Portland|Jet|Hot|Blackbody|Earth|Electric|Viridis|Cividis]'
  type: boolean
  inputBinding:
    prefix: --colorscale
- id: in_mode
  doc: ''
  type: string
  inputBinding:
    prefix: --mode
- id: in_mode_config
  doc: ''
  type: string
  inputBinding:
    prefix: --mode-config
- id: in_auto_open
  doc: ''
  type: boolean
  inputBinding:
    prefix: --auto-open
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- lyner
- plot
