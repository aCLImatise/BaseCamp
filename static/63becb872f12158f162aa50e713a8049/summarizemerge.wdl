version 1.0

task Summarizemerge.sh {
  input {
    String in
  }
  command <<<
    summarizemerge.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}