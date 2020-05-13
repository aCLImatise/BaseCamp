version 1.0

task OStackbar.R {
  input {
    String outputOutputFilePrefix
    String colorsColorsFile
    String titleTitle
    String legendLegendPos
    String? stackStackBarr
    String? environmentEnvironmentFile
  }
  command <<<
    o-stackbar.R \
      ~{stackStackBarr} \
      ~{if defined(outputOutputFilePrefix) then ("--output_file_prefix " +  '"' + outputOutputFilePrefix + '"') else ""} \
      ~{if defined(colorsColorsFile) then ("--colors_file " +  '"' + colorsColorsFile + '"') else ""} \
      ~{if defined(titleTitle) then ("--title " +  '"' + titleTitle + '"') else ""} \
      ~{if defined(legendLegendPos) then ("--legend_pos " +  '"' + legendLegendPos + '"') else ""} \
      ~{environmentEnvironmentFile}
  >>>
}