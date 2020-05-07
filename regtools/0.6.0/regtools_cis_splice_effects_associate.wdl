version 1.0

task RegtoolsCisSpliceEffectsAssociate {
  input {
    String oO
    String vV
    String jJ
    Int aA
    Int mM
    Int mM
    Int wW
    Int eE
    Int iI
    Boolean iI
    Boolean eE
    Boolean sS
    String? variantsVariantsVcf
    String? junctionsJunctionsBed
    String? reReFfa
    String? annotationsAnnotationsGtf
  }
  command <<<
    regtools cis-splice-effects associate \
      ~{variantsVariantsVcf} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""} \
      ~{if defined(jJ) then ("-j " +  '"' + jJ + '"') else ""} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(mM) then ("-M " +  '"' + mM + '"') else ""} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{true="-I" false="" iI} \
      ~{true="-E" false="" eE} \
      ~{true="-S" false="" sS} \
      ~{junctionsJunctionsBed} \
      ~{reReFfa} \
      ~{annotationsAnnotationsGtf}
  >>>
}