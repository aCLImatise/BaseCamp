#!/usr/bin/env cwl-runner

baseCommand:
- gdaladdo
class: CommandLineTool
cwlVersion: v1.0
id: gdaladdo
inputs:
- doc: 'YES : Use Erdas Imagine format (.aux) as overview format.'
  id: config
  inputBinding:
    prefix: --config
  type: string
- doc: '{JPEG,LZW,PACKBITS,DEFLATE} : TIFF compression'
  id: config
  inputBinding:
    prefix: --config
  type: string
- doc: '{RGB,YCBCR,...} : TIFF photometric interp.'
  id: config
  inputBinding:
    prefix: --config
  type: string
- doc: '{PIXEL|BAND} : TIFF interleaving method'
  id: config
  inputBinding:
    prefix: --config
  type: long
- doc: '{IF_NEEDED|IF_SAFER|YES|NO} : is BigTIFF used'
  id: config
  inputBinding:
    prefix: --config
  type: string
- doc: YCBCR
  id: config
  inputBinding:
    prefix: --config
  type: string
- doc: PIXEL -ro abc.tif 2 4 8 16
  id: config
  inputBinding:
    prefix: --config
  type: long
