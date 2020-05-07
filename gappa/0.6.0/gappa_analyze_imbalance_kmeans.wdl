version 1.0

task GappaAnalyzeImbalanceKmeans {
  input {
    String jJPlacePath
    String kK
    Boolean writeWriteOverviewFile
    Boolean pointPointMass
    Boolean ignoreIgnoreMultiplicities
    String colorColorList
    Boolean reverseReverseColorList
    Boolean logLogScaling
    Boolean writeWriteNewickTree
    Boolean writeWriteNexusTree
    Boolean writeWritePhyloXmlTree
    Boolean writeWriteSvgTree
    Boolean svgSvgTreeLadderIze
    String outOutDir
    String fileFilePrefix
    Boolean allowAllowFileOverwriting
    Boolean verboseVerbose
    String threadsThreads
    String logLogFile
    String? optionsOptions
  }
  command <<<
    gappa analyze imbalance-kmeans \
      ~{optionsOptions} \
      ~{if defined(jJPlacePath) then ("--jplace-path " +  '"' + jJPlacePath + '"') else ""} \
      ~{if defined(kK) then ("--k " +  '"' + kK + '"') else ""} \
      ~{true="--write-overview-file" false="" writeWriteOverviewFile} \
      ~{true="--point-mass" false="" pointPointMass} \
      ~{true="--ignore-multiplicities" false="" ignoreIgnoreMultiplicities} \
      ~{if defined(colorColorList) then ("--color-list " +  '"' + colorColorList + '"') else ""} \
      ~{true="--reverse-color-list" false="" reverseReverseColorList} \
      ~{true="--log-scaling" false="" logLogScaling} \
      ~{true="--write-newick-tree" false="" writeWriteNewickTree} \
      ~{true="--write-nexus-tree" false="" writeWriteNexusTree} \
      ~{true="--write-phyloxml-tree" false="" writeWritePhyloXmlTree} \
      ~{true="--write-svg-tree" false="" writeWriteSvgTree} \
      ~{true="--svg-tree-ladderize" false="" svgSvgTreeLadderIze} \
      ~{if defined(outOutDir) then ("--out-dir " +  '"' + outOutDir + '"') else ""} \
      ~{if defined(fileFilePrefix) then ("--file-prefix " +  '"' + fileFilePrefix + '"') else ""} \
      ~{true="--allow-file-overwriting" false="" allowAllowFileOverwriting} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(logLogFile) then ("--log-file " +  '"' + logLogFile + '"') else ""}
  >>>
}