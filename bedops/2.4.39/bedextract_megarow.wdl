version 1.0

task BedextractMegarow {
  input {
    String zero
  }
  command <<<
    bedextract-megarow \
      ~{zero}
  >>>
  parameter_meta {
    zero: ""
  }
}