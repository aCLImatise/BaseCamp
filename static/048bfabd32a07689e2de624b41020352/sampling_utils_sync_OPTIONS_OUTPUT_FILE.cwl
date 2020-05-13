class: CommandLineTool
id: sampling_utils_sync_OPTIONS_OUTPUT_FILE.cwl
inputs:
- id: input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- sampling-utils
- sync
- OPTIONS
- OUTPUT_FILE
