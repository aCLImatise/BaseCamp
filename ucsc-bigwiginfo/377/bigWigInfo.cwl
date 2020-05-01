#!/usr/bin/env cwl-runner

baseCommand:
- bigWigInfo
class: CommandLineTool
cwlVersion: v1.0
id: bigwiginfo
inputs:
- doc: ''
  id: file_bw
  inputBinding:
    position: 0
  type: File
- doc: =/dir/to/cache - place to put cache for remote bigBed/bigWigs
  id: udc_dir
  inputBinding:
    prefix: -udcDir
  type: boolean
- doc: chromosomes and their sizes
  id: chrom_s
  inputBinding:
    prefix: -chroms
  type: string
- doc: zoom levels and their sizes
  id: zooms
  inputBinding:
    prefix: -zooms
  type: string
- doc: min and max on a single line
  id: minmax
  inputBinding:
    prefix: -minMax
  type: string
