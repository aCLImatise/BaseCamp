version 1.0

task Minimus2Blat {
  input {
    String prefix
  }
  command <<<
    minimus2-blat \
      ~{prefix}
  >>>
  parameter_meta {
    prefix: ""
  }
}