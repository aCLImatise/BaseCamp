version 1.0

task Grademergesh {
  input {
    String in
  }
  command <<<
    grademerge_sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
  output {
    File out_stdout = stdout()
  }
}