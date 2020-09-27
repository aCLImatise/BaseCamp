class: CommandLineTool
id: vcf2dag.cwl
inputs:
- id: in_reference
  doc: FASTA reference file.
  type: File
  inputBinding:
    prefix: --reference
- id: in_vcf_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- vcf2dag
