version 1.0

task Filtersamsh {
  input {
    String in
  }
  command <<<
    filtersam_sh \
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