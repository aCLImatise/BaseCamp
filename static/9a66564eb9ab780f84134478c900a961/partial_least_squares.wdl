version 1.0

task PartialLeastSquares.py {
  input {
    String inputInput
    String designDesign
    String idId
    String groupGroup
    String levelsLevels
    String toToCompare
    String crossCrossValidation
    String nNComp
    String outOutScores
    String outOutWeights
    String outOutClassification
    String outOutClassificationAccuracy
    String figureFigure
    String palettePalette
    String colorColor
    Boolean debugDebug
  }
  command <<<
    partial_least_squares.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(designDesign) then ("--design " +  '"' + designDesign + '"') else ""} \
      ~{if defined(idId) then ("--ID " +  '"' + idId + '"') else ""} \
      ~{if defined(groupGroup) then ("--group " +  '"' + groupGroup + '"') else ""} \
      ~{if defined(levelsLevels) then ("--levels " +  '"' + levelsLevels + '"') else ""} \
      ~{if defined(toToCompare) then ("--toCompare " +  '"' + toToCompare + '"') else ""} \
      ~{if defined(crossCrossValidation) then ("--cross_validation " +  '"' + crossCrossValidation + '"') else ""} \
      ~{if defined(nNComp) then ("--nComp " +  '"' + nNComp + '"') else ""} \
      ~{if defined(outOutScores) then ("--outScores " +  '"' + outOutScores + '"') else ""} \
      ~{if defined(outOutWeights) then ("--outWeights " +  '"' + outOutWeights + '"') else ""} \
      ~{if defined(outOutClassification) then ("--outClassification " +  '"' + outOutClassification + '"') else ""} \
      ~{if defined(outOutClassificationAccuracy) then ("--outClassificationAccuracy " +  '"' + outOutClassificationAccuracy + '"') else ""} \
      ~{if defined(figureFigure) then ("--figure " +  '"' + figureFigure + '"') else ""} \
      ~{if defined(palettePalette) then ("--palette " +  '"' + palettePalette + '"') else ""} \
      ~{if defined(colorColor) then ("--color " +  '"' + colorColor + '"') else ""} \
      ~{true="--debug" false="" debugDebug}
  >>>
}