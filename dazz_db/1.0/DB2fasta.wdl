version 1.0

task DB2fasta {
  input {
    Boolean? vu
  }
  command <<<
    DB2fasta \
      ~{true="-vU" false="" vu}
  >>>
  parameter_meta {
    vu: ""
  }
}