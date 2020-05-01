#!/usr/bin/env cwl-runner

baseCommand:
- hicAdjustMatrix
class: CommandLineTool
cwlVersion: v1.0
id: hicadjustmatrix
inputs:
- doc: List of chromosomes to keep / remove.
  id: chromosomes
  inputBinding:
    prefix: --chromosomes
  type:
    items: string
    type: array
- doc: BED file which stores a list of regions to keep / remove.
  id: regions
  inputBinding:
    prefix: --regions
  type: string
- doc: Bad regions are identified and masked.
  id: mask_bad_regions
  inputBinding:
    prefix: --maskBadRegions
  type: string
- doc: 'The Hi-C matrix to adjust. HiCExplorer supports the following file formats:
    h5 (native HiCExplorer format) and cool.'
  id: matrix
  inputBinding:
    prefix: --matrix
  type: string
- doc: File name to save the adjusted matrix.
  id: out_filename
  inputBinding:
    prefix: --outFileName
  type: string
- doc: Keep, remove or mask the list of specified chromosomes / regions.
  id: action
  inputBinding:
    prefix: --action
  type: string
