class: CommandLineTool
id: rdf2dot.cwl
inputs:
- id: in_parser_use_given
  doc: parser to use, if not given,
  type: string?
  inputBinding:
    prefix: -f
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rdf2dot
