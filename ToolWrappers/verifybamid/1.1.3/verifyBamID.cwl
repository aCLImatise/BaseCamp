class: CommandLineTool
id: verifyBamID.cwl
inputs:
- id: in_vcf
  doc: '[vcf file] required'
  type: boolean
  inputBinding:
    prefix: --vcf
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- verifyBamID
