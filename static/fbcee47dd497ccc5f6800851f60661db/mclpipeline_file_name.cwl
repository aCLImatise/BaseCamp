class: CommandLineTool
id: mclpipeline_file_name.cwl
inputs:
- id: in_parser
  doc: option is required
  type: string?
  inputBinding:
    prefix: --parser
- id: in_succeed_error_initialization
  doc: did not succeed, error in initialization part
  type: long?
  inputBinding:
    prefix: '-1'
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mclpipeline
- file-name
