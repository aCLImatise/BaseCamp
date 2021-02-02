class: CommandLineTool
id: MergeScaffoldsBySynteny.cwl
inputs:
- id: in_string_input_summary
  doc: '<string> : input file (satsuma summary)'
  type: boolean
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- MergeScaffoldsBySynteny
