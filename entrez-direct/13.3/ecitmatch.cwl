#!/usr/bin/env cwl-runner

baseCommand:
- ecitmatch
class: CommandLineTool
cwlVersion: v1.0
id: ecitmatch
inputs:
- doc: Journal Title
  id: journal
  inputBinding:
    prefix: -journal
  type: boolean
- doc: Year
  id: year
  inputBinding:
    prefix: -year
  type: boolean
- doc: Volume
  id: volume
  inputBinding:
    prefix: -volume
  type: boolean
- doc: First Page
  id: page
  inputBinding:
    prefix: -page
  type: boolean
- doc: Author Name
  id: author
  inputBinding:
    prefix: -author
  type: boolean
