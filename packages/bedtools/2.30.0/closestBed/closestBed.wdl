version 1.0

task ClosestBed {
  input {
    Boolean? addition_closest_feature
    Boolean? d_report_feature
    Boolean? io
    Boolean? iu
    Boolean? id
    Boolean? fu
    Boolean? fd
    Boolean? how_ties_closest
    Boolean? mdb
    Boolean? report_closest_hits
    Boolean? require_query_have
    Boolean? require_same_strandedness
    Boolean? require_different_strandedness
    Boolean? minimum_overlap_a
    Boolean? minimum_overlap_b
    Boolean? require_overlap_be
    Boolean? require_fraction_be
    Boolean? split
    Boolean? provide_genome_file
    Boolean? no_name_check
    Boolean? names
    Boolean? filenames
    Boolean? sort_out
    Boolean? bed
    File? header
    Boolean? no_buf
    Boolean? i_obuf
    String? b
    String? a
    String bed_tools
    String closest
  }
  command <<<
    closestBed \
      ~{bed_tools} \
      ~{closest} \
      ~{if (addition_closest_feature) then "-d" else ""} \
      ~{if (d_report_feature) then "-D" else ""} \
      ~{if (io) then "-io" else ""} \
      ~{if (iu) then "-iu" else ""} \
      ~{if (id) then "-id" else ""} \
      ~{if (fu) then "-fu" else ""} \
      ~{if (fd) then "-fd" else ""} \
      ~{if (how_ties_closest) then "-t" else ""} \
      ~{if (mdb) then "-mdb" else ""} \
      ~{if (report_closest_hits) then "-k" else ""} \
      ~{if (require_query_have) then "-N" else ""} \
      ~{if (require_same_strandedness) then "-s" else ""} \
      ~{if (require_different_strandedness) then "-S" else ""} \
      ~{if (minimum_overlap_a) then "-f" else ""} \
      ~{if (minimum_overlap_b) then "-F" else ""} \
      ~{if (require_overlap_be) then "-r" else ""} \
      ~{if (require_fraction_be) then "-e" else ""} \
      ~{if (split) then "-split" else ""} \
      ~{if (provide_genome_file) then "-g" else ""} \
      ~{if (no_name_check) then "-nonamecheck" else ""} \
      ~{if (names) then "-names" else ""} \
      ~{if (filenames) then "-filenames" else ""} \
      ~{if (sort_out) then "-sortout" else ""} \
      ~{if (bed) then "-bed" else ""} \
      ~{if defined(header) then ("-header " +  '"' + header + '"') else ""} \
      ~{if (no_buf) then "-nobuf" else ""} \
      ~{if (i_obuf) then "-iobuf" else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bedtools:2.30.0--hc088bd4_0"
  }
  parameter_meta {
    addition_closest_feature: "In addition to the closest feature in B,\\nreport its distance to A as an extra column.\\n- The reported distance for overlapping features will be 0."
    d_report_feature: "Like -d, report the closest feature in B, and its distance to A\\nas an extra column. Unlike -d, use negative distances to report\\nupstream features.\\nThe options for defining which orientation is \\\"upstream\\\" are:\\n- \\\"ref\\\"   Report distance with respect to the reference genome.\\nB features with a lower (start, stop) are upstream\\n- \\\"a\\\"     Report distance with respect to A.\\nWhen A is on the - strand, \\\"upstream\\\" means B has a\\nhigher (start,stop).\\n- \\\"b\\\"     Report distance with respect to B.\\nWhen B is on the - strand, \\\"upstream\\\" means A has a\\nhigher (start,stop)."
    io: "Ignore features in B that overlap A.  That is, we want close,\\nyet not touching features only."
    iu: "Ignore features in B that are upstream of features in A.\\nThis option requires -D and follows its orientation\\nrules for determining what is \\\"upstream\\\"."
    id: "Ignore features in B that are downstream of features in A.\\nThis option requires -D and follows its orientation\\nrules for determining what is \\\"downstream\\\"."
    fu: "Choose first from features in B that are upstream of features in A.\\nThis option requires -D and follows its orientation\\nrules for determining what is \\\"upstream\\\"."
    fd: "Choose first from features in B that are downstream of features in A.\\nThis option requires -D and follows its orientation\\nrules for determining what is \\\"downstream\\\"."
    how_ties_closest: "How ties for closest feature are handled.  This occurs when two\\nfeatures in B have exactly the same \\\"closeness\\\" with A.\\nBy default, all such features in B are reported.\\nHere are all the options:\\n- \\\"all\\\"    Report all ties (default).\\n- \\\"first\\\"  Report the first tie that occurred in the B file.\\n- \\\"last\\\"   Report the last tie that occurred in the B file."
    mdb: "How multiple databases are resolved.\\n- \\\"each\\\"    Report closest records for each database (default).\\n- \\\"all\\\"  Report closest records among all databases."
    report_closest_hits: "Report the k closest hits. Default is 1. If tieMode = \\\"all\\\",\\n- all ties will still be reported."
    require_query_have: "Require that the query and the closest hit have different names.\\nFor BED, the 4th column is compared."
    require_same_strandedness: "Require same strandedness.  That is, only report hits in B\\nthat overlap A on the _same_ strand.\\n- By default, overlaps are reported without respect to strand."
    require_different_strandedness: "Require different strandedness.  That is, only report hits in B\\nthat overlap A on the _opposite_ strand.\\n- By default, overlaps are reported without respect to strand."
    minimum_overlap_a: "Minimum overlap required as a fraction of A.\\n- Default is 1E-9 (i.e., 1bp).\\n- FLOAT (e.g. 0.50)"
    minimum_overlap_b: "Minimum overlap required as a fraction of B.\\n- Default is 1E-9 (i.e., 1bp).\\n- FLOAT (e.g. 0.50)"
    require_overlap_be: "Require that the fraction overlap be reciprocal for A AND B.\\n- In other words, if -f is 0.90 and -r is used, this requires\\nthat B overlap 90% of A and A _also_ overlaps 90% of B."
    require_fraction_be: "Require that the minimum fraction be satisfied for A OR B.\\n- In other words, if -e is used with -f 0.90 and -F 0.10 this requires\\nthat either 90% of A is covered OR 10% of  B is covered.\\nWithout -e, both fractions would have to be satisfied."
    split: "Treat \\\"split\\\" BAM or BED12 entries as distinct BED intervals."
    provide_genome_file: "Provide a genome file to enforce consistent chromosome sort order\\nacross input files. Only applies when used with -sorted option."
    no_name_check: "For sorted data, don't throw an error if the file has different naming conventions\\nfor the same chromosome. ex. \\\"chr1\\\" vs \\\"chr01\\\"."
    names: "When using multiple databases, provide an alias for each that\\nwill appear instead of a fileId when also printing the DB record."
    filenames: "When using multiple databases, show each complete filename\\ninstead of a fileId when also printing the DB record."
    sort_out: "When using multiple databases, sort the output DB hits\\nfor each record."
    bed: "If using BAM input, write output as BED."
    header: "the header from the A file prior to results."
    no_buf: "Disable buffered output. Using this option will cause each line\\nof output to be printed as it is generated, rather than saved\\nin a buffer. This will make printing large output files\\nnoticeably slower, but can be useful in conjunction with\\nother software tools and scripts that need to process one\\nline of bedtools output at a time."
    i_obuf: "Specify amount of memory to use for input buffer.\\nTakes an integer argument. Optional suffixes K/M/G supported.\\nNote: currently has no effect with compressed files."
    b: ""
    a: ""
    bed_tools: ""
    closest: ""
  }
  output {
    File out_stdout = stdout()
  }
}