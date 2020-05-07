version 1.0

task Blastpgp {
  input {
    Boolean mM
    Boolean tT
    Boolean qQ
    Boolean uU
  }
  command <<<
    blastpgp \
      ~{true="-m" false="" mM} \
      ~{true="-t" false="" tT} \
      ~{true="-q" false="" qQ} \
      ~{true="-u" false="" uU}
  >>>
}