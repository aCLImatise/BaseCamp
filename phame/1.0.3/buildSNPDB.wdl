version 1.0

task BuildSNPDB.pl {
  input {
    Boolean iI
    Boolean rR
    Boolean lL
  }
  command <<<
    buildSNPDB.pl \
      ~{true="-i" false="" iI} \
      ~{true="-r" false="" rR} \
      ~{true="-l" false="" lL}
  >>>
}