class: CommandLineTool
id: ../../../sampling_utils_sync.cwl
inputs:
- id: in_verbose
  doc: ''
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_master_file
  doc: "Resampled FastQ file that is out of sync with\nthe original pair  [required]"
  type: File
  inputBinding:
    prefix: --master-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_master_file
  doc: "Resampled FastQ file that is out of sync with\nthe original pair  [required]"
  type: File
  outputBinding:
    glob: $(inputs.in_master_file)
cwlVersion: v1.1
baseCommand:
- sampling-utils
- sync
