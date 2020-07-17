class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/vcf_shuffle_cols.cwl
inputs:
- id: template
  doc: The file with the correct order of the columns.
  type: File
  inputBinding:
    prefix: --template
- id: file_dot_vcf_do_tgz
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf-shuffle-cols
