version 1.0

task Addadapterssh {
  input {
    String in
  }
  command <<<
    addadapters_sh \
      ~{in}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: ""
  }
  output {
    File out_stdout = stdout()
  }
}