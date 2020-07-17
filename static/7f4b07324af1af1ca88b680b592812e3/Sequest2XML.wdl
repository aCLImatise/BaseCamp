version 1.0

task Sequest2XML {
  input {
    String html_file
  }
  command <<<
    Sequest2XML \
      ~{html_file}
  >>>
  parameter_meta {
    html_file: ""
  }
}