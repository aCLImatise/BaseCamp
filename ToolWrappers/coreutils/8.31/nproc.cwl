class: CommandLineTool
id: nproc.cwl
inputs:
- id: in_all
  doc: print the number of installed processors
  type: boolean?
  inputBinding:
    prefix: --all
- id: in_ignore
  doc: if possible, exclude N processing units
  type: string?
  inputBinding:
    prefix: --ignore
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- nproc
