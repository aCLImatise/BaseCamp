class: CommandLineTool
id: hicAdjustMatrix.cwl
inputs:
- id: in_chromosomes
  doc: List of chromosomes to keep/remove.
  type: string[]
  inputBinding:
    prefix: --chromosomes
- id: in_regions
  doc: "BED file which stores a list of regions to\nkeep/remove."
  type: File?
  inputBinding:
    prefix: --regions
- id: in_mask_bad_regions
  doc: Bad regions are identified and masked.
  type: string?
  inputBinding:
    prefix: --maskBadRegions
- id: in_matrix
  doc: "The Hi-C matrix to adjust. HiCExplorer supports the\nfollowing file formats:\
    \ h5 (native HiCExplorer format)\nand cool."
  type: File?
  inputBinding:
    prefix: --matrix
- id: in_out_filename
  doc: File name to save the adjusted matrix.
  type: File?
  inputBinding:
    prefix: --outFileName
- id: in_action
  doc: "Keep, remove or mask the list of specified\nchromosomes/regions. keep/remove:\
    \ These options\nkeep/remove bins of matrix by deleting them. This may\ncause\
    \ issue plotting the matrix if several parts of a\nsingle chromosome are going\
    \ to be deleted. In that\ncase, one may consider using the mask option."
  type: string?
  inputBinding:
    prefix: --action
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_filename
  doc: File name to save the adjusted matrix.
  type: File?
  outputBinding:
    glob: $(inputs.in_out_filename)
hints: []
cwlVersion: v1.1
baseCommand:
- hicAdjustMatrix
