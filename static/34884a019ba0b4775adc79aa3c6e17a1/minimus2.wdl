version 1.0

task Minimus2 {
  input {
    String prefix
  }
  command <<<
    minimus2 \
      ~{prefix}
  >>>
  parameter_meta {
    prefix: ""
  }
}