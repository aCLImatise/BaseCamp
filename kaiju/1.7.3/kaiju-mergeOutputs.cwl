#!/usr/bin/env cwl-runner

baseCommand:
- kaiju-mergeOutputs
class: CommandLineTool
cwlVersion: v1.0
id: kaiju-mergeoutputs
inputs:
- doc: Name of first input file
  id: i
  inputBinding:
    prefix: -i
  type: File
- doc: Name of second input file
  id: j
  inputBinding:
    prefix: -j
  type: File
- doc: Name of output file.
  id: o
  inputBinding:
    prefix: -o
  type: File
- doc: 'Conflict resolution mode, must be 1, 2,  lca, or lowest (default: lca)'
  id: c
  inputBinding:
    prefix: -c
  type: string
- doc: Name of nodes.dmp file, only required when -c is set to lca
  id: t
  inputBinding:
    prefix: -t
  type: File
- doc: Use 4th column with classification score to give precedence to taxon with better
    score.
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: Enable verbose output, which will print a summary in the end.
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: Enable debug output.
  id: d
  inputBinding:
    prefix: -d
  type: boolean
