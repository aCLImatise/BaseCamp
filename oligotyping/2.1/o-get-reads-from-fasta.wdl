version 1.0

task OGetReadsFromFasta {
  input {
    Boolean sS
  }
  command <<<
    o-get-reads-from-fasta \
      ~{true="-S" false="" sS}
  >>>
}