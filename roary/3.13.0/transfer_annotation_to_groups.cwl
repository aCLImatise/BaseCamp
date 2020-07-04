class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/transfer_annotation_to_groups.cwl
inputs:
- id: output_filename
  doc: output filename [reannotated_groups]
  type: string
  inputBinding:
    prefix: -o
- id: clusters_filename
  doc: clusters filename [clustered_proteins]
  type: string
  inputBinding:
    prefix: -g
- id: verbose_output_stdout
  doc: verbose output to STDOUT
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- transfer_annotation_to_groups
