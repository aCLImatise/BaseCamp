version 1.0

task GappaAnalyzeDispersion {
  input {
    String jJPlacePath
    String massMassNorm
    Boolean pointPointMass
    Boolean ignoreIgnoreMultiplicities
    String edgeEdgeValues
    String methodMethod
    String colorColorList
    Boolean reverseReverseColorList
    String maskMaskColor
    Boolean writeWriteNewickTree
    Boolean writeWriteNexusTree
    Boolean writeWritePhyloXmlTree
    Boolean writeWriteSvgTree
    Boolean svgSvgTreeLadderIze
    String outOutDir
    String treeTreeFilePrefix
    Boolean allowAllowFileOverwriting
    Boolean verboseVerbose
    String threadsThreads
    String logLogFile
    String? optionsOptions
  }
  command <<<
    gappa analyze dispersion \
      ~{optionsOptions} \
      ~{if defined(jJPlacePath) then ("--jplace-path " +  '"' + jJPlacePath + '"') else ""} \
      ~{if defined(massMassNorm) then ("--mass-norm " +  '"' + massMassNorm + '"') else ""} \
      ~{true="--point-mass" false="" pointPointMass} \
      ~{true="--ignore-multiplicities" false="" ignoreIgnoreMultiplicities} \
      ~{if defined(edgeEdgeValues) then ("--edge-values " +  '"' + edgeEdgeValues + '"') else ""} \
      ~{if defined(methodMethod) then ("--method " +  '"' + methodMethod + '"') else ""} \
      ~{if defined(colorColorList) then ("--color-list " +  '"' + colorColorList + '"') else ""} \
      ~{true="--reverse-color-list" false="" reverseReverseColorList} \
      ~{if defined(maskMaskColor) then ("--mask-color " +  '"' + maskMaskColor + '"') else ""} \
      ~{true="--write-newick-tree" false="" writeWriteNewickTree} \
      ~{true="--write-nexus-tree" false="" writeWriteNexusTree} \
      ~{true="--write-phyloxml-tree" false="" writeWritePhyloXmlTree} \
      ~{true="--write-svg-tree" false="" writeWriteSvgTree} \
      ~{true="--svg-tree-ladderize" false="" svgSvgTreeLadderIze} \
      ~{if defined(outOutDir) then ("--out-dir " +  '"' + outOutDir + '"') else ""} \
      ~{if defined(treeTreeFilePrefix) then ("--tree-file-prefix " +  '"' + treeTreeFilePrefix + '"') else ""} \
      ~{true="--allow-file-overwriting" false="" allowAllowFileOverwriting} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(logLogFile) then ("--log-file " +  '"' + logLogFile + '"') else ""}
  >>>
}