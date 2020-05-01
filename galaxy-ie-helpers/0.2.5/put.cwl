#!/usr/bin/env cwl-runner

baseCommand:
- put
class: CommandLineTool
cwlVersion: v1.0
id: put
inputs:
- doc: Specify the path to the files that should be uploaded to Galaxy.
  id: file_path
  inputBinding:
    prefix: --filepath
  type:
    items: File
    type: array
- doc: Galaxy file format. If not specified Galaxy will try to guess the filetype
    automatically.
  id: file_type
  inputBinding:
    prefix: --filetype
  type: File
- doc: History ID. The history ID and the dataset ID uniquly identify a dataset. Per
    default this is set to the current Galaxy history.
  id: history_id
  inputBinding:
    prefix: --history-id
  type: string
