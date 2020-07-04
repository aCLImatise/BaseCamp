version 1.0

task BedextractTypical {
  input {
    String zero
  }
  command <<<
    bedextract-typical \
      ~{zero}
  >>>
  parameter_meta {
    zero: ""
  }
}