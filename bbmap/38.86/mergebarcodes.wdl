version 1.0

task Mergebarcodes.sh {
  input {
    String in
  }
  command <<<
    mergebarcodes.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}