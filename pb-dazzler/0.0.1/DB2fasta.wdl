version 1.0

task DB2fasta {
  input {
    Boolean uU
    Boolean wW
  }
  command <<<
    DB2fasta \
      ~{true="-U" false="" uU} \
      ~{true="-w" false="" wW}
  >>>
}