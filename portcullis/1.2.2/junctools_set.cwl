class: CommandLineTool
id: junctools_set.cwl
inputs:
- id: mode
  doc: 'Set operation to apply.  See above for details.  Available options: - intersection
    - union - consensus - subtract - filter - symmetric_difference - is_subset - is_superset
    - is_disjoint'
  type: string
  inputBinding:
    position: 0
- id: input
  doc: List of junction files to merge (must all be the same file format)
  type: string
  inputBinding:
    position: 1
- id: min_entry
  doc: Minimum number of files the entry is require to be in.  0 means entry must
    be present in all files, i.e. true intersection.  1 means a union of all input
    files
  type: long
  inputBinding:
    prefix: --min_entry
- id: operator
  doc: "Operator to use for calculating the score in the merged file. This option\
    \ is only applicable to 'intersection', 'union' and 'consensus' modes. Available\
    \ values: - min - max - sum - mean"
  type: string
  inputBinding:
    prefix: --operator
- id: output
  doc: Output junction file.  Required for operations that produce an output file.
  type: string
  inputBinding:
    prefix: --output
- id: prefix
  doc: Prefix to apply to name column in BED output file
  type: string
  inputBinding:
    prefix: --prefix
- id: ignore_strand
  doc: Whether or not to ignore strand when creating a key for the junction
  type: boolean
  inputBinding:
    prefix: --ignore_strand
outputs: []
cwlVersion: v1.1
baseCommand:
- junctools
- set
