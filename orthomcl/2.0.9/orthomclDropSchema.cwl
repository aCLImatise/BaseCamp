#!/usr/bin/env cwl-runner

baseCommand:
- orthomclDropSchema
class: CommandLineTool
cwlVersion: v1.0
id: orthomcldropschema
inputs:
- doc: ''
  id: config_file
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: sql_log_file
  inputBinding:
    position: 1
  type: string
