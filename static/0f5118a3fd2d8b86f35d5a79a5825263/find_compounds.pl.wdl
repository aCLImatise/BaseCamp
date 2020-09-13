version 1.0

task Findcompoundspl {
  input {
    Boolean? new_line
    String output_file
    String source_file
    String compound_word_list
  }
  command <<<
    find_compounds_pl \
      ~{output_file} \
      ~{source_file} \
      ~{compound_word_list} \
      ~{if (new_line) then "--newline" else ""}
  >>>
  parameter_meta {
    new_line: "Find compound words in one line."
    output_file: ""
    source_file: ""
    compound_word_list: ""
  }
  output {
    File out_stdout = stdout()
  }
}