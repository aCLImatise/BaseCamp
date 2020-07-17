version 1.0

task Tag2pos.pl {
  input {
    String tag_file
  }
  command <<<
    tag2pos.pl \
      ~{tag_file}
  >>>
  parameter_meta {
    tag_file: ""
  }
}