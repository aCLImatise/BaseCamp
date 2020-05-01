#!/usr/bin/env cwl-runner

baseCommand:
- interop_dumptext
class: CommandLineTool
cwlVersion: v1.0
id: interop_dumptext
inputs:
- doc: '[0]: Number of metrics to subsample'
  id: subset
  inputBinding:
    prefix: --subset
  type: boolean
- doc: '[]: Name of metric to load, e.g. --metric=Tile to load TileMetricsOut.bin'
  id: metric
  inputBinding:
    prefix: --metric
  type: boolean
