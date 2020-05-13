version 1.0

task ScatterPlot2D.py {
  input {
    String yY
    String inputInput
    String designDesign
    String idId
    String groupGroup
    String xX
    String yY
    String figureFigure
    String palettePalette
    String colorColor
  }
  command <<<
    scatter_plot_2D.py \
      ~{if defined(yY) then ("-y " +  '"' + yY + '"') else ""} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(designDesign) then ("--design " +  '"' + designDesign + '"') else ""} \
      ~{if defined(idId) then ("--ID " +  '"' + idId + '"') else ""} \
      ~{if defined(groupGroup) then ("--group " +  '"' + groupGroup + '"') else ""} \
      ~{if defined(xX) then ("--X " +  '"' + xX + '"') else ""} \
      ~{if defined(yY) then ("--Y " +  '"' + yY + '"') else ""} \
      ~{if defined(figureFigure) then ("--figure " +  '"' + figureFigure + '"') else ""} \
      ~{if defined(palettePalette) then ("--palette " +  '"' + palettePalette + '"') else ""} \
      ~{if defined(colorColor) then ("--color " +  '"' + colorColor + '"') else ""}
  >>>
}