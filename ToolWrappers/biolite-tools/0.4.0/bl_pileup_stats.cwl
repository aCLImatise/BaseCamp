class: CommandLineTool
id: bl_pileup_stats.cwl
inputs:
- id: in_specify_input_file
  doc: specify the PILEUP input file
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_specify_output_file
  doc: specify the HIST output file
  type: File?
  inputBinding:
    prefix: -o
- id: in_specify_min_default
  doc: 'specify the min OVERLAP (default: 0)'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_pile_up_stats
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_specify_output_file
  doc: specify the HIST output file
  type: File?
  outputBinding:
    glob: $(inputs.in_specify_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- bl-pileup-stats
