version 1.0

task BedtoolsGroupby {
  input {
    Boolean? input_file_assumes
    Boolean? grp
    Boolean? op_cols
    Boolean? ops
    Boolean? full
    Boolean? in_header
    Boolean? out_header
    Boolean? header
    Boolean? ignorecase
    Boolean? prec
    Boolean? delim
  }
  command <<<
    bedtools groupby \
      ~{if (input_file_assumes) then "-i" else ""} \
      ~{if (grp) then "-grp" else ""} \
      ~{if (op_cols) then "-opCols" else ""} \
      ~{if (ops) then "-ops" else ""} \
      ~{if (full) then "-full" else ""} \
      ~{if (in_header) then "-inheader" else ""} \
      ~{if (out_header) then "-outheader" else ""} \
      ~{if (header) then "-header" else ""} \
      ~{if (ignorecase) then "-ignorecase" else ""} \
      ~{if (prec) then "-prec" else ""} \
      ~{if (delim) then "-delim" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bedtools:2.30.0--hc088bd4_0"
  }
  parameter_meta {
    input_file_assumes: "Input file. Assumes \\\"stdin\\\" if omitted."
    grp: "Specify the columns (1-based) for the grouping.\\nThe columns must be comma separated.\\n- Default: 1,2,3"
    op_cols: "Specify the column (1-based) that should be summarized.\\n- Required."
    ops: "Specify the operation that should be applied to opCol.\\nValid operations:\\nsum, count, count_distinct, min, max,\\nmean, median, mode, antimode,\\nstdev, sstdev (sample standard dev.),\\ncollapse (i.e., print a comma separated list (duplicates allowed)),\\ndistinct (i.e., print a comma separated list (NO duplicates allowed)),\\ndistinct_sort_num (as distinct, but sorted numerically, ascending),\\ndistinct_sort_num_desc (as distinct, but sorted numerically, descending),\\nconcat   (i.e., merge values into a single, non-delimited string),\\nfreqdesc (i.e., print desc. list of values:freq)\\nfreqasc (i.e., print asc. list of values:freq)\\nfirst (i.e., print first value)\\nlast (i.e., print last value)\\n- Default: sum\\nIf there is only column, but multiple operations, all operations will be\\napplied on that column. Likewise, if there is only one operation, but\\nmultiple columns, that operation will be applied to all columns.\\nOtherwise, the number of columns must match the the number of operations,\\nand will be applied in respective order.\\nE.g., \\\"-c 5,4,6 -o sum,mean,count\\\" will give the sum of column 5,\\nthe mean of column 4, and the count of column 6.\\nThe order of output columns will match the ordering given in the command."
    full: "Print all columns from input file.  The first line in the group is used.\\nDefault: print only grouped columns."
    in_header: "Input file has a header line - the first line will be ignored."
    out_header: "Print header line in the output, detailing the column names.\\nIf the input file has headers (-inheader), the output file\\nwill use the input's column names.\\nIf the input file has no headers, the output file\\nwill use \\\"col_1\\\", \\\"col_2\\\", etc. as the column names."
    header: "same as '-inheader -outheader'"
    ignorecase: "Group values regardless of upper/lower case."
    prec: "Sets the decimal precision for output (Default: 5)"
    delim: "Specify a custom delimiter for the collapse operations.\\n- Example: -delim \\\"|\\\"\\n- Default: \\\",\\\"."
  }
  output {
    File out_stdout = stdout()
  }
}