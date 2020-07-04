version 1.0

task BedextractFloat128 {
  input {
    String zero
  }
  command <<<
    bedextract-float128 \
      ~{zero}
  >>>
  parameter_meta {
    zero: ""
  }
}