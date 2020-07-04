version 1.0

task SeqtkSubseq {
  input {
    Boolean? tab_delimited_output
    Boolean? exclusion_instead_inclusion
    Int? sequence_line_length
    String in_dot_fa
    String in_dot_bed
  }
  command <<<
    seqtk subseq \
      ~{in_dot_fa} \
      ~{in_dot_bed} \
      ~{true="-t" false="" tab_delimited_output} \
      ~{true="-e" false="" exclusion_instead_inclusion} \
      ~{if defined(sequence_line_length) then ("-l " +  '"' + sequence_line_length + '"') else ""}
  >>>
  parameter_meta {
    tab_delimited_output: "TAB delimited output"
    exclusion_instead_inclusion: "exclusion instead of inclusion for sequences from <name.list>"
    sequence_line_length: "sequence line length [0]"
    in_dot_fa: ""
    in_dot_bed: ""
  }
}