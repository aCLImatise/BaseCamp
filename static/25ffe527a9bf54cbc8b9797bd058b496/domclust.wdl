version 1.0

task Domclust {
  input {
    Boolean sS
    Boolean dD
    Boolean cC
    Boolean ciCi
    Boolean mM
    Boolean mrMr
    Boolean cC
    Boolean vV
    Boolean nN
    Boolean neNe
    Boolean pP
    Boolean hH
    Boolean hoHo
    Boolean aAI
    Boolean aoAo
    Boolean tT
    Boolean rR
    Boolean oO
    String oOOutGroup
    Boolean oOHorizWeight
    Boolean oOOutputScore
    String oOMeta
    Boolean oOTaxMapOut
    String oOTaxMapSpec
  }
  command <<<
    domclust \
      ~{true="-S" false="" sS} \
      ~{true="-d" false="" dD} \
      ~{true="-c" false="" cC} \
      ~{true="-ci" false="" ciCi} \
      ~{true="-m" false="" mM} \
      ~{true="-mr" false="" mrMr} \
      ~{true="-C" false="" cC} \
      ~{true="-V" false="" vV} \
      ~{true="-n" false="" nN} \
      ~{true="-ne" false="" neNe} \
      ~{true="-p" false="" pP} \
      ~{true="-H" false="" hH} \
      ~{true="-HO" false="" hoHo} \
      ~{true="-ai" false="" aAI} \
      ~{true="-ao" false="" aoAo} \
      ~{true="-t" false="" tT} \
      ~{true="-R" false="" rR} \
      ~{true="-o" false="" oO} \
      ~{if defined(oOOutGroup) then ("-Ooutgroup " +  '"' + oOOutGroup + '"') else ""} \
      ~{true="-Ohorizweight" false="" oOHorizWeight} \
      ~{true="-OoutputScore" false="" oOOutputScore} \
      ~{if defined(oOMeta) then ("-Ometa " +  '"' + oOMeta + '"') else ""} \
      ~{true="-OtaxMapOut" false="" oOTaxMapOut} \
      ~{if defined(oOTaxMapSpec) then ("-OtaxMapSpec " +  '"' + oOTaxMapSpec + '"') else ""}
  >>>
}