version 1.0

task GappaAnalyzePlacementFactorization {
  input {
    String jJPlacePath
    String outOutDir
    Boolean writeWriteNewickTree
    Boolean writeWriteNexusTree
    Boolean writeWritePhyloXmlTree
    Boolean writeWriteSvgTree
    Boolean svgSvgTreeLadderIze
    Boolean allowAllowFileOverwriting
    Boolean verboseVerbose
    String threadsThreads
    String logLogFile
    String? optionsOptions
  }
  command <<<
    gappa analyze placement-factorization \
      ~{optionsOptions} \
      ~{if defined(jJPlacePath) then ("--jplace-path " +  '"' + jJPlacePath + '"') else ""} \
      ~{if defined(outOutDir) then ("--out-dir " +  '"' + outOutDir + '"') else ""} \
      ~{true="--write-newick-tree" false="" writeWriteNewickTree} \
      ~{true="--write-nexus-tree" false="" writeWriteNexusTree} \
      ~{true="--write-phyloxml-tree" false="" writeWritePhyloXmlTree} \
      ~{true="--write-svg-tree" false="" writeWriteSvgTree} \
      ~{true="--svg-tree-ladderize" false="" svgSvgTreeLadderIze} \
      ~{true="--allow-file-overwriting" false="" allowAllowFileOverwriting} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(logLogFile) then ("--log-file " +  '"' + logLogFile + '"') else ""}
  >>>
}