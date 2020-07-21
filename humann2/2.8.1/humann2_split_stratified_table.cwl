class: CommandLineTool
id: ../../../humann2_split_stratified_table.cwl
inputs:
- id: input
  doc: the stratified input table (tsv, tsv.gzip, tsv.bzip2, or biom format)
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: the output folder
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- humann2_split_stratified_table
