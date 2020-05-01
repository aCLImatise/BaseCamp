#!/usr/bin/env cwl-runner

baseCommand:
- bigWigAverageOverBed
class: CommandLineTool
cwlVersion: v1.0
id: bigwigaverageoverbed
inputs:
- doc: ''
  id: in_bw
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: in_bed
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: out_tab
  inputBinding:
    position: 2
  type: string
- doc: additional columns containing the min and max observed in the area.
  id: include
  inputBinding:
    prefix: '- include'
  type: string
