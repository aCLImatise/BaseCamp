version 1.0

task Gradesamsh {
  input {
    String in
  }
  command <<<
    gradesam_sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
  output {
    File out_stdout = stdout()
  }
}