version 1.0

task Dwgsim {
  input {
    Float rR
    Float fF
    Float rR
    Float xX
    Int iI
    Float yY
    Int nN
    Int cC
    Int sS
    String fF
    Boolean bB
    Boolean hH
    Int zZ
    Boolean mM
    File mM
    File bB
    File vV
    File xX
    String pP
    String qQ
    Float qQ
    Int sS
    String? inInReffA
    String? outOutPrefix
  }
  command <<<
    dwgsim \
      ~{inInReffA} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(fF) then ("-F " +  '"' + fF + '"') else ""} \
      ~{if defined(rR) then ("-R " +  '"' + rR + '"') else ""} \
      ~{if defined(xX) then ("-X " +  '"' + xX + '"') else ""} \
      ~{if defined(iI) then ("-I " +  '"' + iI + '"') else ""} \
      ~{if defined(yY) then ("-y " +  '"' + yY + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(sS) then ("-S " +  '"' + sS + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{true="-B" false="" bB} \
      ~{true="-H" false="" hH} \
      ~{if defined(zZ) then ("-z " +  '"' + zZ + '"') else ""} \
      ~{true="-M" false="" mM} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""} \
      ~{if defined(xX) then ("-x " +  '"' + xX + '"') else ""} \
      ~{if defined(pP) then ("-P " +  '"' + pP + '"') else ""} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{if defined(qQ) then ("-Q " +  '"' + qQ + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{outOutPrefix}
  >>>
}