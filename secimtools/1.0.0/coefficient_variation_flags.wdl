version 1.0

task CoefficientVariationFlags.py {
  input {
    String inputInput
    String designDesign
    String idId
    String groupGroup
    String levelsLevels
    String cvCvCutOff
    String figureFigure
    String flagFlag
    String palettePalette
    String colorColor
  }
  command <<<
    coefficient_variation_flags.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(designDesign) then ("--design " +  '"' + designDesign + '"') else ""} \
      ~{if defined(idId) then ("--ID " +  '"' + idId + '"') else ""} \
      ~{if defined(groupGroup) then ("--group " +  '"' + groupGroup + '"') else ""} \
      ~{if defined(levelsLevels) then ("--levels " +  '"' + levelsLevels + '"') else ""} \
      ~{if defined(cvCvCutOff) then ("--CVcutoff " +  '"' + cvCvCutOff + '"') else ""} \
      ~{if defined(figureFigure) then ("--figure " +  '"' + figureFigure + '"') else ""} \
      ~{if defined(flagFlag) then ("--flag " +  '"' + flagFlag + '"') else ""} \
      ~{if defined(palettePalette) then ("--palette " +  '"' + palettePalette + '"') else ""} \
      ~{if defined(colorColor) then ("--color " +  '"' + colorColor + '"') else ""}
  >>>
}