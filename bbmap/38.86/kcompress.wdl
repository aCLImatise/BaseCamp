version 1.0

task Kcompress.sh {
  input {
    String in
  }
  command <<<
    kcompress.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}