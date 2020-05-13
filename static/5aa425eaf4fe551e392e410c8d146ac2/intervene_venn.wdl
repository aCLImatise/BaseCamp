version 1.0

task InterveneVenn {
  input {
    Boolean iI
    String typeType
    String namesNames
    Boolean filenamesFilenames
    String bedBedToolsOptions
    String outputOutput
    Boolean saveSaveOverlaps
    String overlapOverlapThresh
    String titleTitle
    String projectProject
    String colorsColors
    String borderBorderColors
    String figFigType
    String figFigSize
    String fontFontSize
    String dpiDpi
    String fillFill
    Boolean testTest
  }
  command <<<
    intervene venn \
      ~{true="-i" false="" iI} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""} \
      ~{if defined(namesNames) then ("--names " +  '"' + namesNames + '"') else ""} \
      ~{true="--filenames" false="" filenamesFilenames} \
      ~{if defined(bedBedToolsOptions) then ("--bedtools-options " +  '"' + bedBedToolsOptions + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--save-overlaps" false="" saveSaveOverlaps} \
      ~{if defined(overlapOverlapThresh) then ("--overlap-thresh " +  '"' + overlapOverlapThresh + '"') else ""} \
      ~{if defined(titleTitle) then ("--title " +  '"' + titleTitle + '"') else ""} \
      ~{if defined(projectProject) then ("--project " +  '"' + projectProject + '"') else ""} \
      ~{if defined(colorsColors) then ("--colors " +  '"' + colorsColors + '"') else ""} \
      ~{if defined(borderBorderColors) then ("--bordercolors " +  '"' + borderBorderColors + '"') else ""} \
      ~{if defined(figFigType) then ("--figtype " +  '"' + figFigType + '"') else ""} \
      ~{if defined(figFigSize) then ("--figsize " +  '"' + figFigSize + '"') else ""} \
      ~{if defined(fontFontSize) then ("--fontsize " +  '"' + fontFontSize + '"') else ""} \
      ~{if defined(dpiDpi) then ("--dpi " +  '"' + dpiDpi + '"') else ""} \
      ~{if defined(fillFill) then ("--fill " +  '"' + fillFill + '"') else ""} \
      ~{true="--test" false="" testTest}
  >>>
}