version 1.0

task MapBed {
  input {
    Boolean? specify_columns_map
    Boolean? specify_operation_applied
    Boolean? delim
    Boolean? prec
    Boolean? require_same_strandedness
    Boolean? require_different_strandedness
    Boolean? minimum_overlap_a
    Boolean? minimum_overlap_b
    Boolean? require_overlap_be
    Boolean? require_fraction_be
    Boolean? split
    Boolean? provide_genome_file
    Boolean? no_name_check
    Boolean? bed
    File? header
    Boolean? no_buf
    Boolean? i_obuf
    String? b
    String? a
    String bed_tools
    String var_map
  }
  command <<<
    mapBed \
      ~{bed_tools} \
      ~{var_map} \
      ~{if (specify_columns_map) then "-c" else ""} \
      ~{if (specify_operation_applied) then "-o" else ""} \
      ~{if (delim) then "-delim" else ""} \
      ~{if (prec) then "-prec" else ""} \
      ~{if (require_same_strandedness) then "-s" else ""} \
      ~{if (require_different_strandedness) then "-S" else ""} \
      ~{if (minimum_overlap_a) then "-f" else ""} \
      ~{if (minimum_overlap_b) then "-F" else ""} \
      ~{if (require_overlap_be) then "-r" else ""} \
      ~{if (require_fraction_be) then "-e" else ""} \
      ~{if (split) then "-split" else ""} \
      ~{if (provide_genome_file) then "-g" else ""} \
      ~{if (no_name_check) then "-nonamecheck" else ""} \
      ~{if (bed) then "-bed" else ""} \
      ~{if defined(header) then ("-header " +  '"' + header + '"') else ""} \
      ~{if (no_buf) then "-nobuf" else ""} \
      ~{if (i_obuf) then "-iobuf" else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    specify_columns_map: "Specify columns from the B file to map onto intervals in A.\\nDefault: 5.\\nMultiple columns can be specified in a comma-delimited list."
    specify_operation_applied: "Specify the operation that should be applied to -c.\\nValid operations:\\nsum, min, max, absmin, absmax,\\nmean, median, mode, antimode\\nstdev, sstdev\\ncollapse (i.e., print a delimited list (duplicates allowed)),\\ndistinct (i.e., print a delimited list (NO duplicates allowed)),\\ndistinct_sort_num (as distinct, sorted numerically, ascending),\\ndistinct_sort_num_desc (as distinct, sorted numerically, desscending),\\ndistinct_only (delimited list of only unique values),\\ncount\\ncount_distinct (i.e., a count of the unique values in the column),\\nfirst (i.e., just the first value in the column),\\nlast (i.e., just the last value in the column),\\nDefault: sum\\nMultiple operations can be specified in a comma-delimited list.\\nIf there is only column, but multiple operations, all operations will be\\napplied on that column. Likewise, if there is only one operation, but\\nmultiple columns, that operation will be applied to all columns.\\nOtherwise, the number of columns must match the the number of operations,\\nand will be applied in respective order.\\nE.g., \\\"-c 5,4,6 -o sum,mean,count\\\" will give the sum of column 5,\\nthe mean of column 4, and the count of column 6.\\nThe order of output columns will match the ordering given in the command."
    delim: "Specify a custom delimiter for the collapse operations.\\n- Example: -delim \\\"|\\\"\\n- Default: \\\",\\\"."
    prec: "Sets the decimal precision for output (Default: 5)"
    require_same_strandedness: "Require same strandedness.  That is, only report hits in B\\nthat overlap A on the _same_ strand.\\n- By default, overlaps are reported without respect to strand."
    require_different_strandedness: "Require different strandedness.  That is, only report hits in B\\nthat overlap A on the _opposite_ strand.\\n- By default, overlaps are reported without respect to strand."
    minimum_overlap_a: "Minimum overlap required as a fraction of A.\\n- Default is 1E-9 (i.e., 1bp).\\n- FLOAT (e.g. 0.50)"
    minimum_overlap_b: "Minimum overlap required as a fraction of B.\\n- Default is 1E-9 (i.e., 1bp).\\n- FLOAT (e.g. 0.50)"
    require_overlap_be: "Require that the fraction overlap be reciprocal for A AND B.\\n- In other words, if -f is 0.90 and -r is used, this requires\\nthat B overlap 90% of A and A _also_ overlaps 90% of B."
    require_fraction_be: "Require that the minimum fraction be satisfied for A OR B.\\n- In other words, if -e is used with -f 0.90 and -F 0.10 this requires\\nthat either 90% of A is covered OR 10% of  B is covered.\\nWithout -e, both fractions would have to be satisfied."
    split: "Treat \\\"split\\\" BAM or BED12 entries as distinct BED intervals."
    provide_genome_file: "Provide a genome file to enforce consistent chromosome sort order\\nacross input files. Only applies when used with -sorted option."
    no_name_check: "For sorted data, don't throw an error if the file has different naming conventions\\nfor the same chromosome. ex. \\\"chr1\\\" vs \\\"chr01\\\"."
    bed: "If using BAM input, write output as BED."
    header: "the header from the A file prior to results."
    no_buf: "Disable buffered output. Using this option will cause each line\\nof output to be printed as it is generated, rather than saved\\nin a buffer. This will make printing large output files\\nnoticeably slower, but can be useful in conjunction with\\nother software tools and scripts that need to process one\\nline of bedtools output at a time."
    i_obuf: "Specify amount of memory to use for input buffer.\\nTakes an integer argument. Optional suffixes K/M/G supported.\\nNote: currently has no effect with compressed files."
    b: ""
    a: ""
    bed_tools: ""
    var_map: ""
  }
  output {
    File out_stdout = stdout()
  }
}