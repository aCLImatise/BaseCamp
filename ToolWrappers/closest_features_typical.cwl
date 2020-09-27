class: CommandLineTool
id: closest_features_typical.cwl
inputs:
- id: in_chrom
  doc: Jump to and process data for given <chromosome> only.
  type: string
  inputBinding:
    prefix: --chrom
- id: in_closest
  doc: Choose the closest element for output only.  Ties go the left element.
  type: boolean
  inputBinding:
    prefix: --closest
- id: in_delim
  doc: Change output delimiter from '|' to <delim> between columns (e.g. '\t')
  type: string
  inputBinding:
    prefix: --delim
- id: in_dist
  doc: "Print the signed distances to the <input-file> element as additional\ncolumns\
    \ of output.  An overlapping element has a distance of 0."
  type: boolean
  inputBinding:
    prefix: --dist
- id: in_ec
  doc: Error check all input files (slower).
  type: boolean
  inputBinding:
    prefix: --ec
- id: in_header
  doc: Accept headers (VCF, GFF, SAM, BED, WIG) in any input file.
  type: boolean
  inputBinding:
    prefix: --header
- id: in_no_overlaps
  doc: Overlapping elements from <query-file> will not be reported.
  type: boolean
  inputBinding:
    prefix: --no-overlaps
- id: in_no_ref
  doc: Do not echo elements from <input-file>.
  type: boolean
  inputBinding:
    prefix: --no-ref
- id: in_closest_features
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_process_flags
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_input_file
  doc: ''
  type: File
  inputBinding:
    position: 2
- id: in_query_file
  doc: ''
  type: File
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- closest-features-typical
