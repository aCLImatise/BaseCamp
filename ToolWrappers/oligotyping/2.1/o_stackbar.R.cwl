class: CommandLineTool
id: o_stackbar.R.cwl
inputs:
- id: in_output_file_prefix
  doc: Output file prefix for visualization files [default "unknown"]
  type: File?
  inputBinding:
    prefix: --output_file_prefix
- id: in_colors_file
  doc: Colors file
  type: File?
  inputBinding:
    prefix: --colors_file
- id: in_title
  doc: Title for the output figure [default '(unknown title)']
  type: string?
  inputBinding:
    prefix: --title
- id: in_legend_pos
  doc: Legend pos [default 'none']
  type: string?
  inputBinding:
    prefix: --legend_pos
- id: in_stack_bardot_r
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_environment_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_prefix
  doc: Output file prefix for visualization files [default "unknown"]
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_prefix)
hints: []
cwlVersion: v1.1
baseCommand:
- o-stackbar.R
