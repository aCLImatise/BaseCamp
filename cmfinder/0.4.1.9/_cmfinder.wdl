version 1.0

task _cmfinder.pl {
  input {
    Boolean? use_blast_search
    String? maximum_number_candidates
    String? minimum_length_default
    String? maximum_length_default
    String? fraction_sequences_expected
    String? s_one
    String? s_two
    Boolean? combine
    Boolean? hmm
    Boolean? anchor
  }
  command <<<
    _cmfinder.pl \
      ~{true="-b" false="" use_blast_search} \
      ~{if defined(maximum_number_candidates) then ("-c " +  '"' + maximum_number_candidates + '"') else ""} \
      ~{if defined(minimum_length_default) then ("-m " +  '"' + minimum_length_default + '"') else ""} \
      ~{if defined(maximum_length_default) then ("-M " +  '"' + maximum_length_default + '"') else ""} \
      ~{if defined(fraction_sequences_expected) then ("-f " +  '"' + fraction_sequences_expected + '"') else ""} \
      ~{if defined(s_one) then ("-s1 " +  '"' + s_one + '"') else ""} \
      ~{if defined(s_two) then ("-s2 " +  '"' + s_two + '"') else ""} \
      ~{true="-combine" false="" combine} \
      ~{true="-hmm" false="" hmm} \
      ~{true="-anchor" false="" anchor}
  >>>
  parameter_meta {
    use_blast_search: "Do not use BLAST search to locate anchors"
    maximum_number_candidates: "The maximum number of candidates in each sequence. Default 40. No bigger than 100."
    minimum_length_default: "The minimum length of candidates. Default 30"
    maximum_length_default: "The maximum length of candidates. Default 100"
    fraction_sequences_expected: "The fraction of the sequences expected to contain the motif. Default 0.80"
    s_one: "The max number of output single stem-loop motifs"
    s_two: "The max number of output double stem-loop motifs    "
    combine: "Combine the output motifs. Default False"
    hmm: "Apply HMM filter for speed up. Default false."
    anchor: "[FASTA|BLAST|NONE]      Methods to compute the anchors    "
  }
}