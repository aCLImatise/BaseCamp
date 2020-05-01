#!/usr/bin/env cwl-runner

baseCommand:
- hicAverageRegions
class: CommandLineTool
cwlVersion: v1.0
id: hicaverageregions
inputs:
- doc: The matrix to use for the average of TAD regions.
  id: matrix
  inputBinding:
    prefix: --matrix
  type: string
- doc: BED file which stores a list of regions that are summed and averaged
  id: regions
  inputBinding:
    prefix: --regions
  type: string
- doc: File name to save the average regions TADs matrix.
  id: out_filename
  inputBinding:
    prefix: --outFileName
  type: string
- doc: If the region contains start and end coordinates, define if the start, center
    (start + (end-start) / 2) or end bin should be used as start for range.This parameter
    is only important to set if the given start and end coordinates are not in the
    same bin.
  id: coordinates_tobin_mapping
  inputBinding:
    prefix: --coordinatesToBinMapping
  type: string
