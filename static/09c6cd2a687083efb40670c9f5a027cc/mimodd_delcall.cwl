class: CommandLineTool
id: mimodd_delcall.cwl
inputs:
- id: index_files
  doc: FILE [INDEX FILE ...] pre-computed index files for all input files
  type: string
  inputBinding:
    prefix: --index-files
- id: ofile
  doc: 'redirect the output to the specified file (default: stdout)'
  type: string
  inputBinding:
    prefix: --ofile
- id: max_cov
  doc: 'THRESHOLD maximal coverage allowed at any site within an uncovered region
    (default: 0)'
  type: string
  inputBinding:
    prefix: --max-cov
- id: min_size
  doc: 'THRESHOLD minimal size in nts for an uncovered region to be reported (default:
    100)'
  type: long
  inputBinding:
    prefix: --min-size
- id: include_uncovered
  doc: include uncovered regions in the output that did not get called as deletions
  type: boolean
  inputBinding:
    prefix: --include-uncovered
- id: group_by_id
  doc: optional flag to control handling of multi-sample input; if enabled, reads
    from different read groups will be treated strictly separate. If turned off, read
    groups with identical sample names are used together for identifying uncovered
    regions, but are still treated separately for the prediction of deletions.
  type: boolean
  inputBinding:
    prefix: --group-by-id
- id: verbose
  doc: verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- mimodd
- delcall
