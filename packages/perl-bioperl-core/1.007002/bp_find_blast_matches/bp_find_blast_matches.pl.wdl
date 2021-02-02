version 1.0

task BpFindblastmatchespl {
  input {
    File? blast
    Boolean? fast_a
    Boolean? maximum_evalue_matches
    Boolean? number_to_included
    Boolean? number_only_excluding
    Boolean? exact_match_display
    Boolean? header
    Boolean? three
    Boolean? n
    String blast_file
  }
  command <<<
    bp_find_blast_matches_pl \
      ~{blast_file} \
      ~{if (blast) then "-blast" else ""} \
      ~{if (fast_a) then "-fasta" else ""} \
      ~{if (maximum_evalue_matches) then "-e" else ""} \
      ~{if (number_to_included) then "-p" else ""} \
      ~{if (number_only_excluding) then "-5" else ""} \
      ~{if (exact_match_display) then "-o" else ""} \
      ~{if (header) then "-header" else ""} \
      ~{if (three) then "-3" else ""} \
      ~{if (n) then "-n" else ""}
  >>>
  parameter_meta {
    blast: "BLAST output file to read from. The alignment should use the file\\nspecified by '-fasta' option ideally"
    fast_a: "FASTA file to read from. This is where the sequence will be\\nextracted from"
    maximum_evalue_matches: "Maximum e-value for matches (0.01 by default)"
    number_to_included: "Number of base pairs of 5' region to be included with the sequence"
    number_only_excluding: "Number of base pairs of 5' region only, excluding the regular"
    exact_match_display: "Exact match to display (this option can't be used in conjunction\\nwith '-n'"
    header: "The FASTA header to display instead of the default\\n"
    three: ""
    n: ""
    blast_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_blast = "${in_blast}"
  }
}