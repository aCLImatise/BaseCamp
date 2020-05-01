#!/usr/bin/env cwl-runner

baseCommand:
- kneaddata_database
class: CommandLineTool
cwlVersion: v1.0
id: kneaddata_database
inputs:
- doc: print the available databases
  id: available
  inputBinding:
    prefix: --available
  type: boolean
- doc: <build> <install_location> download the selected database to the install location
  id: download
  inputBinding:
    prefix: --download
  type: string
