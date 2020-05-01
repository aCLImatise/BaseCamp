#!/usr/bin/env cwl-runner

baseCommand:
- subtractBedGraphsDirectory.pl
class: CommandLineTool
cwlVersion: v1.0
id: subtractbedgraphsdirectory.pl
inputs:
- doc: (will separate bedGraphs based on this name)
  id: prefix
  inputBinding:
    prefix: -prefix
  type: string
- doc: (center bedGraphs on average signal, removes global differences)
  id: center
  inputBinding:
    prefix: -center
  type: boolean
