version 1.0

task Removebadbarcodes.sh {
  input {
    String in
  }
  command <<<
    removebadbarcodes.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}