class: CommandLineTool
id: NanoSplit_fastqfile.cwl
inputs:
- id: in_outdir
  doc: ''
  type: string?
  inputBinding:
    prefix: --outdir
- id: in_q
  doc: ''
  type: string?
  inputBinding:
    prefix: -q
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- NanoSplit
- fastqfile
