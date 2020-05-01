#!/usr/bin/env cwl-runner

baseCommand:
- condenseBedGraph.pl
class: CommandLineTool
cwlVersion: v1.0
id: condensebedgraph.pl
inputs:
- doc: (output log2)
  id: log
  inputBinding:
    prefix: -log
  type: boolean
