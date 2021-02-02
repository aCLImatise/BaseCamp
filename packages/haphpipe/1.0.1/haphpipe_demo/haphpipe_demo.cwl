class: CommandLineTool
id: haphpipe_demo.cwl
inputs:
- id: in_outdir
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
- haphpipe_demo
