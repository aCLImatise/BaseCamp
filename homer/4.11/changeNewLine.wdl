version 1.0

task ChangeNewLine.pl {
  input {
    String text_file
  }
  command <<<
    changeNewLine.pl \
      ~{text_file}
  >>>
  parameter_meta {
    text_file: ""
  }
}