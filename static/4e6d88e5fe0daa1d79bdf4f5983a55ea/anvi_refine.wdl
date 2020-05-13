version 1.0

task AnviRefine {
  input {
    String profileProfileDb
    String contigsContigsDb
    String collectionCollectionName
    String binBinId
    File binBinIdsFile
    String findFindFromSplitName
    String treeTree
    Boolean skipSkipHierarchicalClustering
    Boolean loadLoadFullState
    String additionalAdditionalView
    String additionalAdditionalLayers
    Boolean splitSplitHmmLayers
    String taxonomicTaxonomicLevel
    Boolean hideHideOutlierSnVs
    String titleTitle
    File exportExportSvg
    Boolean dryDryRun
    Boolean skipSkipInItFunctions
    Boolean skipSkipAutoOrdering
    String ipIpAddress
    Int portPortNumber
    File browserBrowserPath
    Boolean readReadOnly
    Boolean serverServerOnly
    Boolean passwordPasswordProtected
  }
  command <<<
    anvi-refine \
      ~{if defined(profileProfileDb) then ("--profile-db " +  '"' + profileProfileDb + '"') else ""} \
      ~{if defined(contigsContigsDb) then ("--contigs-db " +  '"' + contigsContigsDb + '"') else ""} \
      ~{if defined(collectionCollectionName) then ("--collection-name " +  '"' + collectionCollectionName + '"') else ""} \
      ~{if defined(binBinId) then ("--bin-id " +  '"' + binBinId + '"') else ""} \
      ~{if defined(binBinIdsFile) then ("--bin-ids-file " +  '"' + binBinIdsFile + '"') else ""} \
      ~{if defined(findFindFromSplitName) then ("--find-from-split-name " +  '"' + findFindFromSplitName + '"') else ""} \
      ~{if defined(treeTree) then ("--tree " +  '"' + treeTree + '"') else ""} \
      ~{true="--skip-hierarchical-clustering" false="" skipSkipHierarchicalClustering} \
      ~{true="--load-full-state" false="" loadLoadFullState} \
      ~{if defined(additionalAdditionalView) then ("--additional-view " +  '"' + additionalAdditionalView + '"') else ""} \
      ~{if defined(additionalAdditionalLayers) then ("--additional-layers " +  '"' + additionalAdditionalLayers + '"') else ""} \
      ~{true="--split-hmm-layers" false="" splitSplitHmmLayers} \
      ~{if defined(taxonomicTaxonomicLevel) then ("--taxonomic-level " +  '"' + taxonomicTaxonomicLevel + '"') else ""} \
      ~{true="--hide-outlier-SNVs" false="" hideHideOutlierSnVs} \
      ~{if defined(titleTitle) then ("--title " +  '"' + titleTitle + '"') else ""} \
      ~{if defined(exportExportSvg) then ("--export-svg " +  '"' + exportExportSvg + '"') else ""} \
      ~{true="--dry-run" false="" dryDryRun} \
      ~{true="--skip-init-functions" false="" skipSkipInItFunctions} \
      ~{true="--skip-auto-ordering" false="" skipSkipAutoOrdering} \
      ~{if defined(ipIpAddress) then ("--ip-address " +  '"' + ipIpAddress + '"') else ""} \
      ~{if defined(portPortNumber) then ("--port-number " +  '"' + portPortNumber + '"') else ""} \
      ~{if defined(browserBrowserPath) then ("--browser-path " +  '"' + browserBrowserPath + '"') else ""} \
      ~{true="--read-only" false="" readReadOnly} \
      ~{true="--server-only" false="" serverServerOnly} \
      ~{true="--password-protected" false="" passwordPasswordProtected}
  >>>
}