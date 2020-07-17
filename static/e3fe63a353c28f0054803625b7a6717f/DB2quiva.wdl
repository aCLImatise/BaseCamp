version 1.0

task DB2quiva {
  input {
    Boolean? vu
  }
  command <<<
    DB2quiva \
      ~{true="-vU" false="" vu}
  >>>
  parameter_meta {
    vu: ""
  }
}