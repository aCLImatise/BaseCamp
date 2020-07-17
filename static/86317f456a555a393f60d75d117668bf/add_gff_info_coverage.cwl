class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/add_gff_info_coverage.cwl
inputs:
- id: sample_alignment
  doc: sample name and correspondent alignment file separated by comma  [required]
  type: string
  inputBinding:
    prefix: --sample-alignment
- id: input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- add-gff-info
- coverage
