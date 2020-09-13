class: CommandLineTool
id: ../../../vcfqual2info.cwl
inputs:
- id: in_key
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_vcf_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- vcfqual2info
