version 1.0

task DAM2fasta {
  input {
    Boolean? vu
  }
  command <<<
    DAM2fasta \
      ~{true="-vU" false="" vu}
  >>>
  parameter_meta {
    vu: ""
  }
}