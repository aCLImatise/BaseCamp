#!/usr/bin/env cwl-runner

baseCommand:
- get_user_history
class: CommandLineTool
cwlVersion: v1.0
id: get_user_history
inputs:
- doc: History ID. The history ID and the dataset ID uniquly identify a dataset. Per
    default this is set to the current Galaxy history.
  id: history_id
  inputBinding:
    prefix: --history-id
  type: string
