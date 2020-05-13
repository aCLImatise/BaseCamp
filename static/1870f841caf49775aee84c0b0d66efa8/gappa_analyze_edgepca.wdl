version 1.0

task GappaAnalyzeEdgepca {
  input {
    String jJPlacePath
    Float kappaKappa
    Float epsilonEpsilon
    String componentsComponents
    Boolean pointPointMass
    Boolean ignoreIgnoreMultiplicities
    String colorColorList
    Boolean reverseReverseColorList
    String maskMaskColor
    String outOutDir
    String fileFilePrefix
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
    gappa analyze edgepca \
      ~{optionsOptions} \
      ~{if defined(jJPlacePath) then ("--jplace-path " +  '"' + jJPlacePath + '"') else ""} \
      ~{if defined(kappaKappa) then ("--kappa " +  '"' + kappaKappa + '"') else ""} \
      ~{if defined(epsilonEpsilon) then ("--epsilon " +  '"' + epsilonEpsilon + '"') else ""} \
      ~{if defined(componentsComponents) then ("--components " +  '"' + componentsComponents + '"') else ""} \
      ~{true="--point-mass" false="" pointPointMass} \
      ~{true="--ignore-multiplicities" false="" ignoreIgnoreMultiplicities} \
      ~{if defined(colorColorList) then ("--color-list " +  '"' + colorColorList + '"') else ""} \
      ~{true="--reverse-color-list" false="" reverseReverseColorList} \
      ~{if defined(maskMaskColor) then ("--mask-color " +  '"' + maskMaskColor + '"') else ""} \
      ~{if defined(outOutDir) then ("--out-dir " +  '"' + outOutDir + '"') else ""} \
      ~{if defined(fileFilePrefix) then ("--file-prefix " +  '"' + fileFilePrefix + '"') else ""} \
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