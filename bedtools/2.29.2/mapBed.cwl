class: CommandLineTool
id: ../../../mapBed.cwl
inputs:
- id: in_specify_columns_map
  doc: "Specify columns from the B file to map onto intervals in A.\nDefault: 5.\n\
    Multiple columns can be specified in a comma-delimited list."
  type: boolean
  inputBinding:
    prefix: -c
- id: in_specify_operation_applied
  doc: "Specify the operation that should be applied to -c.\nValid operations:\nsum,\
    \ min, max, absmin, absmax,\nmean, median, mode, antimode\nstdev, sstdev\ncollapse\
    \ (i.e., print a delimited list (duplicates allowed)),\ndistinct (i.e., print\
    \ a delimited list (NO duplicates allowed)),\ndistinct_sort_num (as distinct,\
    \ sorted numerically, ascending),\ndistinct_sort_num_desc (as distinct, sorted\
    \ numerically, desscending),\ndistinct_only (delimited list of only unique values),\n\
    count\ncount_distinct (i.e., a count of the unique values in the column),\nfirst\
    \ (i.e., just the first value in the column),\nlast (i.e., just the last value\
    \ in the column),\nDefault: sum\nMultiple operations can be specified in a comma-delimited\
    \ list.\nIf there is only column, but multiple operations, all operations will\
    \ be\napplied on that column. Likewise, if there is only one operation, but\n\
    multiple columns, that operation will be applied to all columns.\nOtherwise, the\
    \ number of columns must match the the number of operations,\nand will be applied\
    \ in respective order.\nE.g., \"-c 5,4,6 -o sum,mean,count\" will give the sum\
    \ of column 5,\nthe mean of column 4, and the count of column 6.\nThe order of\
    \ output columns will match the ordering given in the command."
  type: boolean
  inputBinding:
    prefix: -o
- id: in_delim
  doc: "Specify a custom delimiter for the collapse operations.\n- Example: -delim\
    \ \"|\"\n- Default: \",\"."
  type: boolean
  inputBinding:
    prefix: -delim
- id: in_prec
  doc: 'Sets the decimal precision for output (Default: 5)'
  type: boolean
  inputBinding:
    prefix: -prec
- id: in_require_same_strandedness
  doc: "Require same strandedness.  That is, only report hits in B\nthat overlap A\
    \ on the _same_ strand.\n- By default, overlaps are reported without respect to\
    \ strand."
  type: boolean
  inputBinding:
    prefix: -s
- id: in_require_different_strandedness
  doc: "Require different strandedness.  That is, only report hits in B\nthat overlap\
    \ A on the _opposite_ strand.\n- By default, overlaps are reported without respect\
    \ to strand."
  type: boolean
  inputBinding:
    prefix: -S
- id: in_minimum_overlap_a
  doc: "Minimum overlap required as a fraction of A.\n- Default is 1E-9 (i.e., 1bp).\n\
    - FLOAT (e.g. 0.50)"
  type: boolean
  inputBinding:
    prefix: -f
- id: in_minimum_overlap_b
  doc: "Minimum overlap required as a fraction of B.\n- Default is 1E-9 (i.e., 1bp).\n\
    - FLOAT (e.g. 0.50)"
  type: boolean
  inputBinding:
    prefix: -F
- id: in_require_fraction_overlap
  doc: "Require that the fraction overlap be reciprocal for A AND B.\n- In other words,\
    \ if -f is 0.90 and -r is used, this requires\nthat B overlap 90% of A and A _also_\
    \ overlaps 90% of B."
  type: boolean
  inputBinding:
    prefix: -r
- id: in_require_minimum_fraction
  doc: "Require that the minimum fraction be satisfied for A OR B.\n- In other words,\
    \ if -e is used with -f 0.90 and -F 0.10 this requires\nthat either 90% of A is\
    \ covered OR 10% of  B is covered.\nWithout -e, both fractions would have to be\
    \ satisfied."
  type: boolean
  inputBinding:
    prefix: -e
- id: in_split
  doc: Treat "split" BAM or BED12 entries as distinct BED intervals.
  type: boolean
  inputBinding:
    prefix: -split
- id: in_provide_genome_file
  doc: "Provide a genome file to enforce consistent chromosome sort order\nacross\
    \ input files. Only applies when used with -sorted option."
  type: boolean
  inputBinding:
    prefix: -g
- id: in_no_name_check
  doc: "For sorted data, don't throw an error if the file has different naming conventions\n\
    for the same chromosome. ex. \"chr1\" vs \"chr01\"."
  type: boolean
  inputBinding:
    prefix: -nonamecheck
- id: in_bed
  doc: If using BAM input, write output as BED.
  type: boolean
  inputBinding:
    prefix: -bed
- id: in_header
  doc: the header from the A file prior to results.
  type: File
  inputBinding:
    prefix: -header
- id: in_no_buf
  doc: "Disable buffered output. Using this option will cause each line\nof output\
    \ to be printed as it is generated, rather than saved\nin a buffer. This will\
    \ make printing large output files\nnoticeably slower, but can be useful in conjunction\
    \ with\nother software tools and scripts that need to process one\nline of bedtools\
    \ output at a time."
  type: boolean
  inputBinding:
    prefix: -nobuf
- id: in_i_obuf
  doc: "Specify amount of memory to use for input buffer.\nTakes an integer argument.\
    \ Optional suffixes K/M/G supported.\nNote: currently has no effect with compressed\
    \ files."
  type: boolean
  inputBinding:
    prefix: -iobuf
- id: in_b
  doc: ''
  type: string
  inputBinding:
    prefix: -b
- id: in_a
  doc: ''
  type: string
  inputBinding:
    prefix: -a
- id: in_bed_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_map
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mapBed
