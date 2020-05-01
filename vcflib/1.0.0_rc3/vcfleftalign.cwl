#!/usr/bin/env cwl-runner

baseCommand:
- vcfleftalign
class: CommandLineTool
cwlVersion: v1.0
id: vcfleftalign
inputs:
- doc: ''
  id: file
  inputBinding:
    position: 0
  type: File
- doc: Use this reference as a basis for realignment.
  id: reference
  inputBinding:
    prefix: --reference
  type: File
- doc: Use a window of this many bp when left aligning (150).
  id: window
  inputBinding:
    prefix: --window
  type: string
