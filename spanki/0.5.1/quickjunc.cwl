#!/usr/bin/env cwl-runner

baseCommand:
- quickjunc
class: CommandLineTool
cwlVersion: v1.0
id: quickjunc
inputs:
- doc: 'BAM file name (default: None)'
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: 'Anchor size (default: 8)'
  id: a
  inputBinding:
    prefix: -a
  type: string
