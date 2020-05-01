#!/usr/bin/env cwl-runner

baseCommand:
- makeUCSCfile
class: CommandLineTool
cwlVersion: v1.0
id: makeucscfile
inputs:
- doc: <chrN:XXX-YYY|genome> (output only a specific region for circos[no header])
  id: circo_s
  inputBinding:
    prefix: -circos
  type: boolean
- doc: (Skip this chromosome when making bedGraph)
  id: skip_chr
  inputBinding:
    prefix: -skipChr
  type: string
- doc: (don't print track lines, useful when making bigWigs)
  id: noheader
  inputBinding:
    prefix: -noheader
  type: boolean
