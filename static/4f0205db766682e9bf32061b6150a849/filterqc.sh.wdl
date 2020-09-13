version 1.0

task Filterqcsh {
  input {
    String in
  }
  command <<<
    filterqc_sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
  output {
    File out_stdout = stdout()
  }
}