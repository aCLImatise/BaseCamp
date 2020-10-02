class: CommandLineTool
id: hs_blastn.cwl
inputs:
- id: in_or
  doc: hs-blastn align -help
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hs-blastn
