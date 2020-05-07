version 1.0

task _xmlcatalog {
  input {
    Boolean sgmlSgml
    Boolean shellShell
    Boolean createCreate
    Boolean addAdd
    Boolean addAdd
    Boolean delDel
    Boolean noNoOut
    Boolean noNoSuperUpdate
    Boolean verboseVerbose
  }
  command <<<
    _xmlcatalog \
      ~{true="--sgml" false="" sgmlSgml} \
      ~{true="--shell" false="" shellShell} \
      ~{true="--create" false="" createCreate} \
      ~{true="--add" false="" addAdd} \
      ~{true="--add" false="" addAdd} \
      ~{true="--del" false="" delDel} \
      ~{true="--noout" false="" noNoOut} \
      ~{true="--no-super-update" false="" noNoSuperUpdate} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}