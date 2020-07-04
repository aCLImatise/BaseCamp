version 1.0

task Bedextract {
  input {
    String zero
  }
  command <<<
    bedextract \
      ~{zero}
  >>>
  parameter_meta {
    zero: ""
  }
}