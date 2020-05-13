class: CommandLineTool
id: hicAdjustMatrix.cwl
inputs:
- id: chromosomes
  doc: List of chromosomes to keep / remove.
  type: string[]
  inputBinding:
    prefix: --chromosomes
- id: regions
  doc: BED file which stores a list of regions to keep / remove.
  type: string
  inputBinding:
    prefix: --regions
- id: mask_bad_regions
  doc: Bad regions are identified and masked.
  type: string
  inputBinding:
    prefix: --maskBadRegions
- id: matrix
  doc: 'The Hi-C matrix to adjust. HiCExplorer supports the following file formats:
    h5 (native HiCExplorer format) and cool.'
  type: string
  inputBinding:
    prefix: --matrix
- id: out_filename
  doc: File name to save the adjusted matrix.
  type: string
  inputBinding:
    prefix: --outFileName
- id: action
  doc: Keep, remove or mask the list of specified chromosomes / regions.
  type: string
  inputBinding:
    prefix: --action
outputs: []
cwlVersion: v1.1
baseCommand:
- hicAdjustMatrix
