version 1.0

task Compare {
  input {
    Boolean colCol
    Boolean coreCore
    Boolean capsCaps
    File anAnNot
    String? scoreScore
    String? testTestAlignment
    String? referenceReferenceAlignment
    String? baliBaliBaseAnNotFile
  }
  command <<<
    compare \
      ~{scoreScore} \
      ~{true="-col" false="" colCol} \
      ~{true="-core" false="" coreCore} \
      ~{true="-caps" false="" capsCaps} \
      ~{if defined(anAnNot) then ("-annot " +  '"' + anAnNot + '"') else ""} \
      ~{testTestAlignment} \
      ~{referenceReferenceAlignment} \
      ~{baliBaliBaseAnNotFile}
  >>>
}