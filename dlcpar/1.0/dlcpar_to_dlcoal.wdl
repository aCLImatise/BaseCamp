version 1.0

task DlcparToDlcoal {
  input {
    String streeStree
    String sSMap
    String inputInputExt
    String outputOutputExt
    String? dlcDlcParToDlCoal
    String? isIs
    String? aA
    String? utilityUtility
    String? forFor
    String? convertingConverting
    String? dlcDlcPar
    String? reconciliationsReconciliations
    String? toTo
    String? dlDlCoal
  }
  command <<<
    dlcpar_to_dlcoal \
      ~{dlcDlcParToDlCoal} \
      ~{if defined(streeStree) then ("--stree " +  '"' + streeStree + '"') else ""} \
      ~{if defined(sSMap) then ("--smap " +  '"' + sSMap + '"') else ""} \
      ~{if defined(inputInputExt) then ("--inputext " +  '"' + inputInputExt + '"') else ""} \
      ~{if defined(outputOutputExt) then ("--outputext " +  '"' + outputOutputExt + '"') else ""} \
      ~{isIs} \
      ~{aA} \
      ~{utilityUtility} \
      ~{forFor} \
      ~{convertingConverting} \
      ~{dlcDlcPar} \
      ~{reconciliationsReconciliations} \
      ~{toTo} \
      ~{dlDlCoal}
  >>>
}