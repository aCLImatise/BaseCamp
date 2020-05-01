#!/usr/bin/env cwl-runner

baseCommand:
- pbmerge
class: CommandLineTool
cwlVersion: v1.0
id: pbmerge
inputs:
- doc: 'FILE  Input file(s). Maybe one of: DataSetXML, BAM file(s), or FOFN'
  id: input
  inputBinding:
    position: 0
  type: string
- doc: STR   Output BAM filename. Writes to stdout if not provided.
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: Disables creation of PBI index file. PBI always disabled when writing to stdout.
  id: no_pbi
  inputBinding:
    prefix: --no-pbi
  type: boolean
