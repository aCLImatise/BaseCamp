class: CommandLineTool
id: vcf_shuffle_cols.cwl
inputs:
- id: template
  doc: The file with the correct order of the columns.
  type: File
  inputBinding:
    prefix: --template
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf-shuffle-cols
