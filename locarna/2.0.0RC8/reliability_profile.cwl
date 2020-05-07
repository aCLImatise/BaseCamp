class: CommandLineTool
id: reliability_profile.pl.cwl
inputs:
- id: loca_rna_output_dir
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- reliability-profile.pl
