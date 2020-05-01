#!/usr/bin/env cwl-runner

baseCommand:
- download_mlst_databases
class: CommandLineTool
cwlVersion: v1.0
id: download_mlst_databases
inputs:
- doc: Config file containing details of MLST databases from pubMLST
  id: c
  inputBinding:
    prefix: -c
  type: string
- doc: Directory where MLST databases are stored [$MLST_DATABASES]
  id: b
  inputBinding:
    prefix: -b
  type: string
- doc: Print version number and exit
  id: v
  inputBinding:
    prefix: -v
  type: boolean
