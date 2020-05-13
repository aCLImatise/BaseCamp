version 1.0

task AnviInteractive {
  input {
    String profileProfileDb
    String contigsContigsDb
    String collectionCollectionName
    Boolean manualManualMode
    String fastFastAFile
    String viewViewData
    String treeTree
    String itemsItemsOrder
    String additionalAdditionalView
    String additionalAdditionalLayers
    Boolean geneGeneMode
    Boolean inInSeqStats
    String binBinId
    String viewView
    String titleTitle
    String taxonomicTaxonomicLevel
    Boolean splitSplitHmmLayers
    Boolean hideHideOutlierSnVs
    String stateStateAutoload
    String collectionCollectionAutoload
    File exportExportSvg
    Boolean showShowViews
    Boolean skipSkipCheckNames
    String outputOutputDir
    Boolean dryDryRun
    Boolean showShowStates
    Boolean listListCollections
    Boolean skipSkipInItFunctions
    Boolean skipSkipAutoOrdering
    String distanceDistance
    String linkageLinkage
    String ipIpAddress
    Int portPortNumber
    File browserBrowserPath
    Boolean readReadOnly
    Boolean serverServerOnly
    Boolean passwordPasswordProtected
    Boolean userUserServerShutdown
  }
  command <<<
    anvi-interactive \
      ~{if defined(profileProfileDb) then ("--profile-db " +  '"' + profileProfileDb + '"') else ""} \
      ~{if defined(contigsContigsDb) then ("--contigs-db " +  '"' + contigsContigsDb + '"') else ""} \
      ~{if defined(collectionCollectionName) then ("--collection-name " +  '"' + collectionCollectionName + '"') else ""} \
      ~{true="--manual-mode" false="" manualManualMode} \
      ~{if defined(fastFastAFile) then ("--fasta-file " +  '"' + fastFastAFile + '"') else ""} \
      ~{if defined(viewViewData) then ("--view-data " +  '"' + viewViewData + '"') else ""} \
      ~{if defined(treeTree) then ("--tree " +  '"' + treeTree + '"') else ""} \
      ~{if defined(itemsItemsOrder) then ("--items-order " +  '"' + itemsItemsOrder + '"') else ""} \
      ~{if defined(additionalAdditionalView) then ("--additional-view " +  '"' + additionalAdditionalView + '"') else ""} \
      ~{if defined(additionalAdditionalLayers) then ("--additional-layers " +  '"' + additionalAdditionalLayers + '"') else ""} \
      ~{true="--gene-mode" false="" geneGeneMode} \
      ~{true="--inseq-stats" false="" inInSeqStats} \
      ~{if defined(binBinId) then ("--bin-id " +  '"' + binBinId + '"') else ""} \
      ~{if defined(viewView) then ("--view " +  '"' + viewView + '"') else ""} \
      ~{if defined(titleTitle) then ("--title " +  '"' + titleTitle + '"') else ""} \
      ~{if defined(taxonomicTaxonomicLevel) then ("--taxonomic-level " +  '"' + taxonomicTaxonomicLevel + '"') else ""} \
      ~{true="--split-hmm-layers" false="" splitSplitHmmLayers} \
      ~{true="--hide-outlier-SNVs" false="" hideHideOutlierSnVs} \
      ~{if defined(stateStateAutoload) then ("--state-autoload " +  '"' + stateStateAutoload + '"') else ""} \
      ~{if defined(collectionCollectionAutoload) then ("--collection-autoload " +  '"' + collectionCollectionAutoload + '"') else ""} \
      ~{if defined(exportExportSvg) then ("--export-svg " +  '"' + exportExportSvg + '"') else ""} \
      ~{true="--show-views" false="" showShowViews} \
      ~{true="--skip-check-names" false="" skipSkipCheckNames} \
      ~{if defined(outputOutputDir) then ("--output-dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{true="--dry-run" false="" dryDryRun} \
      ~{true="--show-states" false="" showShowStates} \
      ~{true="--list-collections" false="" listListCollections} \
      ~{true="--skip-init-functions" false="" skipSkipInItFunctions} \
      ~{true="--skip-auto-ordering" false="" skipSkipAutoOrdering} \
      ~{if defined(distanceDistance) then ("--distance " +  '"' + distanceDistance + '"') else ""} \
      ~{if defined(linkageLinkage) then ("--linkage " +  '"' + linkageLinkage + '"') else ""} \
      ~{if defined(ipIpAddress) then ("--ip-address " +  '"' + ipIpAddress + '"') else ""} \
      ~{if defined(portPortNumber) then ("--port-number " +  '"' + portPortNumber + '"') else ""} \
      ~{if defined(browserBrowserPath) then ("--browser-path " +  '"' + browserBrowserPath + '"') else ""} \
      ~{true="--read-only" false="" readReadOnly} \
      ~{true="--server-only" false="" serverServerOnly} \
      ~{true="--password-protected" false="" passwordPasswordProtected} \
      ~{true="--user-server-shutdown" false="" userUserServerShutdown}
  >>>
}