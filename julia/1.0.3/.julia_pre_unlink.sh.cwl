class: CommandLineTool
id: ../../../.julia_pre_unlink.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- .julia-pre-unlink.sh
