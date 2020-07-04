version 1.0

task Countbarcodes.sh {
  input {
    String in
  }
  command <<<
    countbarcodes.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}