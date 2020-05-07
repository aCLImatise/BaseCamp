version 1.0

task Proot {
  input {
    Boolean rR
    Boolean bB
    Boolean qQ
    Boolean wW
    Boolean vV
    Boolean vV
    Boolean iI
    Boolean rR
    Boolean sS
  }
  command <<<
    proot \
      ~{true="-r" false="" rR} \
      ~{true="-b" false="" bB} \
      ~{true="-q" false="" qQ} \
      ~{true="-w" false="" wW} \
      ~{true="-v" false="" vV} \
      ~{true="-V" false="" vV} \
      ~{true="-i" false="" iI} \
      ~{true="-R" false="" rR} \
      ~{true="-S" false="" sS}
  >>>
}