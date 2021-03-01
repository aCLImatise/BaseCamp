version 1.0

task BedtoolsIntersect {
  input {
    Boolean? wa
    Boolean? wb
    Boolean? lo_j
    Boolean? wo
    Boolean? wao
    Boolean? write_original_entry_once
    Boolean? entry_report_number
    Boolean? entry_separately_report
    Boolean? only_report_entries
    Boolean? ub_am
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
    Boolean? names
    Boolean? filenames
    Boolean? sort_out
    Boolean? bed
    File? header
    Boolean? no_buf
    Boolean? i_obuf
    String? b
    String? a
  }
  command <<<
    bedtools intersect \
      ~{if (wa) then "-wa" else ""} \
      ~{if (wb) then "-wb" else ""} \
      ~{if (lo_j) then "-loj" else ""} \
      ~{if (wo) then "-wo" else ""} \
      ~{if (wao) then "-wao" else ""} \
      ~{if (write_original_entry_once) then "-u" else ""} \
      ~{if (entry_report_number) then "-c" else ""} \
      ~{if (entry_separately_report) then "-C" else ""} \
      ~{if (only_report_entries) then "-v" else ""} \
      ~{if (ub_am) then "-ubam" else ""} \
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
    docker: "None"
  }
  parameter_meta {
    wa: "Write the original entry in A for each overlap."
    wb: "Write the original entry in B for each overlap.\\n- Useful for knowing _what_ A overlaps. Restricted by -f and -r."
    lo_j: "Perform a \\\"left outer join\\\". That is, for each feature in A\\nreport each overlap with B.  If no overlaps are found,\\nreport a NULL feature for B."
    wo: "Write the original A and B entries plus the number of base\\npairs of overlap between the two features.\\n- Overlaps restricted by -f and -r.\\nOnly A features with overlap are reported."
    wao: "Write the original A and B entries plus the number of base\\npairs of overlap between the two features.\\n- Overlapping features restricted by -f and -r.\\nHowever, A features w/o overlap are also reported\\nwith a NULL B feature and overlap = 0."
    write_original_entry_once: "Write the original A entry _once_ if _any_ overlaps found in B.\\n- In other words, just report the fact >=1 hit was found.\\n- Overlaps restricted by -f and -r."
    entry_report_number: "For each entry in A, report the number of overlaps with B.\\n- Reports 0 for A entries that have no overlap with B.\\n- Overlaps restricted by -f, -F, -r, and -s."
    entry_separately_report: "For each entry in A, separately report the number of\\n- overlaps with each B file on a distinct line.\\n- Reports 0 for A entries that have no overlap with B.\\n- Overlaps restricted by -f, -F, -r, and -s."
    only_report_entries: "Only report those entries in A that have _no overlaps_ with B.\\n- Similar to \\\"grep -v\\\" (an homage)."
    ub_am: "Write uncompressed BAM output. Default writes compressed BAM."
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
    names: "When using multiple databases, provide an alias for each that\\nwill appear instead of a fileId when also printing the DB record."
    filenames: "When using multiple databases, show each complete filename\\ninstead of a fileId when also printing the DB record."
    sort_out: "When using multiple databases, sort the output DB hits\\nfor each record."
    bed: "If using BAM input, write output as BED."
    header: "the header from the A file prior to results."
    no_buf: "Disable buffered output. Using this option will cause each line\\nof output to be printed as it is generated, rather than saved\\nin a buffer. This will make printing large output files\\nnoticeably slower, but can be useful in conjunction with\\nother software tools and scripts that need to process one\\nline of bedtools output at a time."
    i_obuf: "Specify amount of memory to use for input buffer.\\nTakes an integer argument. Optional suffixes K/M/G supported.\\nNote: currently has no effect with compressed files."
    b: ""
    a: ""
  }
  output {
    File out_stdout = stdout()
  }
}