version 1.0

task StochGenDimerRates {
  input {
    String mM
    String tT
    String bB
    String eE
    Boolean vV
    String? paramsParams
    String? monomersMonomersBMap
    String? dimersDimersBMap
  }
  command <<<
    stoch_genDimerRates \
      ~{paramsParams} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""} \
      ~{if defined(bB) then ("-B " +  '"' + bB + '"') else ""} \
      ~{if defined(eE) then ("-E " +  '"' + eE + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{monomersMonomersBMap} \
      ~{dimersDimersBMap}
  >>>
}