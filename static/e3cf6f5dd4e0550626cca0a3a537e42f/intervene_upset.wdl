version 1.0

task InterveneUpset {
  input {
    Boolean iI
    String typeType
    String namesNames
    Boolean filenamesFilenames
    String bedBedToolsOptions
    String outputOutput
    Boolean saveSaveOverlaps
    String overlapOverlapThresh
    String projectProject
    String orderOrder
    String nNInter
    Boolean showShowZero
    Boolean showShowSize
    String mbMbColor
    String sbSbColor
    String mbMbLabel
    String sxSxLabel
    String figFigType
    String figFigSize
    String dpiDpi
    Boolean scriptScriptOnly
    Boolean showShowShiny
    Boolean testTest
  }
  command <<<
    intervene upset \
      ~{true="-i" false="" iI} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""} \
      ~{if defined(namesNames) then ("--names " +  '"' + namesNames + '"') else ""} \
      ~{true="--filenames" false="" filenamesFilenames} \
      ~{if defined(bedBedToolsOptions) then ("--bedtools-options " +  '"' + bedBedToolsOptions + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--save-overlaps" false="" saveSaveOverlaps} \
      ~{if defined(overlapOverlapThresh) then ("--overlap-thresh " +  '"' + overlapOverlapThresh + '"') else ""} \
      ~{if defined(projectProject) then ("--project " +  '"' + projectProject + '"') else ""} \
      ~{if defined(orderOrder) then ("--order " +  '"' + orderOrder + '"') else ""} \
      ~{if defined(nNInter) then ("--ninter " +  '"' + nNInter + '"') else ""} \
      ~{true="--showzero" false="" showShowZero} \
      ~{true="--showsize" false="" showShowSize} \
      ~{if defined(mbMbColor) then ("--mbcolor " +  '"' + mbMbColor + '"') else ""} \
      ~{if defined(sbSbColor) then ("--sbcolor " +  '"' + sbSbColor + '"') else ""} \
      ~{if defined(mbMbLabel) then ("--mblabel " +  '"' + mbMbLabel + '"') else ""} \
      ~{if defined(sxSxLabel) then ("--sxlabel " +  '"' + sxSxLabel + '"') else ""} \
      ~{if defined(figFigType) then ("--figtype " +  '"' + figFigType + '"') else ""} \
      ~{if defined(figFigSize) then ("--figsize " +  '"' + figFigSize + '"') else ""} \
      ~{if defined(dpiDpi) then ("--dpi " +  '"' + dpiDpi + '"') else ""} \
      ~{true="--scriptonly" false="" scriptScriptOnly} \
      ~{true="--showshiny" false="" showShowShiny} \
      ~{true="--test" false="" testTest}
  >>>
}