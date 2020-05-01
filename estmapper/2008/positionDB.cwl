#!/usr/bin/env cwl-runner

baseCommand:
- positionDB
class: CommandLineTool
cwlVersion: v1.0
id: positiondb
inputs:
- doc: a silly test and you shouldn't do it.
  id: this
  inputBinding:
    prefix: -- This
  type: string
