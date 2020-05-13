version 1.0

task IntervenePairwise {
  input {
    Boolean iI
    String typeType
    String computeCompute
    String bedBedToolsOptions
    Boolean corrCorr
    String corrCorrType
    String hHType
    String triangleTriangle
    Boolean diagonalDiagonal
    String namesNames
    Boolean filenamesFilenames
    Boolean sortSort
    String genomeGenome
    String outputOutput
    String projectProject
    String barBarLabel
    String barBarColor
    String fontFontSize
    String titleTitle
    String spaceSpace
    String figFigType
    String figFigSize
    String dpiDpi
    Boolean scriptScriptOnly
    Boolean testTest
  }
  command <<<
    intervene pairwise \
      ~{true="-i" false="" iI} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""} \
      ~{if defined(computeCompute) then ("--compute " +  '"' + computeCompute + '"') else ""} \
      ~{if defined(bedBedToolsOptions) then ("--bedtools-options " +  '"' + bedBedToolsOptions + '"') else ""} \
      ~{true="--corr" false="" corrCorr} \
      ~{if defined(corrCorrType) then ("--corrtype " +  '"' + corrCorrType + '"') else ""} \
      ~{if defined(hHType) then ("--htype " +  '"' + hHType + '"') else ""} \
      ~{if defined(triangleTriangle) then ("--triangle " +  '"' + triangleTriangle + '"') else ""} \
      ~{true="--diagonal" false="" diagonalDiagonal} \
      ~{if defined(namesNames) then ("--names " +  '"' + namesNames + '"') else ""} \
      ~{true="--filenames" false="" filenamesFilenames} \
      ~{true="--sort" false="" sortSort} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(projectProject) then ("--project " +  '"' + projectProject + '"') else ""} \
      ~{if defined(barBarLabel) then ("--barlabel " +  '"' + barBarLabel + '"') else ""} \
      ~{if defined(barBarColor) then ("--barcolor " +  '"' + barBarColor + '"') else ""} \
      ~{if defined(fontFontSize) then ("--fontsize " +  '"' + fontFontSize + '"') else ""} \
      ~{if defined(titleTitle) then ("--title " +  '"' + titleTitle + '"') else ""} \
      ~{if defined(spaceSpace) then ("--space " +  '"' + spaceSpace + '"') else ""} \
      ~{if defined(figFigType) then ("--figtype " +  '"' + figFigType + '"') else ""} \
      ~{if defined(figFigSize) then ("--figsize " +  '"' + figFigSize + '"') else ""} \
      ~{if defined(dpiDpi) then ("--dpi " +  '"' + dpiDpi + '"') else ""} \
      ~{true="--scriptonly" false="" scriptScriptOnly} \
      ~{true="--test" false="" testTest}
  >>>
}