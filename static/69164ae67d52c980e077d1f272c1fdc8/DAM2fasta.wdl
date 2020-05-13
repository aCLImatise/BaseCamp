version 1.0

task DAM2fasta {
  input {
    Boolean uU
    Boolean wW
  }
  command <<<
    DAM2fasta \
      ~{true="-U" false="" uU} \
      ~{true="-w" false="" wW}
  >>>
}