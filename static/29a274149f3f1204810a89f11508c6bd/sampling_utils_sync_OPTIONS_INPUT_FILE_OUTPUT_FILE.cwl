class: CommandLineTool
id: sampling_utils_sync_OPTIONS_INPUT_FILE_OUTPUT_FILE.cwl
inputs:
- id: master_file
  doc: Resampled FastQ file that is out of sync with the original pair  [required]
  type: File
  inputBinding:
    prefix: --master-file
outputs: []
cwlVersion: v1.1
baseCommand:
- sampling-utils
- sync
- OPTIONS
- INPUT_FILE
- OUTPUT_FILE
