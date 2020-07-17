version 1.0

task BedtoolsIntersect {
  input {
    Boolean? wa
    Boolean? wb
    Boolean? lo_j
    Boolean? wo
    Boolean? wao
    Boolean? write_original_entry_
    Boolean? entry_report_number
    Boolean? entry_separately_report
    Boolean? only_report_entries
    Boolean? ub_am
    Boolean? require_same_strandedness
    Boolean? require_different_strandedness
    Boolean? minimum_overlap_a
    Boolean? minimum_overlap_b
    Boolean? require_fraction_overlap
    Boolean? require_minimum_fraction
    Boolean? split
    Boolean? provide_genome_file
    Boolean? no_name_check
    String? sorted
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
    bedtools intersect \
      ~{true="-wa" false="" wa} \
      ~{true="-wb" false="" wb} \
      ~{true="-loj" false="" lo_j} \
      ~{true="-wo" false="" wo} \
      ~{true="-wao" false="" wao} \
      ~{true="-u" false="" write_original_entry_} \
      ~{true="-c" false="" entry_report_number} \
      ~{true="-C" false="" entry_separately_report} \
      ~{true="-v" false="" only_report_entries} \
      ~{true="-ubam" false="" ub_am} \
      ~{true="-s" false="" require_same_strandedness} \
      ~{true="-S" false="" require_different_strandedness} \
      ~{true="-f" false="" minimum_overlap_a} \
      ~{true="-F" false="" minimum_overlap_b} \
      ~{true="-r" false="" require_fraction_overlap} \
      ~{true="-e" false="" require_minimum_fraction} \
      ~{true="-split" false="" split} \
      ~{true="-g" false="" provide_genome_file} \
      ~{true="-nonamecheck" false="" no_name_check} \
      ~{if defined(sorted) then ("-sorted " +  '"' + sorted + '"') else ""} \
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
    wa: "Write the original entry in A for each overlap."
    wb: "Write the original entry in B for each overlap. - Useful for knowing _what_ A overlaps. Restricted by -f and -r."
    lo_j: "Perform a \"left outer join\". That is, for each feature in A report each overlap with B.  If no overlaps are found,  report a NULL feature for B."
    wo: "Write the original A and B entries plus the number of base pairs of overlap between the two features. - Overlaps restricted by -f and -r. Only A features with overlap are reported."
    wao: "Write the original A and B entries plus the number of base pairs of overlap between the two features. - Overlapping features restricted by -f and -r. However, A features w/o overlap are also reported with a NULL B feature and overlap = 0."
    write_original_entry_: "Write the original A entry _once_ if _any_ overlaps found in B. - In other words, just report the fact >=1 hit was found. - Overlaps restricted by -f and -r."
    entry_report_number: "For each entry in A, report the number of overlaps with B. - Reports 0 for A entries that have no overlap with B. - Overlaps restricted by -f, -F, -r, and -s."
    entry_separately_report: "For each entry in A, separately report the number of - overlaps with each B file on a distinct line. - Reports 0 for A entries that have no overlap with B. - Overlaps restricted by -f, -F, -r, and -s."
    only_report_entries: "Only report those entries in A that have _no overlaps_ with B. - Similar to \"grep -v\" (an homage)."
    ub_am: "Write uncompressed BAM output. Default writes compressed BAM."
    require_same_strandedness: "Require same strandedness.  That is, only report hits in B that overlap A on the _same_ strand. - By default, overlaps are reported without respect to strand."
    require_different_strandedness: "Require different strandedness.  That is, only report hits in B that overlap A on the _opposite_ strand. - By default, overlaps are reported without respect to strand."
    minimum_overlap_a: "Minimum overlap required as a fraction of A. - Default is 1E-9 (i.e., 1bp). - FLOAT (e.g. 0.50)"
    minimum_overlap_b: "Minimum overlap required as a fraction of B. - Default is 1E-9 (i.e., 1bp). - FLOAT (e.g. 0.50)"
    require_fraction_overlap: "Require that the fraction overlap be reciprocal for A AND B. - In other words, if -f is 0.90 and -r is used, this requires that B overlap 90% of A and A _also_ overlaps 90% of B."
    require_minimum_fraction: "Require that the minimum fraction be satisfied for A OR B. - In other words, if -e is used with -f 0.90 and -F 0.10 this requires that either 90% of A is covered OR 10% of  B is covered. Without -e, both fractions would have to be satisfied."
    split: "Treat \"split\" BAM or BED12 entries as distinct BED intervals."
    provide_genome_file: "Provide a genome file to enforce consistent chromosome sort order across input files. Only applies when used with -sorted option."
    no_name_check: "For sorted data, don't throw an error if the file has different naming conventions for the same chromosome. ex. \"chr1\" vs \"chr01\"."
    sorted: "the \"chromsweep\" algorithm for sorted (-k1,1 -k2,2n) input."
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