version 1.0

task Filterbarcodes.sh {
  input {
    String in
  }
  command <<<
    filterbarcodes.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}