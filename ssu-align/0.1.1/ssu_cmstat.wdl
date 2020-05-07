version 1.0

task SsuCmstat {
  input {
    Boolean gG
    Boolean mM
    String zZ
    Boolean allAll
    Boolean leLe
    Boolean geGe
    String betaBeta
    String qdbQdbFile
  }
  command <<<
    ssu-cmstat \
      ~{true="-g" false="" gG} \
      ~{true="-m" false="" mM} \
      ~{if defined(zZ) then ("-Z " +  '"' + zZ + '"') else ""} \
      ~{true="--all" false="" allAll} \
      ~{true="--le" false="" leLe} \
      ~{true="--ge" false="" geGe} \
      ~{if defined(betaBeta) then ("--beta " +  '"' + betaBeta + '"') else ""} \
      ~{if defined(qdbQdbFile) then ("--qdbfile " +  '"' + qdbQdbFile + '"') else ""}
  >>>
}