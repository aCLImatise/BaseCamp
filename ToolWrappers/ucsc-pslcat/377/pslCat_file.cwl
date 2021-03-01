class: CommandLineTool
id: pslCat_file.cwl
inputs:
- id: in_match
  doc: match           count   bases   count   bases           name            size    start   end     name            size    start   end     count
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pslCat
- file
