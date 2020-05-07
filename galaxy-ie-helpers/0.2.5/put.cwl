class: CommandLineTool
id: put.cwl
inputs:
- id: file_path
  doc: Specify the path to the files that should be uploaded to Galaxy.
  type: File[]
  inputBinding:
    prefix: --filepath
- id: file_type
  doc: Galaxy file format. If not specified Galaxy will try to guess the filetype
    automatically.
  type: File
  inputBinding:
    prefix: --filetype
- id: history_id
  doc: History ID. The history ID and the dataset ID uniquly identify a dataset. Per
    default this is set to the current Galaxy history.
  type: string
  inputBinding:
    prefix: --history-id
outputs: []
cwlVersion: v1.1
baseCommand:
- put
