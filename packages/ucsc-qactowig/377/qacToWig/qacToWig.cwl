class: CommandLineTool
id: ../../../qacToWig.cwl
inputs:
- id: in_name
  doc: restrict output to just this sequence name
  type: string
  inputBinding:
    prefix: -name
- id: in_fixed
  doc: output single file with wig headers and fixed step size
  type: boolean
  inputBinding:
    prefix: -fixed
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- qacToWig
