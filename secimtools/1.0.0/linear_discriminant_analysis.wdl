version 1.0

task LinearDiscriminantAnalysis.py {
  input {
    String inputInput
    String designDesign
    String idId
    String groupGroup
    String levelsLevels
    String crossCrossValidation
    String nNComponents
    String outOut
    String outOutClassification
    String outOutClassificationAccuracy
    String figureFigure
    String palettePalette
    String colorColor
  }
  command <<<
    linear_discriminant_analysis.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(designDesign) then ("--design " +  '"' + designDesign + '"') else ""} \
      ~{if defined(idId) then ("--ID " +  '"' + idId + '"') else ""} \
      ~{if defined(groupGroup) then ("--group " +  '"' + groupGroup + '"') else ""} \
      ~{if defined(levelsLevels) then ("--levels " +  '"' + levelsLevels + '"') else ""} \
      ~{if defined(crossCrossValidation) then ("--cross_validation " +  '"' + crossCrossValidation + '"') else ""} \
      ~{if defined(nNComponents) then ("--nComponents " +  '"' + nNComponents + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(outOutClassification) then ("--outClassification " +  '"' + outOutClassification + '"') else ""} \
      ~{if defined(outOutClassificationAccuracy) then ("--outClassificationAccuracy " +  '"' + outOutClassificationAccuracy + '"') else ""} \
      ~{if defined(figureFigure) then ("--figure " +  '"' + figureFigure + '"') else ""} \
      ~{if defined(palettePalette) then ("--palette " +  '"' + palettePalette + '"') else ""} \
      ~{if defined(colorColor) then ("--color " +  '"' + colorColor + '"') else ""}
  >>>
}