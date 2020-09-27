class: CommandLineTool
id: hmm_info.cwl
inputs:
- id: in_models
  doc: "-general\n-durations <length>\n"
  type: boolean
  inputBinding:
    prefix: -models
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hmm-info
