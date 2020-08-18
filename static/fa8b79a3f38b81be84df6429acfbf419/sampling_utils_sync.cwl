class: CommandLineTool
id: ../../../sampling_utils_sync.cwl
inputs:
- id: master_file
  doc: Resampled FastQ file that is out of sync with the original pair  [required]
  type: File
  inputBinding:
    prefix: --master-file
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
