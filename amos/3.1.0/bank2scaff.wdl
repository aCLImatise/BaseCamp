version 1.0

task Bank2scaff {
  input {
    Boolean vV
    Boolean eE
    Boolean iI
    File eE
    File iI
    Boolean uU
    Boolean lL
    Boolean fF
    Boolean gG
    Boolean jJ
    String gG
    String nN
    String? bank2scaffBank2scaff
  }
  command <<<
    bank2scaff \
      ~{bank2scaffBank2scaff} \
      ~{true="-v" false="" vV} \
      ~{true="-e" false="" eE} \
      ~{true="-i" false="" iI} \
      ~{if defined(eE) then ("-E " +  '"' + eE + '"') else ""} \
      ~{if defined(iI) then ("-I " +  '"' + iI + '"') else ""} \
      ~{true="-u" false="" uU} \
      ~{true="-l" false="" lL} \
      ~{true="-f" false="" fF} \
      ~{true="-g" false="" gG} \
      ~{true="-j" false="" jJ} \
      ~{if defined(gG) then ("-G " +  '"' + gG + '"') else ""} \
      ~{if defined(nN) then ("-N " +  '"' + nN + '"') else ""}
  >>>
}