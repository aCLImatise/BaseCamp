class: CommandLineTool
id: groupBy.cwl
inputs:
- id: in_input_file_assumes
  doc: Input file. Assumes "stdin" if omitted.
  type: boolean
  inputBinding:
    prefix: -i
- id: in_grp
  doc: "Specify the columns (1-based) for the grouping.\nThe columns must be comma\
    \ separated.\n- Default: 1,2,3"
  type: boolean
  inputBinding:
    prefix: -grp
- id: in_op_cols
  doc: "Specify the column (1-based) that should be summarized.\n- Required."
  type: boolean
  inputBinding:
    prefix: -opCols
- id: in_ops
  doc: "Specify the operation that should be applied to opCol.\nValid operations:\n\
    sum, count, count_distinct, min, max,\nmean, median, mode, antimode,\nstdev, sstdev\
    \ (sample standard dev.),\ncollapse (i.e., print a comma separated list (duplicates\
    \ allowed)),\ndistinct (i.e., print a comma separated list (NO duplicates allowed)),\n\
    distinct_sort_num (as distinct, but sorted numerically, ascending),\ndistinct_sort_num_desc\
    \ (as distinct, but sorted numerically, descending),\nconcat   (i.e., merge values\
    \ into a single, non-delimited string),\nfreqdesc (i.e., print desc. list of values:freq)\n\
    freqasc (i.e., print asc. list of values:freq)\nfirst (i.e., print first value)\n\
    last (i.e., print last value)\n- Default: sum\nIf there is only column, but multiple\
    \ operations, all operations will be\napplied on that column. Likewise, if there\
    \ is only one operation, but\nmultiple columns, that operation will be applied\
    \ to all columns.\nOtherwise, the number of columns must match the the number\
    \ of operations,\nand will be applied in respective order.\nE.g., \"-c 5,4,6 -o\
    \ sum,mean,count\" will give the sum of column 5,\nthe mean of column 4, and the\
    \ count of column 6.\nThe order of output columns will match the ordering given\
    \ in the command."
  type: boolean
  inputBinding:
    prefix: -ops
- id: in_full
  doc: "Print all columns from input file.  The first line in the group is used.\n\
    Default: print only grouped columns."
  type: boolean
  inputBinding:
    prefix: -full
- id: in_in_header
  doc: Input file has a header line - the first line will be ignored.
  type: boolean
  inputBinding:
    prefix: -inheader
- id: in_out_header
  doc: "Print header line in the output, detailing the column names.\nIf the input\
    \ file has headers (-inheader), the output file\nwill use the input's column names.\n\
    If the input file has no headers, the output file\nwill use \"col_1\", \"col_2\"\
    , etc. as the column names."
  type: boolean
  inputBinding:
    prefix: -outheader
- id: in_header
  doc: same as '-inheader -outheader'
  type: boolean
  inputBinding:
    prefix: -header
- id: in_ignorecase
  doc: Group values regardless of upper/lower case.
  type: boolean
  inputBinding:
    prefix: -ignorecase
- id: in_prec
  doc: 'Sets the decimal precision for output (Default: 5)'
  type: boolean
  inputBinding:
    prefix: -prec
- id: in_delim
  doc: "Specify a custom delimiter for the collapse operations.\n- Example: -delim\
    \ \"|\"\n- Default: \",\"."
  type: boolean
  inputBinding:
    prefix: -delim
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- groupBy
