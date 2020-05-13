version 1.0

task DlcoalToDlcpar {
  input {
    String streeStree
    String sSMap
    String inputInputExt
    String outputOutputExt
    Boolean useUseLocusRecon
    Boolean noNoDelay
    String? dlDlCoalToDlcPar
    String? isIs
    String? aA
    String? utilityUtility
    String? forFor
    String? convertingConverting
    String? dlDlCoal
    String? reconciliationsReconciliations
    String? toTo
    String? dlcDlcPar
  }
  command <<<
    dlcoal_to_dlcpar \
      ~{dlDlCoalToDlcPar} \
      ~{if defined(streeStree) then ("--stree " +  '"' + streeStree + '"') else ""} \
      ~{if defined(sSMap) then ("--smap " +  '"' + sSMap + '"') else ""} \
      ~{if defined(inputInputExt) then ("--inputext " +  '"' + inputInputExt + '"') else ""} \
      ~{if defined(outputOutputExt) then ("--outputext " +  '"' + outputOutputExt + '"') else ""} \
      ~{true="--use-locus-recon" false="" useUseLocusRecon} \
      ~{true="--no-delay" false="" noNoDelay} \
      ~{isIs} \
      ~{aA} \
      ~{utilityUtility} \
      ~{forFor} \
      ~{convertingConverting} \
      ~{dlDlCoal} \
      ~{reconciliationsReconciliations} \
      ~{toTo} \
      ~{dlcDlcPar}
  >>>
}