version 1.0

task Json2conf.pl {
  input {
    File file_dot_json
  }
  command <<<
    json2conf.pl \
      ~{file_dot_json}
  >>>
  parameter_meta {
    file_dot_json: ""
  }
}