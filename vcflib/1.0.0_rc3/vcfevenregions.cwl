class: CommandLineTool
id: vcfevenregions.cwl
inputs:
- id: vcf_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_a_reference
  doc: FASTA reference file to use to obtain primer sequences.
  type: string
  inputBinding:
    prefix: --fasta-reference
- id: number_of_regions
  doc: The number of desired regions.
  type: string
  inputBinding:
    prefix: --number-of-regions
- id: number_of_positions
  doc: The number of positions per region.
  type: string
  inputBinding:
    prefix: --number-of-positions
- id: offset
  doc: Add an offset to region positioning, to avoid boundary related artifacts in
    downstream processing.
  type: string
  inputBinding:
    prefix: --offset
- id: overlap
  doc: The number of sites to overlap between regions.  Default 0.
  type: string
  inputBinding:
    prefix: --overlap
- id: separator
  doc: Specify string to use to separate region output.  Default '-'
  type: string
  inputBinding:
    prefix: --separator
outputs: []
cwlVersion: v1.1
baseCommand:
- vcfevenregions
