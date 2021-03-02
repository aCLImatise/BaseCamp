version 1.0

task BedtoolsMerge {
  input {
    Boolean? force_strandedness_is
    Boolean? force_merge_force
    Boolean? maximum_distance_features
    Boolean? specify_columns_map
    Boolean? specify_operation_applied
    Boolean? delim
    Boolean? prec
    Boolean? bed
    File? header
    Boolean? no_buf
    Boolean? i_obuf
    String? i
  }
  command <<<
    bedtools merge \
      ~{if (force_strandedness_is) then "-s" else ""} \
      ~{if (force_merge_force) then "-S" else ""} \
      ~{if (maximum_distance_features) then "-d" else ""} \
      ~{if (specify_columns_map) then "-c" else ""} \
      ~{if (specify_operation_applied) then "-o" else ""} \
      ~{if (delim) then "-delim" else ""} \
      ~{if (prec) then "-prec" else ""} \
      ~{if (bed) then "-bed" else ""} \
      ~{if defined(header) then ("-header " +  '"' + header + '"') else ""} \
      ~{if (no_buf) then "-nobuf" else ""} \
      ~{if (i_obuf) then "-iobuf" else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    force_strandedness_is: "Force strandedness.  That is, only merge features\\nthat are on the same strand.\\n- By default, merging is done without respect to strand."
    force_merge_force: "Force merge for one specific strand only.\\nFollow with + or - to force merge from only\\nthe forward or reverse strand, respectively.\\n- By default, merging is done without respect to strand."
    maximum_distance_features: "Maximum distance between features allowed for features\\nto be merged.\\n- Def. 0. That is, overlapping & book-ended features are merged.\\n- (INTEGER)\\n- Note: negative values enforce the number of b.p. required for overlap."
    specify_columns_map: "Specify columns from the B file to map onto intervals in A.\\nDefault: 5.\\nMultiple columns can be specified in a comma-delimited list."
    specify_operation_applied: "Specify the operation that should be applied to -c.\\nValid operations:\\nsum, min, max, absmin, absmax,\\nmean, median, mode, antimode\\nstdev, sstdev\\ncollapse (i.e., print a delimited list (duplicates allowed)),\\ndistinct (i.e., print a delimited list (NO duplicates allowed)),\\ndistinct_sort_num (as distinct, sorted numerically, ascending),\\ndistinct_sort_num_desc (as distinct, sorted numerically, desscending),\\ndistinct_only (delimited list of only unique values),\\ncount\\ncount_distinct (i.e., a count of the unique values in the column),\\nfirst (i.e., just the first value in the column),\\nlast (i.e., just the last value in the column),\\nDefault: sum\\nMultiple operations can be specified in a comma-delimited list.\\nIf there is only column, but multiple operations, all operations will be\\napplied on that column. Likewise, if there is only one operation, but\\nmultiple columns, that operation will be applied to all columns.\\nOtherwise, the number of columns must match the the number of operations,\\nand will be applied in respective order.\\nE.g., \\\"-c 5,4,6 -o sum,mean,count\\\" will give the sum of column 5,\\nthe mean of column 4, and the count of column 6.\\nThe order of output columns will match the ordering given in the command."
    delim: "Specify a custom delimiter for the collapse operations.\\n- Example: -delim \\\"|\\\"\\n- Default: \\\",\\\"."
    prec: "Sets the decimal precision for output (Default: 5)"
    bed: "If using BAM input, write output as BED."
    header: "the header from the A file prior to results."
    no_buf: "Disable buffered output. Using this option will cause each line\\nof output to be printed as it is generated, rather than saved\\nin a buffer. This will make printing large output files\\nnoticeably slower, but can be useful in conjunction with\\nother software tools and scripts that need to process one\\nline of bedtools output at a time."
    i_obuf: "Specify amount of memory to use for input buffer.\\nTakes an integer argument. Optional suffixes K/M/G supported.\\nNote: currently has no effect with compressed files."
    i: ""
  }
  output {
    File out_stdout = stdout()
  }
}