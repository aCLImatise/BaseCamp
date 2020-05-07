version 1.0

task MerTrim {
  input {
    String correctCorrect
    String evidenceEvidence
    String mcMc
    Boolean mcMcIllumina
    Boolean mc454Mc454
    Boolean endEndTrim
    Boolean notNotRimming
    Boolean discardDiscardZero
    Boolean discardDiscardImperfect
    Boolean notNotRimImperfect
    String endEndTrimQv
    Boolean nmNm
    Boolean niNi
    String tT
    Boolean vV
    Boolean vV
  }
  command <<<
    merTrim \
      ~{if defined(correctCorrect) then ("-correct " +  '"' + correctCorrect + '"') else ""} \
      ~{if defined(evidenceEvidence) then ("-evidence " +  '"' + evidenceEvidence + '"') else ""} \
      ~{if defined(mcMc) then ("-mC " +  '"' + mcMc + '"') else ""} \
      ~{true="-mCillumina" false="" mcMcIllumina} \
      ~{true="-mC454" false="" mc454Mc454} \
      ~{true="-endtrim" false="" endEndTrim} \
      ~{true="-notrimming" false="" notNotRimming} \
      ~{true="-discardzero" false="" discardDiscardZero} \
      ~{true="-discardimperfect" false="" discardDiscardImperfect} \
      ~{true="-notrimimperfect" false="" notNotRimImperfect} \
      ~{if defined(endEndTrimQv) then ("-endtrimqv " +  '"' + endEndTrimQv + '"') else ""} \
      ~{true="-NM" false="" nmNm} \
      ~{true="-NI" false="" niNi} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{true="-V" false="" vV}
  >>>
}