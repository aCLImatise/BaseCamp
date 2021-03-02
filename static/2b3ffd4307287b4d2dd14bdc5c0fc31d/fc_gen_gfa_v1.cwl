class: CommandLineTool
id: fc_gen_gfa_v1.cwl
inputs:
- id: in_collected_gfa
  doc: Path to the file with collected and formatted data for generating the GFA
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fc_gen_gfa_v1
