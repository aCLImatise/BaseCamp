version 1.0

task GappaAnalyzeSquash {
  input {
    String jJPlacePath
    Float exponentExponent
    Boolean pointPointMass
    Boolean ignoreIgnoreMultiplicities
    String colorColorList
    Boolean reverseReverseColorList
    Boolean logLogScaling
    String outOutDir
    String treeTreeFilePrefix
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
    gappa analyze squash \
      ~{optionsOptions} \
      ~{if defined(jJPlacePath) then ("--jplace-path " +  '"' + jJPlacePath + '"') else ""} \
      ~{if defined(exponentExponent) then ("--exponent " +  '"' + exponentExponent + '"') else ""} \
      ~{true="--point-mass" false="" pointPointMass} \
      ~{true="--ignore-multiplicities" false="" ignoreIgnoreMultiplicities} \
      ~{if defined(colorColorList) then ("--color-list " +  '"' + colorColorList + '"') else ""} \
      ~{true="--reverse-color-list" false="" reverseReverseColorList} \
      ~{true="--log-scaling" false="" logLogScaling} \
      ~{if defined(outOutDir) then ("--out-dir " +  '"' + outOutDir + '"') else ""} \
      ~{if defined(treeTreeFilePrefix) then ("--tree-file-prefix " +  '"' + treeTreeFilePrefix + '"') else ""} \
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