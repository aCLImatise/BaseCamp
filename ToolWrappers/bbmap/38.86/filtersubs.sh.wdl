version 1.0

task Filtersubssh {
  input {
    String in
  }
  command <<<
    filtersubs_sh \
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