class: CommandLineTool
id: get_user_history.cwl
inputs:
- id: history_id
  doc: History ID. The history ID and the dataset ID uniquly identify a dataset. Per
    default this is set to the current Galaxy history.
  type: string
  inputBinding:
    prefix: --history-id
outputs: []
cwlVersion: v1.1
baseCommand:
- get_user_history
