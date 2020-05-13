version 1.0

task FermiRopebwt {
  input {
    String aA
    Int rR
    Int nN
    File oO
    File fF
    Int vV
    Boolean bB
    Boolean tT
    Boolean fF
    Boolean rR
    Boolean nN
    Boolean oO
    Boolean tT
    String? ropeRopeBwt
    String? inInFqGz
  }
  command <<<
    fermi ropebwt \
      ~{ropeRopeBwt} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""} \
      ~{true="-b" false="" bB} \
      ~{true="-t" false="" tT} \
      ~{true="-F" false="" fF} \
      ~{true="-R" false="" rR} \
      ~{true="-N" false="" nN} \
      ~{true="-O" false="" oO} \
      ~{true="-T" false="" tT} \
      ~{inInFqGz}
  >>>
}