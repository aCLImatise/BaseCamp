version 1.0

task ArtificialErrors.py {
  input {
    String aseAse
    String adeAde
    String aAIe
    String inInV
    String cipCip
    String trpTrp
    Boolean abAb
    Boolean oO
  }
  command <<<
    artificial_errors.py \
      ~{if defined(aseAse) then ("-ase " +  '"' + aseAse + '"') else ""} \
      ~{if defined(adeAde) then ("-ade " +  '"' + adeAde + '"') else ""} \
      ~{if defined(aAIe) then ("-aie " +  '"' + aAIe + '"') else ""} \
      ~{if defined(inInV) then ("-inv " +  '"' + inInV + '"') else ""} \
      ~{if defined(cipCip) then ("-cip " +  '"' + cipCip + '"') else ""} \
      ~{if defined(trpTrp) then ("-trp " +  '"' + trpTrp + '"') else ""} \
      ~{true="-ab" false="" abAb} \
      ~{true="-o" false="" oO}
  >>>
}