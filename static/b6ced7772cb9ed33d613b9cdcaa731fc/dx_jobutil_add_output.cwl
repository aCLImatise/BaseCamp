class: CommandLineTool
id: ../../../dx_jobutil_add_output.cwl
inputs:
- id: in_class
  doc: "[CLASSNAME]  Class of output for formatting purposes, e.g. \"int\";\ndefault\
    \ \"auto\""
  type: boolean
  inputBinding:
    prefix: --class
- id: in_array
  doc: Output field is an array
  type: boolean
  inputBinding:
    prefix: --array
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dx-jobutil-add-output
