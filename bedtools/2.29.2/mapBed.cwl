#!/usr/bin/env cwl-runner

baseCommand:
- mapBed
class: CommandLineTool
cwlVersion: v1.0
id: mapbed
inputs:
- doc: 'Specify columns from the B file to map onto intervals in A. Default: 5. Multiple
    columns can be specified in a comma-delimited list.'
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: 'Specify the operation that should be applied to -c. Valid operations: sum,
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
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: 'Specify a custom delimiter for the collapse operations. - Example: -delim
    "|" - Default: ",".'
  id: delim
  inputBinding:
    prefix: -delim
  type: boolean
- doc: 'Sets the decimal precision for output (Default: 5)'
  id: prec
  inputBinding:
    prefix: -prec
  type: boolean
- doc: Require same strandedness.  That is, only report hits in B that overlap A on
    the _same_ strand. - By default, overlaps are reported without respect to strand.
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: Require different strandedness.  That is, only report hits in B that overlap
    A on the _opposite_ strand. - By default, overlaps are reported without respect
    to strand.
  id: s
  inputBinding:
    prefix: -S
  type: boolean
- doc: Minimum overlap required as a fraction of A. - Default is 1E-9 (i.e., 1bp).
    - FLOAT (e.g. 0.50)
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: Minimum overlap required as a fraction of B. - Default is 1E-9 (i.e., 1bp).
    - FLOAT (e.g. 0.50)
  id: f
  inputBinding:
    prefix: -F
  type: boolean
- doc: Require that the fraction overlap be reciprocal for A AND B. - In other words,
    if -f is 0.90 and -r is used, this requires that B overlap 90% of A and A _also_
    overlaps 90% of B.
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: Require that the minimum fraction be satisfied for A OR B. - In other words,
    if -e is used with -f 0.90 and -F 0.10 this requires that either 90% of A is covered
    OR 10% of  B is covered. Without -e, both fractions would have to be satisfied.
  id: e
  inputBinding:
    prefix: -e
  type: boolean
- doc: Treat "split" BAM or BED12 entries as distinct BED intervals.
  id: split
  inputBinding:
    prefix: -split
  type: boolean
- doc: Provide a genome file to enforce consistent chromosome sort order across input
    files. Only applies when used with -sorted option.
  id: g
  inputBinding:
    prefix: -g
  type: boolean
- doc: For sorted data, don't throw an error if the file has different naming conventions
    for the same chromosome. ex. "chr1" vs "chr01".
  id: no_name_check
  inputBinding:
    prefix: -nonamecheck
  type: boolean
- doc: If using BAM input, write output as BED.
  id: bed
  inputBinding:
    prefix: -bed
  type: boolean
- doc: the header from the A file prior to results.
  id: header
  inputBinding:
    prefix: -header
  type: string
- doc: Disable buffered output. Using this option will cause each line of output to
    be printed as it is generated, rather than saved in a buffer. This will make printing
    large output files  noticeably slower, but can be useful in conjunction with other
    software tools and scripts that need to process one line of bedtools output at
    a time.
  id: no_buf
  inputBinding:
    prefix: -nobuf
  type: boolean
- doc: 'Specify amount of memory to use for input buffer. Takes an integer argument.
    Optional suffixes K/M/G supported. Note: currently has no effect with compressed
    files.'
  id: i_obuf
  inputBinding:
    prefix: -iobuf
  type: boolean
