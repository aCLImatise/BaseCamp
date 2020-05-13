class: CommandLineTool
id: bedtools_merge.cwl
inputs:
- id: s
  doc: Force strandedness.  That is, only merge features that are on the same strand.
    - By default, merging is done without respect to strand.
  type: boolean
  inputBinding:
    prefix: -s
- id: s
  doc: Force merge for one specific strand only. Follow with + or - to force merge
    from only the forward or reverse strand, respectively. - By default, merging is
    done without respect to strand.
  type: boolean
  inputBinding:
    prefix: -S
- id: d
  doc: 'Maximum distance between features allowed for features to be merged. - Def.
    0. That is, overlapping & book-ended features are merged. - (INTEGER) - Note:
    negative values enforce the number of b.p. required for overlap.'
  type: boolean
  inputBinding:
    prefix: -d
- id: c
  doc: 'Specify columns from the B file to map onto intervals in A. Default: 5. Multiple
    columns can be specified in a comma-delimited list.'
  type: boolean
  inputBinding:
    prefix: -c
- id: o
  doc: 'Specify the operation that should be applied to -c. Valid operations: sum,
    min, max, absmin, absmax, mean, median, mode, antimode stdev, sstdev collapse
    (i.e., print a delimited list (duplicates allowed)),  distinct (i.e., print a
    delimited list (NO duplicates allowed)),  distinct_sort_num (as distinct, sorted
    numerically, ascending), distinct_sort_num_desc (as distinct, sorted numerically,
    desscending), distinct_only (delimited list of only unique values), count count_distinct
    (i.e., a count of the unique values in the column),  first (i.e., just the first
    value in the column),  last (i.e., just the last value in the column),  Default:
    sum Multiple operations can be specified in a comma-delimited list. If there is
    only column, but multiple operations, all operations will be applied on that column.
    Likewise, if there is only one operation, but multiple columns, that operation
    will be applied to all columns. Otherwise, the number of columns must match the
    the number of operations, and will be applied in respective order. E.g., "-c 5,4,6
    -o sum,mean,count" will give the sum of column 5, the mean of column 4, and the
    count of column 6. The order of output columns will match the ordering given in
    the command.'
  type: boolean
  inputBinding:
    prefix: -o
- id: delim
  doc: 'Specify a custom delimiter for the collapse operations. - Example: -delim
    "|" - Default: ",".'
  type: boolean
  inputBinding:
    prefix: -delim
- id: prec
  doc: 'Sets the decimal precision for output (Default: 5)'
  type: boolean
  inputBinding:
    prefix: -prec
- id: bed
  doc: If using BAM input, write output as BED.
  type: boolean
  inputBinding:
    prefix: -bed
- id: header
  doc: the header from the A file prior to results.
  type: string
  inputBinding:
    prefix: -header
- id: no_buf
  doc: Disable buffered output. Using this option will cause each line of output to
    be printed as it is generated, rather than saved in a buffer. This will make printing
    large output files  noticeably slower, but can be useful in conjunction with other
    software tools and scripts that need to process one line of bedtools output at
    a time.
  type: boolean
  inputBinding:
    prefix: -nobuf
- id: i_obuf
  doc: 'Specify amount of memory to use for input buffer. Takes an integer argument.
    Optional suffixes K/M/G supported. Note: currently has no effect with compressed
    files.'
  type: boolean
  inputBinding:
    prefix: -iobuf
outputs: []
cwlVersion: v1.1
baseCommand:
- bedtools
- merge
