version 1.0

task GappaExamineHeatTree {
  input {
    String jJPlacePath
    String massMassNorm
    Boolean pointPointMass
    Boolean ignoreIgnoreMultiplicities
    String colorColorList
    Boolean reverseReverseColorList
    Boolean logLogScaling
    Float maxMaxValue
    Boolean clipClipOver
    String overOverColor
    Float minMinValue
    Boolean clipClipUnder
    String underUnderColor
    Boolean clipClip
    Float maskMaskValue
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
    gappa examine heat-tree \
      ~{optionsOptions} \
      ~{if defined(jJPlacePath) then ("--jplace-path " +  '"' + jJPlacePath + '"') else ""} \
      ~{if defined(massMassNorm) then ("--mass-norm " +  '"' + massMassNorm + '"') else ""} \
      ~{true="--point-mass" false="" pointPointMass} \
      ~{true="--ignore-multiplicities" false="" ignoreIgnoreMultiplicities} \
      ~{if defined(colorColorList) then ("--color-list " +  '"' + colorColorList + '"') else ""} \
      ~{true="--reverse-color-list" false="" reverseReverseColorList} \
      ~{true="--log-scaling" false="" logLogScaling} \
      ~{if defined(maxMaxValue) then ("--max-value " +  '"' + maxMaxValue + '"') else ""} \
      ~{true="--clip-over" false="" clipClipOver} \
      ~{if defined(overOverColor) then ("--over-color " +  '"' + overOverColor + '"') else ""} \
      ~{if defined(minMinValue) then ("--min-value " +  '"' + minMinValue + '"') else ""} \
      ~{true="--clip-under" false="" clipClipUnder} \
      ~{if defined(underUnderColor) then ("--under-color " +  '"' + underUnderColor + '"') else ""} \
      ~{true="--clip" false="" clipClip} \
      ~{if defined(maskMaskValue) then ("--mask-value " +  '"' + maskMaskValue + '"') else ""} \
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