version 1.0

task PrincipalComponentAnalysis.py {
  input {
    String inputInput
    String designDesign
    String idId
    String groupGroup
    String levelsLevels
    String loadLoadOut
    String scoreScoreOut
    String summarySummaryOut
    String figureFigure
    String palettePalette
    String colorColor
  }
  command <<<
    principal_component_analysis.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(designDesign) then ("--design " +  '"' + designDesign + '"') else ""} \
      ~{if defined(idId) then ("--ID " +  '"' + idId + '"') else ""} \
      ~{if defined(groupGroup) then ("--group " +  '"' + groupGroup + '"') else ""} \
      ~{if defined(levelsLevels) then ("--levels " +  '"' + levelsLevels + '"') else ""} \
      ~{if defined(loadLoadOut) then ("--load_out " +  '"' + loadLoadOut + '"') else ""} \
      ~{if defined(scoreScoreOut) then ("--score_out " +  '"' + scoreScoreOut + '"') else ""} \
      ~{if defined(summarySummaryOut) then ("--summary_out " +  '"' + summarySummaryOut + '"') else ""} \
      ~{if defined(figureFigure) then ("--figure " +  '"' + figureFigure + '"') else ""} \
      ~{if defined(palettePalette) then ("--palette " +  '"' + palettePalette + '"') else ""} \
      ~{if defined(colorColor) then ("--color " +  '"' + colorColor + '"') else ""}
  >>>
}