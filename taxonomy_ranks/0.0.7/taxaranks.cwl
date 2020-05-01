#!/usr/bin/env cwl-runner

baseCommand:
- taxaranks
class: CommandLineTool
cwlVersion: v1.0
id: taxaranks
inputs:
- doc: A file can be a list of ncbi taxa id or species names (or higher ranks, e.g.
    Family, Order), or a mixture of them.
  id: i
  inputBinding:
    prefix: -i
  type: File
- doc: outfile
  id: o
  inputBinding:
    prefix: -o
  type: File
- doc: verbose output
  id: v
  inputBinding:
    prefix: -v
  type: boolean
