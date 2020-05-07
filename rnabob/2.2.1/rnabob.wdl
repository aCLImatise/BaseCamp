version 1.0

task Rnabob {
  input {
    Boolean cC
    Boolean qQ
    Boolean sS
    Boolean fF
  }
  command <<<
    rnabob \
      ~{true="-c" false="" cC} \
      ~{true="-q" false="" qQ} \
      ~{true="-s" false="" sS} \
      ~{true="-F" false="" fF}
  >>>
}