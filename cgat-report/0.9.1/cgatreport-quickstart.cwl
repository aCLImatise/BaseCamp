#!/usr/bin/env cwl-runner

baseCommand:
- cgatreport-quickstart
class: CommandLineTool
cwlVersion: v1.0
id: cgatreport-quickstart
inputs:
- doc: destination directory.
  id: dest
  inputBinding:
    prefix: --dest
  type: string
