#!/usr/bin/env cwl-runner

baseCommand:
- dbletters
class: CommandLineTool
cwlVersion: v1.0
id: dbletters
inputs:
- doc: '[-db seq_filen]*     one or more sequence files'
  id: db
  inputBinding:
    prefix: -db
  type: string
