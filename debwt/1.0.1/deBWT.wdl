version 1.0

task DeBWT {
  input {
    String reference
  }
  command <<<
    deBWT \
      ~{reference}
  >>>
  parameter_meta {
    reference: ""
  }
}