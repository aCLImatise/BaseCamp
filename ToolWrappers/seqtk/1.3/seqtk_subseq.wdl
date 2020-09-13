version 1.0

task SeqtkSubseq {
  input {
    Boolean? tab_delimited_output
    Int? sequence_line_length
    String in_dot_fa
    String in_dot_bed
  }
  command <<<
    seqtk subseq \
      ~{in_dot_fa} \
      ~{in_dot_bed} \
      ~{if (tab_delimited_output) then "-t" else ""} \
      ~{if defined(sequence_line_length) then ("-l " +  '"' + sequence_line_length + '"') else ""}
  >>>
  parameter_meta {
    tab_delimited_output: "TAB delimited output"
    sequence_line_length: "sequence line length [0]"
    in_dot_fa: ""
    in_dot_bed: ""
  }
  output {
    File out_stdout = stdout()
  }
}