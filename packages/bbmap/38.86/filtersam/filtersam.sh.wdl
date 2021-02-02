version 1.0

task Filtersamsh {
  input {
    String in
  }
  command <<<
    filtersam_sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
  output {
    File out_stdout = stdout()
  }
}