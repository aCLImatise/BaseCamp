version 1.0

task Summarizecrossblock.sh {
  input {
    String in
  }
  command <<<
    summarizecrossblock.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}