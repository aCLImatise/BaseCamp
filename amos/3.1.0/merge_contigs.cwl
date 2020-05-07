class: CommandLineTool
id: merge_contigs.cwl
inputs:
- id: a
  doc: Output the <out-prefix>.mali file
  type: boolean
  inputBinding:
    prefix: -a
outputs: []
cwlVersion: v1.1
baseCommand:
- merge-contigs
