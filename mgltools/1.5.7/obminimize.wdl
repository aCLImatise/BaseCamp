version 1.0

task Obminimize {
  input {
    String cC
    Boolean cgCg
    Boolean sdSd
    Boolean newtonNewton
    String ffFf
    String nN
    Boolean cutCut
    String rvRvDw
    String releRele
    String pfPf
    File? filenameFilename
  }
  command <<<
    obminimize \
      ~{filenameFilename} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{true="-cg" false="" cgCg} \
      ~{true="-sd" false="" sdSd} \
      ~{true="-newton" false="" newtonNewton} \
      ~{if defined(ffFf) then ("-ff " +  '"' + ffFf + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{true="-cut" false="" cutCut} \
      ~{if defined(rvRvDw) then ("-rvdw " +  '"' + rvRvDw + '"') else ""} \
      ~{if defined(releRele) then ("-rele " +  '"' + releRele + '"') else ""} \
      ~{if defined(pfPf) then ("-pf " +  '"' + pfPf + '"') else ""}
  >>>
}