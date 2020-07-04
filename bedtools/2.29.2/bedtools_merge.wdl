version 1.0

task BedtoolsMerge {
  input {
    Boolean? force_strandedness_only
    Boolean? force_merge_one
    Boolean? maximum_distance_features
    Boolean? specify_columns_map
    Boolean? specify_operation_applied
    Boolean? delim
    Boolean? prec
    Boolean? bed
    String? header
    Boolean? no_buf
    Boolean? i_obuf
    String? i
  }
  command <<<
    bedtools merge \
      ~{true="-s" false="" force_strandedness_only} \
      ~{true="-S" false="" force_merge_one} \
      ~{true="-d" false="" maximum_distance_features} \
      ~{true="-c" false="" specify_columns_map} \
      ~{true="-o" false="" specify_operation_applied} \
      ~{true="-delim" false="" delim} \
      ~{true="-prec" false="" prec} \
      ~{true="-bed" false="" bed} \
      ~{if defined(header) then ("-header " +  '"' + header + '"') else ""} \
      ~{true="-nobuf" false="" no_buf} \
      ~{true="-iobuf" false="" i_obuf} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    force_strandedness_only: "Force strandedness.  That is, only merge features that are on the same strand. - By default, merging is done without respect to strand."
    force_merge_one: "Force merge for one specific strand only. Follow with + or - to force merge from only the forward or reverse strand, respectively. - By default, merging is done without respect to strand."
    maximum_distance_features: "Maximum distance between features allowed for features to be merged. - Def. 0. That is, overlapping & book-ended features are merged. - (INTEGER) - Note: negative values enforce the number of b.p. required for overlap."
    specify_columns_map: "Specify columns from the B file to map onto intervals in A. Default: 5. Multiple columns can be specified in a comma-delimited list."
    specify_operation_applied: "Specify the operation that should be applied to -c. Valid operations: sum, min, max, absmin, absmax, mean, median, mode, antimode stdev, sstdev collapse (i.e., print a delimited list (duplicates allowed)),  distinct (i.e., print a delimited list (NO duplicates allowed)),  distinct_sort_num (as distinct, sorted numerically, ascending), distinct_sort_num_desc (as distinct, sorted numerically, desscending), distinct_only (delimited list of only unique values), count count_distinct (i.e., a count of the unique values in the column),  first (i.e., just the first value in the column),  last (i.e., just the last value in the column),  Default: sum Multiple operations can be specified in a comma-delimited list. If there is only column, but multiple operations, all operations will be applied on that column. Likewise, if there is only one operation, but multiple columns, that operation will be applied to all columns. Otherwise, the number of columns must match the the number of operations, and will be applied in respective order. E.g., \"-c 5,4,6 -o sum,mean,count\" will give the sum of column 5, the mean of column 4, and the count of column 6. The order of output columns will match the ordering given in the command."
    delim: "Specify a custom delimiter for the collapse operations. - Example: -delim \"|\" - Default: \",\"."
    prec: "Sets the decimal precision for output (Default: 5)"
    bed: "If using BAM input, write output as BED."
    header: "the header from the A file prior to results."
    no_buf: "Disable buffered output. Using this option will cause each line of output to be printed as it is generated, rather than saved in a buffer. This will make printing large output files  noticeably slower, but can be useful in conjunction with other software tools and scripts that need to process one line of bedtools output at a time."
    i_obuf: "Specify amount of memory to use for input buffer. Takes an integer argument. Optional suffixes K/M/G supported. Note: currently has no effect with compressed files."
    i: ""
  }
}