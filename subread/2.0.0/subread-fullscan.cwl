#!/usr/bin/env cwl-runner

baseCommand:
- subread-fullscan
class: CommandLineTool
cwlVersion: v1.0
id: subread-fullscan
inputs:
- doc: The read bases.
  id: read_string
  inputBinding:
    position: 0
  type: string
- doc: Base name of the index.
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: The minimum fraction of matched bases in the read, 0.8 by default
  id: m
  inputBinding:
    prefix: -m
  type: double
