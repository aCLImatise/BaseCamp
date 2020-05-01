#!/usr/bin/env cwl-runner

baseCommand:
- fs
class: CommandLineTool
cwlVersion: v1.0
id: fs
inputs:
- doc: ': Do the next things that are necessary to get a complete set of finestructure
    runs.'
  id: go
  inputBinding:
    prefix: -go
  type: boolean
- doc: ': Import some settings from an external file. If you need to set any non-trivial
    settings, this is the way to do it. See "fs -hh" for more details.'
  id: import
  inputBinding:
    prefix: -import
  type: File
- doc: ': Create an ID file from a PROVIDED phase file. Individuals are labelled IND1-IND<N>.'
  id: create_id
  inputBinding:
    prefix: -createid
  type: File
