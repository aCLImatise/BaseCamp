class: CommandLineTool
id: mergeBed.cwl
inputs:
- id: in_force_strandedness_only
  doc: "Force strandedness.  That is, only merge features\nthat are on the same strand.\n\
    - By default, merging is done without respect to strand."
  type: boolean
  inputBinding:
    prefix: -s
- id: in_force_merge_force
  doc: "Force merge for one specific strand only.\nFollow with + or - to force merge\
    \ from only\nthe forward or reverse strand, respectively.\n- By default, merging\
    \ is done without respect to strand."
  type: boolean
  inputBinding:
    prefix: -S
- id: in_maximum_distance_features
  doc: "Maximum distance between features allowed for features\nto be merged.\n- Def.\
    \ 0. That is, overlapping & book-ended features are merged.\n- (INTEGER)\n- Note:\
    \ negative values enforce the number of b.p. required for overlap."
  type: boolean
  inputBinding:
    prefix: -d
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
- id: in_i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: in_bed_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_merge
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
- mergeBed
