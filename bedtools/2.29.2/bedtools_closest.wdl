version 1.0

task BedtoolsClosest {
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
    Boolean? report_k_hits
    Boolean? require_query_hit
    Boolean? require_same_strandedness
    Boolean? require_different_strandedness
    Boolean? minimum_overlap_a
    Boolean? minimum_overlap_b
    Boolean? require_fraction_overlap
    Boolean? require_minimum_fraction
    Boolean? split
    Boolean? provide_genome_file
    Boolean? no_name_check
    Boolean? names
    Boolean? filenames
    Boolean? sort_out
    Boolean? bed
    String? header
    Boolean? no_buf
    Boolean? i_obuf
    String? a
    String? b
  }
  command <<<
    bedtools closest \
      ~{true="-d" false="" addition_closest_feature} \
      ~{true="-D" false="" d_report_feature} \
      ~{true="-io" false="" io} \
      ~{true="-iu" false="" iu} \
      ~{true="-id" false="" id} \
      ~{true="-fu" false="" fu} \
      ~{true="-fd" false="" fd} \
      ~{true="-t" false="" how_ties_closest} \
      ~{true="-mdb" false="" mdb} \
      ~{true="-k" false="" report_k_hits} \
      ~{true="-N" false="" require_query_hit} \
      ~{true="-s" false="" require_same_strandedness} \
      ~{true="-S" false="" require_different_strandedness} \
      ~{true="-f" false="" minimum_overlap_a} \
      ~{true="-F" false="" minimum_overlap_b} \
      ~{true="-r" false="" require_fraction_overlap} \
      ~{true="-e" false="" require_minimum_fraction} \
      ~{true="-split" false="" split} \
      ~{true="-g" false="" provide_genome_file} \
      ~{true="-nonamecheck" false="" no_name_check} \
      ~{true="-names" false="" names} \
      ~{true="-filenames" false="" filenames} \
      ~{true="-sortout" false="" sort_out} \
      ~{true="-bed" false="" bed} \
      ~{if defined(header) then ("-header " +  '"' + header + '"') else ""} \
      ~{true="-nobuf" false="" no_buf} \
      ~{true="-iobuf" false="" i_obuf} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""}
  >>>
  parameter_meta {
    addition_closest_feature: "In addition to the closest feature in B,  report its distance to A as an extra column. - The reported distance for overlapping features will be 0."
    d_report_feature: "Like -d, report the closest feature in B, and its distance to A as an extra column. Unlike -d, use negative distances to report upstream features. The options for defining which orientation is \"upstream\" are: - \"ref\"   Report distance with respect to the reference genome.  B features with a lower (start, stop) are upstream - \"a\"     Report distance with respect to A. When A is on the - strand, \"upstream\" means B has a higher (start,stop). - \"b\"     Report distance with respect to B. When B is on the - strand, \"upstream\" means A has a higher (start,stop)."
    io: "Ignore features in B that overlap A.  That is, we want close, yet not touching features only."
    iu: "Ignore features in B that are upstream of features in A. This option requires -D and follows its orientation rules for determining what is \"upstream\"."
    id: "Ignore features in B that are downstream of features in A. This option requires -D and follows its orientation rules for determining what is \"downstream\"."
    fu: "Choose first from features in B that are upstream of features in A. This option requires -D and follows its orientation rules for determining what is \"upstream\"."
    fd: "Choose first from features in B that are downstream of features in A. This option requires -D and follows its orientation rules for determining what is \"downstream\"."
    how_ties_closest: "How ties for closest feature are handled.  This occurs when two features in B have exactly the same \"closeness\" with A. By default, all such features in B are reported. Here are all the options: - \"all\"    Report all ties (default). - \"first\"  Report the first tie that occurred in the B file. - \"last\"   Report the last tie that occurred in the B file."
    mdb: "How multiple databases are resolved. - \"each\"    Report closest records for each database (default). - \"all\"  Report closest records among all databases."
    report_k_hits: "Report the k closest hits. Default is 1. If tieMode = \"all\",  - all ties will still be reported."
    require_query_hit: "Require that the query and the closest hit have different names. For BED, the 4th column is compared."
    require_same_strandedness: "Require same strandedness.  That is, only report hits in B that overlap A on the _same_ strand. - By default, overlaps are reported without respect to strand."
    require_different_strandedness: "Require different strandedness.  That is, only report hits in B that overlap A on the _opposite_ strand. - By default, overlaps are reported without respect to strand."
    minimum_overlap_a: "Minimum overlap required as a fraction of A. - Default is 1E-9 (i.e., 1bp). - FLOAT (e.g. 0.50)"
    minimum_overlap_b: "Minimum overlap required as a fraction of B. - Default is 1E-9 (i.e., 1bp). - FLOAT (e.g. 0.50)"
    require_fraction_overlap: "Require that the fraction overlap be reciprocal for A AND B. - In other words, if -f is 0.90 and -r is used, this requires that B overlap 90% of A and A _also_ overlaps 90% of B."
    require_minimum_fraction: "Require that the minimum fraction be satisfied for A OR B. - In other words, if -e is used with -f 0.90 and -F 0.10 this requires that either 90% of A is covered OR 10% of  B is covered. Without -e, both fractions would have to be satisfied."
    split: "Treat \"split\" BAM or BED12 entries as distinct BED intervals."
    provide_genome_file: "Provide a genome file to enforce consistent chromosome sort order across input files. Only applies when used with -sorted option."
    no_name_check: "For sorted data, don't throw an error if the file has different naming conventions for the same chromosome. ex. \"chr1\" vs \"chr01\"."
    names: "When using multiple databases, provide an alias for each that will appear instead of a fileId when also printing the DB record."
    filenames: "When using multiple databases, show each complete filename instead of a fileId when also printing the DB record."
    sort_out: "When using multiple databases, sort the output DB hits for each record."
    bed: "If using BAM input, write output as BED."
    header: "the header from the A file prior to results."
    no_buf: "Disable buffered output. Using this option will cause each line of output to be printed as it is generated, rather than saved in a buffer. This will make printing large output files  noticeably slower, but can be useful in conjunction with other software tools and scripts that need to process one line of bedtools output at a time."
    i_obuf: "Specify amount of memory to use for input buffer. Takes an integer argument. Optional suffixes K/M/G supported. Note: currently has no effect with compressed files."
    a: ""
    b: ""
  }
}