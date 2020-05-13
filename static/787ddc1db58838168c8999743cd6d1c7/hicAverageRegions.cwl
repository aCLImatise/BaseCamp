class: CommandLineTool
id: hicAverageRegions.cwl
inputs:
- id: matrix
  doc: The matrix to use for the average of TAD regions.
  type: string
  inputBinding:
    prefix: --matrix
- id: regions
  doc: BED file which stores a list of regions that are summed and averaged
  type: string
  inputBinding:
    prefix: --regions
- id: out_filename
  doc: File name to save the average regions TADs matrix.
  type: string
  inputBinding:
    prefix: --outFileName
- id: coordinates_tobin_mapping
  doc: If the region contains start and end coordinates, define if the start, center
    (start + (end-start) / 2) or end bin should be used as start for range.This parameter
    is only important to set if the given start and end coordinates are not in the
    same bin.
  type: string
  inputBinding:
    prefix: --coordinatesToBinMapping
outputs: []
cwlVersion: v1.1
baseCommand:
- hicAverageRegions
