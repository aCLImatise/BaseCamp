class: CommandLineTool
id: cmp.cwl
inputs:
- id: in_print_bytes
  doc: print differing bytes
  type: boolean?
  inputBinding:
    prefix: --print-bytes
- id: in_verbose
  doc: output byte numbers and differing byte values
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_bytes
  doc: compare at most LIMIT bytes
  type: string?
  inputBinding:
    prefix: --bytes
- id: in_silent
  doc: suppress all normal output
  type: boolean?
  inputBinding:
    prefix: --silent
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cmp
