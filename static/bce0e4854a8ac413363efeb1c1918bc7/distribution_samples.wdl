version 1.0

task DistributionSamples.py {
  input {
    String inputInput
    String designDesign
    String idId
    String groupGroup
    String orderOrder
    String levelsLevels
    String figureFigure
    String palettePalette
    String colorColor
    File? pathsPaths
  }
  command <<<
    distribution_samples.py \
      ~{pathsPaths} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(designDesign) then ("--design " +  '"' + designDesign + '"') else ""} \
      ~{if defined(idId) then ("--ID " +  '"' + idId + '"') else ""} \
      ~{if defined(groupGroup) then ("--group " +  '"' + groupGroup + '"') else ""} \
      ~{if defined(orderOrder) then ("--order " +  '"' + orderOrder + '"') else ""} \
      ~{if defined(levelsLevels) then ("--levels " +  '"' + levelsLevels + '"') else ""} \
      ~{if defined(figureFigure) then ("--figure " +  '"' + figureFigure + '"') else ""} \
      ~{if defined(palettePalette) then ("--palette " +  '"' + palettePalette + '"') else ""} \
      ~{if defined(colorColor) then ("--color " +  '"' + colorColor + '"') else ""}
  >>>
}