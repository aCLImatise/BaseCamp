class: CommandLineTool
id: ../../../closest_features_float128.cwl
inputs:
- id: chrom
  doc: Jump to and process data for given <chromosome> only.
  type: string
  inputBinding:
    prefix: --chrom
- id: closest
  doc: Choose the closest element for output only.  Ties go the left element.
  type: boolean
  inputBinding:
    prefix: --closest
- id: delim
  doc: Change output delimiter from '|' to <delim> between columns (e.g. '\t')
  type: string
  inputBinding:
    prefix: --delim
- id: dist
  doc: Print the signed distances to the <input-file> element as additional columns
    of output.  An overlapping element has a distance of 0.
  type: boolean
  inputBinding:
    prefix: --dist
- id: ec
  doc: Error check all input files (slower).
  type: boolean
  inputBinding:
    prefix: --ec
- id: header
  doc: Accept headers (VCF, GFF, SAM, BED, WIG) in any input file.
  type: boolean
  inputBinding:
    prefix: --header
- id: no_overlaps
  doc: Overlapping elements from <query-file> will not be reported.
  type: boolean
  inputBinding:
    prefix: --no-overlaps
- id: no_ref
  doc: Do not echo elements from <input-file>.
  type: boolean
  inputBinding:
    prefix: --no-ref
- id: closest_features
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: process_flags
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: input_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: query_file
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- closest-features-float128
