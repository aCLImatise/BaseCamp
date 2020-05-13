version 1.0

task Vardict.pl {
  input {
    Int bB
    Int qQ
    Int qQ
    Int mM
    Int trimTrim
    Int xX
    Int refRefExtension
    String pP
    String downDownSample
    String oO
    String oO
    String vV
    Int iI
    Int mM
    Int lL
    String insertInsertSize
    String insertInsertStd
    String aA
    String crispCrispR
    String jJ
    String adaptorAdaptor
    Boolean chimericChimeric
  }
  command <<<
    vardict.pl \
      ~{if defined(bB) then ("-B " +  '"' + bB + '"') else ""} \
      ~{if defined(qQ) then ("-Q " +  '"' + qQ + '"') else ""} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(trimTrim) then ("--trim " +  '"' + trimTrim + '"') else ""} \
      ~{if defined(xX) then ("-X " +  '"' + xX + '"') else ""} \
      ~{if defined(refRefExtension) then ("--ref-extension " +  '"' + refRefExtension + '"') else ""} \
      ~{if defined(pP) then ("-P " +  '"' + pP + '"') else ""} \
      ~{if defined(downDownSample) then ("--downsample " +  '"' + downDownSample + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(oO) then ("-O " +  '"' + oO + '"') else ""} \
      ~{if defined(vV) then ("-V " +  '"' + vV + '"') else ""} \
      ~{if defined(iI) then ("-I " +  '"' + iI + '"') else ""} \
      ~{if defined(mM) then ("-M " +  '"' + mM + '"') else ""} \
      ~{if defined(lL) then ("-L " +  '"' + lL + '"') else ""} \
      ~{if defined(insertInsertSize) then ("--insert-size " +  '"' + insertInsertSize + '"') else ""} \
      ~{if defined(insertInsertStd) then ("--insert-std " +  '"' + insertInsertStd + '"') else ""} \
      ~{if defined(aA) then ("-A " +  '"' + aA + '"') else ""} \
      ~{if defined(crispCrispR) then ("--crispr " +  '"' + crispCrispR + '"') else ""} \
      ~{if defined(jJ) then ("-j " +  '"' + jJ + '"') else ""} \
      ~{if defined(adaptorAdaptor) then ("--adaptor " +  '"' + adaptorAdaptor + '"') else ""} \
      ~{true="--chimeric" false="" chimericChimeric}
  >>>
}