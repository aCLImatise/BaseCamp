class: CommandLineTool
id: ../../../fc_gen_gfa_v1.cwl
inputs:
- id: collected_gfa
  doc: Path to the file with collected and formatted data for generating the GFA
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- fc_gen_gfa_v1
