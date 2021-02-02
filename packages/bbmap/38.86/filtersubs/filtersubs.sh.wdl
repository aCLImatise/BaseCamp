version 1.0

task Filtersubssh {
  input {
    String in
  }
  command <<<
    filtersubs_sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
  output {
    File out_stdout = stdout()
  }
}