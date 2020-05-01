version 1.0

task ModulatedModularityClustering.py {
  input {
    String inputInput
    String designDesign
    String idId
    String correlationCorrelation
    String sigmaSigmaLow
    String sigmaSigmaHigh
    String sigmaSigmaNum
    String figureFigure
    String outOut
    String palettePalette
    String colorColor
  }
  command <<<
    modulated_modularity_clustering.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(designDesign) then ("--design " +  '"' + designDesign + '"') else ""} \
      ~{if defined(idId) then ("--ID " +  '"' + idId + '"') else ""} \
      ~{if defined(correlationCorrelation) then ("--correlation " +  '"' + correlationCorrelation + '"') else ""} \
      ~{if defined(sigmaSigmaLow) then ("--sigmaLow " +  '"' + sigmaSigmaLow + '"') else ""} \
      ~{if defined(sigmaSigmaHigh) then ("--sigmaHigh " +  '"' + sigmaSigmaHigh + '"') else ""} \
      ~{if defined(sigmaSigmaNum) then ("--sigmaNum " +  '"' + sigmaSigmaNum + '"') else ""} \
      ~{if defined(figureFigure) then ("--figure " +  '"' + figureFigure + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(palettePalette) then ("--palette " +  '"' + palettePalette + '"') else ""} \
      ~{if defined(colorColor) then ("--color " +  '"' + colorColor + '"') else ""}
  >>>
}