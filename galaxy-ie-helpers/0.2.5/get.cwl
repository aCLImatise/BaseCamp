class: CommandLineTool
id: ../../../get.cwl
inputs:
- id: id
  doc: The dataset ID/name from your Galaxy history, or a regex pattern to search
    all files in the history
  type: string[]
  inputBinding:
    prefix: --id
- id: identifier_type
  doc: Type of the argument File/ID Number. Per default, integer ID number. If a pattern
    is specified in the -i argument, then this argument should be set to "regex"
  type: string
  inputBinding:
    prefix: --identifier_type
- id: history_id
  doc: History ID. The history ID and the dataset ID uniquly identify a dataset. Per
    default this is set to the current Galaxy history.
  type: string
  inputBinding:
    prefix: --history-id
outputs: []
cwlVersion: v1.1
baseCommand:
- get
