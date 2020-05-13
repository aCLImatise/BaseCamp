class: CommandLineTool
id: o_stackbar.R.cwl
inputs:
- id: stack_barr
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: environment_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_file_prefix
  doc: Output file prefix for visualization files [default "unknown"]
  type: string
  inputBinding:
    prefix: --output_file_prefix
- id: colors_file
  doc: Colors file
  type: string
  inputBinding:
    prefix: --colors_file
- id: title
  doc: Title for the output figure [default '(unknown title)']
  type: string
  inputBinding:
    prefix: --title
- id: legend_pos
  doc: Legend pos [default 'none']
  type: string
  inputBinding:
    prefix: --legend_pos
outputs: []
cwlVersion: v1.1
baseCommand:
- o-stackbar.R
