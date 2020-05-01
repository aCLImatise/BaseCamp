#!/usr/bin/env cwl-runner

baseCommand:
- fcontml
class: CommandLineTool
cwlVersion: v1.0
id: fcontml
inputs:
- doc: 'menu       [g] Input type in infile (Values: g (Gene frequencies); i (Continuous
    characters))'
  id: datatype
  inputBinding:
    prefix: -datatype
  type: boolean
