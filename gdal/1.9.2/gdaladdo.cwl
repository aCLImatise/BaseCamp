class: CommandLineTool
id: gdaladdo.cwl
inputs:
- id: config
  doc: 'YES : Use Erdas Imagine format (.aux) as overview format.'
  type: string
  inputBinding:
    prefix: --config
- id: config
  doc: '{JPEG,LZW,PACKBITS,DEFLATE} : TIFF compression'
  type: string
  inputBinding:
    prefix: --config
- id: config
  doc: '{RGB,YCBCR,...} : TIFF photometric interp.'
  type: string
  inputBinding:
    prefix: --config
- id: config
  doc: '{PIXEL|BAND} : TIFF interleaving method'
  type: long
  inputBinding:
    prefix: --config
- id: config
  doc: '{IF_NEEDED|IF_SAFER|YES|NO} : is BigTIFF used'
  type: string
  inputBinding:
    prefix: --config
- id: config
  doc: YCBCR
  type: string
  inputBinding:
    prefix: --config
- id: config
  doc: PIXEL -ro abc.tif 2 4 8 16
  type: long
  inputBinding:
    prefix: --config
outputs: []
cwlVersion: v1.1
baseCommand:
- gdaladdo
