class: CommandLineTool
id: portcullis.cwl
inputs:
- id: in_print_extra_information
  doc: '[ --verbose ]      Print extra information'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_junctions
  doc: 'Usage: portcullis [options] <mode> <mode_args>'
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
- portcullis
