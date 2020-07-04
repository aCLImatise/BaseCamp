version 1.0

task BpFindBlastMatches.pl {
  input {
    Boolean? blast
    Boolean? fast_a
    Boolean? maximum_evalue_matches
    Boolean? number_base_to
    Boolean? five
    Boolean? three
    Boolean? number_display_starting
    Boolean? exact_match_display
    Boolean? header
  }
  command <<<
    bp_find-blast-matches.pl \
      ~{true="-blast" false="" blast} \
      ~{true="-fasta" false="" fast_a} \
      ~{true="-e" false="" maximum_evalue_matches} \
      ~{true="-p" false="" number_base_to} \
      ~{true="-5" false="" five} \
      ~{true="-3" false="" three} \
      ~{true="-n" false="" number_display_starting} \
      ~{true="-o" false="" exact_match_display} \
      ~{true="-header" false="" header}
  >>>
  parameter_meta {
    blast: "BLAST output file to read from. The alignment should use the file specified by '-fasta' option ideally"
    fast_a: "FASTA file to read from. This is where the sequence will be extracted from"
    maximum_evalue_matches: "Maximum e-value for matches (0.01 by default)"
    number_base_to: "Number of base pairs of 5' region to be included with the sequence"
    five: "Number of base pairs of 5' region only, excluding the regular sequence"
    three: "Number of base pairs of 3' region only, excluding the regular sequence"
    number_display_starting: "Number of top hits to display, starting with the best hit"
    exact_match_display: "Exact match to display (this option can't be used in conjunction with '-n'"
    header: "The FASTA header to display instead of the default"
  }
}