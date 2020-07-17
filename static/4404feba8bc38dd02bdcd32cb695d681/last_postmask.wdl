version 1.0

task LastPostmask {
  input {
    String in_dot_maf
  }
  command <<<
    last-postmask \
      ~{in_dot_maf}
  >>>
  parameter_meta {
    in_dot_maf: ""
  }
}