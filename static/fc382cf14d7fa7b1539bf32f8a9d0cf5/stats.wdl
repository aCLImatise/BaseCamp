version 1.0

task Stats.sh {
  input {
    String in
  }
  command <<<
    stats.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}