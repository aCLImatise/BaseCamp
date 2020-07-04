class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/vcf2dag.cwl
inputs:
- id: reference
  doc: FASTA reference file.
  type: File
  inputBinding:
    prefix: --reference
- id: vcf_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf2dag
