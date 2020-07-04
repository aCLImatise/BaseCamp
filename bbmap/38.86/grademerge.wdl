version 1.0

task Grademerge.sh {
  input {
    String in
  }
  command <<<
    grademerge.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}