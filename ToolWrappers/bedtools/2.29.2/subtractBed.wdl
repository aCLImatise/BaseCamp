version 1.0

task SubtractBed {
  input {
    Boolean? remove_entire_feature
    Boolean? same_a_when
    Boolean? wb
    Boolean? wo
    Boolean? require_same_strandedness
    Boolean? require_different_strandedness
    Boolean? minimum_overlap_a
    Boolean? minimum_overlap_b
    Boolean? require_overlap_be
    Boolean? require_fraction_be
    Boolean? split
    Boolean? provide_genome_file
    Boolean? no_name_check
    Int? sorted
    Boolean? bed
    File? header
    Boolean? no_buf
    Boolean? i_obuf
    String? b
    String? var_19
    String bed_tools
    String subtract
  }
  command <<<
    subtractBed \
      ~{bed_tools} \
      ~{subtract} \
      ~{if (remove_entire_feature) then "-A" else ""} \
      ~{if (same_a_when) then "-N" else ""} \
      ~{if (wb) then "-wb" else ""} \
      ~{if (wo) then "-wo" else ""} \
      ~{if (require_same_strandedness) then "-s" else ""} \
      ~{if (require_different_strandedness) then "-S" else ""} \
      ~{if (minimum_overlap_a) then "-f" else ""} \
      ~{if (minimum_overlap_b) then "-F" else ""} \
      ~{if (require_overlap_be) then "-r" else ""} \
      ~{if (require_fraction_be) then "-e" else ""} \
      ~{if (split) then "-split" else ""} \
      ~{if (provide_genome_file) then "-g" else ""} \
      ~{if (no_name_check) then "-nonamecheck" else ""} \
      ~{if defined(sorted) then ("-sorted " +  '"' + sorted + '"') else ""} \
      ~{if (bed) then "-bed" else ""} \
      ~{if defined(header) then ("-header " +  '"' + header + '"') else ""} \
      ~{if (no_buf) then "-nobuf" else ""} \
      ~{if (i_obuf) then "-iobuf" else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""} \
      ~{if defined(var_19) then ("-a " +  '"' + var_19 + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    remove_entire_feature: "Remove entire feature if any overlap.  That is, by default,\\nonly subtract the portion of A that overlaps B. Here, if\\nany overlap is found (or -f amount), the entire feature is removed."
    same_a_when: "Same as -A except when used with -f, the amount is the sum\\nof all features (not any single feature)."
    wb: "Write the original entry in B for each overlap.\\n- Useful for knowing _what_ A overlaps. Restricted by -f and -r."
    wo: "Write the original A and B entries plus the number of base\\npairs of overlap between the two features.\\n- Overlaps restricted by -f and -r.\\nOnly A features with overlap are reported."
    require_same_strandedness: "Require same strandedness.  That is, only report hits in B\\nthat overlap A on the _same_ strand.\\n- By default, overlaps are reported without respect to strand."
    require_different_strandedness: "Require different strandedness.  That is, only report hits in B\\nthat overlap A on the _opposite_ strand.\\n- By default, overlaps are reported without respect to strand."
    minimum_overlap_a: "Minimum overlap required as a fraction of A.\\n- Default is 1E-9 (i.e., 1bp).\\n- FLOAT (e.g. 0.50)"
    minimum_overlap_b: "Minimum overlap required as a fraction of B.\\n- Default is 1E-9 (i.e., 1bp).\\n- FLOAT (e.g. 0.50)"
    require_overlap_be: "Require that the fraction overlap be reciprocal for A AND B.\\n- In other words, if -f is 0.90 and -r is used, this requires\\nthat B overlap 90% of A and A _also_ overlaps 90% of B."
    require_fraction_be: "Require that the minimum fraction be satisfied for A OR B.\\n- In other words, if -e is used with -f 0.90 and -F 0.10 this requires\\nthat either 90% of A is covered OR 10% of  B is covered.\\nWithout -e, both fractions would have to be satisfied."
    split: "Treat \\\"split\\\" BAM or BED12 entries as distinct BED intervals."
    provide_genome_file: "Provide a genome file to enforce consistent chromosome sort order\\nacross input files. Only applies when used with -sorted option."
    no_name_check: "For sorted data, don't throw an error if the file has different naming conventions\\nfor the same chromosome. ex. \\\"chr1\\\" vs \\\"chr01\\\"."
    sorted: "the \\\"chromsweep\\\" algorithm for sorted (-k1,1 -k2,2n) input."
    bed: "If using BAM input, write output as BED."
    header: "the header from the A file prior to results."
    no_buf: "Disable buffered output. Using this option will cause each line\\nof output to be printed as it is generated, rather than saved\\nin a buffer. This will make printing large output files\\nnoticeably slower, but can be useful in conjunction with\\nother software tools and scripts that need to process one\\nline of bedtools output at a time."
    i_obuf: "Specify amount of memory to use for input buffer.\\nTakes an integer argument. Optional suffixes K/M/G supported.\\nNote: currently has no effect with compressed files.\\n"
    b: ""
    var_19: ""
    bed_tools: ""
    subtract: ""
  }
  output {
    File out_stdout = stdout()
  }
}