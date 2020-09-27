version 1.0

task Cmfinderpl {
  input {
    Boolean? use_blast_search
    Int? maximum_number_default
    Int? minimum_length_candidates
    Int? maximum_length_candidates
    Int? fraction_sequences_expected
    Int? s_one
    Int? s_two
    Boolean? combine
    Boolean? hmm
    Boolean? anchor
  }
  command <<<
    _cmfinder_pl \
      ~{if (use_blast_search) then "-b" else ""} \
      ~{if defined(maximum_number_default) then ("-c " +  '"' + maximum_number_default + '"') else ""} \
      ~{if defined(minimum_length_candidates) then ("-m " +  '"' + minimum_length_candidates + '"') else ""} \
      ~{if defined(maximum_length_candidates) then ("-M " +  '"' + maximum_length_candidates + '"') else ""} \
      ~{if defined(fraction_sequences_expected) then ("-f " +  '"' + fraction_sequences_expected + '"') else ""} \
      ~{if defined(s_one) then ("-s1 " +  '"' + s_one + '"') else ""} \
      ~{if defined(s_two) then ("-s2 " +  '"' + s_two + '"') else ""} \
      ~{if (combine) then "-combine" else ""} \
      ~{if (hmm) then "-hmm" else ""} \
      ~{if (anchor) then "-anchor" else ""}
  >>>
  parameter_meta {
    use_blast_search: "Do not use BLAST search to locate anchors"
    maximum_number_default: "The maximum number of candidates in each sequence. Default 40. No bigger than 100."
    minimum_length_candidates: "The minimum length of candidates. Default 30"
    maximum_length_candidates: "The maximum length of candidates. Default 100"
    fraction_sequences_expected: "The fraction of the sequences expected to contain the motif. Default 0.80"
    s_one: "The max number of output single stem-loop motifs"
    s_two: "The max number of output double stem-loop motifs"
    combine: "Combine the output motifs. Default False"
    hmm: "Apply HMM filter for speed up. Default false."
    anchor: "[FASTA|BLAST|NONE]      Methods to compute the anchors"
  }
  output {
    File out_stdout = stdout()
  }
}