version 1.0

task AnviDisplayPan {
  input {
    String panPanDb
    String genomesGenomesStorage
    String viewViewData
    String treeTree
    String additionalAdditionalView
    String additionalAdditionalLayers
    String viewView
    String titleTitle
    String stateStateAutoload
    String collectionCollectionAutoload
    File exportExportSvg
    Boolean skipSkipInItFunctions
    Boolean dryDryRun
    Boolean skipSkipAutoOrdering
    String ipIpAddress
    Int portPortNumber
    File browserBrowserPath
    Boolean readReadOnly
    Boolean serverServerOnly
    Boolean passwordPasswordProtected
    Boolean userUserServerShutdown
  }
  command <<<
    anvi-display-pan \
      ~{if defined(panPanDb) then ("--pan-db " +  '"' + panPanDb + '"') else ""} \
      ~{if defined(genomesGenomesStorage) then ("--genomes-storage " +  '"' + genomesGenomesStorage + '"') else ""} \
      ~{if defined(viewViewData) then ("--view-data " +  '"' + viewViewData + '"') else ""} \
      ~{if defined(treeTree) then ("--tree " +  '"' + treeTree + '"') else ""} \
      ~{if defined(additionalAdditionalView) then ("--additional-view " +  '"' + additionalAdditionalView + '"') else ""} \
      ~{if defined(additionalAdditionalLayers) then ("--additional-layers " +  '"' + additionalAdditionalLayers + '"') else ""} \
      ~{if defined(viewView) then ("--view " +  '"' + viewView + '"') else ""} \
      ~{if defined(titleTitle) then ("--title " +  '"' + titleTitle + '"') else ""} \
      ~{if defined(stateStateAutoload) then ("--state-autoload " +  '"' + stateStateAutoload + '"') else ""} \
      ~{if defined(collectionCollectionAutoload) then ("--collection-autoload " +  '"' + collectionCollectionAutoload + '"') else ""} \
      ~{if defined(exportExportSvg) then ("--export-svg " +  '"' + exportExportSvg + '"') else ""} \
      ~{true="--skip-init-functions" false="" skipSkipInItFunctions} \
      ~{true="--dry-run" false="" dryDryRun} \
      ~{true="--skip-auto-ordering" false="" skipSkipAutoOrdering} \
      ~{if defined(ipIpAddress) then ("--ip-address " +  '"' + ipIpAddress + '"') else ""} \
      ~{if defined(portPortNumber) then ("--port-number " +  '"' + portPortNumber + '"') else ""} \
      ~{if defined(browserBrowserPath) then ("--browser-path " +  '"' + browserBrowserPath + '"') else ""} \
      ~{true="--read-only" false="" readReadOnly} \
      ~{true="--server-only" false="" serverServerOnly} \
      ~{true="--password-protected" false="" passwordPasswordProtected} \
      ~{true="--user-server-shutdown" false="" userUserServerShutdown}
  >>>
}