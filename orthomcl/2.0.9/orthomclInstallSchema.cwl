#!/usr/bin/env cwl-runner

baseCommand:
- orthomclInstallSchema
class: CommandLineTool
cwlVersion: v1.0
id: orthomclinstallschema
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
- doc: ''
  id: table_suffix
  inputBinding:
    position: 2
  type: string
