version 1.0

task Tag2pospl {
  input {
    File tag_file
  }
  command <<<
    tag2pos_pl \
      ~{tag_file}
  >>>
  parameter_meta {
    tag_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}