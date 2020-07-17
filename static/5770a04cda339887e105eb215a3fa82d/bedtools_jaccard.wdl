version 1.0

task BedtoolsJaccard {
  input {
    Boolean? require_same_strandedness
    Boolean? require_different_strandedness
    Boolean? minimum_overlap_a
    Boolean? minimum_overlap_b
    Boolean? require_fraction_overlap
    Boolean? require_minimum_fraction
    Boolean? split
    Boolean? provide_genome_file
    Boolean? no_name_check
    Boolean? bed
    String? header
    Boolean? no_buf
    Boolean? i_obuf
    String? a
    String? b
  }
  command <<<
    bedtools jaccard \
      ~{true="-s" false="" require_same_strandedness} \
      ~{true="-S" false="" require_different_strandedness} \
      ~{true="-f" false="" minimum_overlap_a} \
      ~{true="-F" false="" minimum_overlap_b} \
      ~{true="-r" false="" require_fraction_overlap} \
      ~{true="-e" false="" require_minimum_fraction} \
      ~{true="-split" false="" split} \
      ~{true="-g" false="" provide_genome_file} \
      ~{true="-nonamecheck" false="" no_name_check} \
      ~{true="-bed" false="" bed} \
      ~{if defined(header) then ("-header " +  '"' + header + '"') else ""} \
      ~{true="-nobuf" false="" no_buf} \
      ~{true="-iobuf" false="" i_obuf} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""}
  >>>
  parameter_meta {
    require_same_strandedness: "Require same strandedness.  That is, only report hits in B that overlap A on the _same_ strand. - By default, overlaps are reported without respect to strand."
    require_different_strandedness: "Require different strandedness.  That is, only report hits in B that overlap A on the _opposite_ strand. - By default, overlaps are reported without respect to strand."
    minimum_overlap_a: "Minimum overlap required as a fraction of A. - Default is 1E-9 (i.e., 1bp). - FLOAT (e.g. 0.50)"
    minimum_overlap_b: "Minimum overlap required as a fraction of B. - Default is 1E-9 (i.e., 1bp). - FLOAT (e.g. 0.50)"
    require_fraction_overlap: "Require that the fraction overlap be reciprocal for A AND B. - In other words, if -f is 0.90 and -r is used, this requires that B overlap 90% of A and A _also_ overlaps 90% of B."
    require_minimum_fraction: "Require that the minimum fraction be satisfied for A OR B. - In other words, if -e is used with -f 0.90 and -F 0.10 this requires that either 90% of A is covered OR 10% of  B is covered. Without -e, both fractions would have to be satisfied."
    split: "Treat \"split\" BAM or BED12 entries as distinct BED intervals."
    provide_genome_file: "Provide a genome file to enforce consistent chromosome sort order across input files. Only applies when used with -sorted option."
    no_name_check: "For sorted data, don't throw an error if the file has different naming conventions for the same chromosome. ex. \"chr1\" vs \"chr01\"."
    bed: "If using BAM input, write output as BED."
    header: "the header from the A file prior to results."
    no_buf: "Disable buffered output. Using this option will cause each line of output to be printed as it is generated, rather than saved in a buffer. This will make printing large output files  noticeably slower, but can be useful in conjunction with other software tools and scripts that need to process one line of bedtools output at a time."
    i_obuf: "Specify amount of memory to use for input buffer. Takes an integer argument. Optional suffixes K/M/G supported. Note: currently has no effect with compressed files."
    a: ""
    b: ""
  }
}