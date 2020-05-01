#!/usr/bin/env cwl-runner

baseCommand:
- bigWigSummary
class: CommandLineTool
cwlVersion: v1.0
id: bigwigsummary
inputs:
- doc: ''
  id: file_bigwig
  inputBinding:
    position: 0
  type: File
- doc: ''
  id: chrom
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: start
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: end
  inputBinding:
    position: 3
  type: string
- doc: ''
  id: data_points
  inputBinding:
    position: 4
  type: string
- doc: =/dir/to/cache - place to put cache for remote bigBed/bigWigs
  id: udc_dir
  inputBinding:
    prefix: -udcDir
  type: boolean
