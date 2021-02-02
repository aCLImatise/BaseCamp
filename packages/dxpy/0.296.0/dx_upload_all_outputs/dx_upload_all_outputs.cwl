class: CommandLineTool
id: dx_upload_all_outputs.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dx-upload-all-outputs
