class: CommandLineTool
id: ../../../summarize_sample_GFF_junctions.py_output_prefix.cwl
inputs:
- id: summarize_sample_gff_junctions_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: config
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_prefix
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- summarize_sample_GFF_junctions.py
- output_prefix
