version 1.0

task FindCompounds.pl {
  input {
    Boolean? new_line
    String output_file
    String source_file
    String compound_word_list
  }
  command <<<
    find-compounds.pl \
      ~{output_file} \
      ~{source_file} \
      ~{compound_word_list} \
      ~{true="--newline" false="" new_line}
  >>>
  parameter_meta {
    new_line: "Find compound words in one line."
    output_file: ""
    source_file: ""
    compound_word_list: ""
  }
}