class: CommandLineTool
id: vcf2dag.cwl
inputs:
- id: vcf_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: reference
  doc: FASTA reference file.
  type: File
  inputBinding:
    prefix: --reference
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf2dag
