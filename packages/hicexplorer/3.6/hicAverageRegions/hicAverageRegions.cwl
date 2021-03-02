class: CommandLineTool
id: hicAverageRegions.cwl
inputs:
- id: in_range
  doc: "RANGE, -ra RANGE RANGE\nRange of region up- and downstream of each region\
    \ to\ninclude in genomic units."
  type: string?
  inputBinding:
    prefix: --range
- id: in_range_in_bins
  doc: "RANGEINBINS, -rib RANGEINBINS RANGEINBINS\nRange of region up- and downstream\
    \ of each region to\ninclude in bin units."
  type: string?
  inputBinding:
    prefix: --rangeInBins
- id: in_matrix
  doc: The matrix to use for the average of TAD regions.
  type: string?
  inputBinding:
    prefix: --matrix
- id: in_regions
  doc: "BED file which stores a list of regions that are\nsummed and averaged"
  type: File?
  inputBinding:
    prefix: --regions
- id: in_out_filename
  doc: File name to save the average regions TADs matrix.
  type: File?
  inputBinding:
    prefix: --outFileName
- id: in_coordinates_tobin_mapping
  doc: "If the region contains start and end coordinates,\ndefine if the start, center\
    \ (start + (end-start) / 2)\nor end bin should be used as start for range.This\n\
    parameter is only important to set if the given start\nand end coordinates are\
    \ not in the same bin (Default:\nstart)."
  type: string?
  inputBinding:
    prefix: --coordinatesToBinMapping
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_filename
  doc: File name to save the average regions TADs matrix.
  type: File?
  outputBinding:
    glob: $(inputs.in_out_filename)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hicexplorer:3.6--py_0
cwlVersion: v1.1
baseCommand:
- hicAverageRegions
