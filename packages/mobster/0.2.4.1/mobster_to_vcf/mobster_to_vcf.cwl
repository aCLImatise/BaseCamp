class: CommandLineTool
id: mobster_to_vcf.cwl
inputs:
- id: in_mobster_to_vcf
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mobster-to-vcf
