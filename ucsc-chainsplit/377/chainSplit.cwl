#!/usr/bin/env cwl-runner

baseCommand:
- chainSplit
class: CommandLineTool
cwlVersion: v1.0
id: chainsplit
inputs:
- doc: query (default is on target)
  id: split
  inputBinding:
    prefix: '- Split'
  type: string
- doc: Lump together so have only N split files.
  id: lump
  inputBinding:
    prefix: -lump
  type: string
