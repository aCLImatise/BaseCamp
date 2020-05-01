version 1.0

task ScatterPlot3D.py {
  input {
    String inputInput
    String designDesign
    String idId
    String groupGroup
    String xX
    String yY
    String zZ
    String figureFigure
    String palettePalette
    String colorColor
    String rotationRotation
    String elevationElevation
  }
  command <<<
    scatter_plot_3D.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(designDesign) then ("--design " +  '"' + designDesign + '"') else ""} \
      ~{if defined(idId) then ("--ID " +  '"' + idId + '"') else ""} \
      ~{if defined(groupGroup) then ("--group " +  '"' + groupGroup + '"') else ""} \
      ~{if defined(xX) then ("--X " +  '"' + xX + '"') else ""} \
      ~{if defined(yY) then ("--Y " +  '"' + yY + '"') else ""} \
      ~{if defined(zZ) then ("--Z " +  '"' + zZ + '"') else ""} \
      ~{if defined(figureFigure) then ("--figure " +  '"' + figureFigure + '"') else ""} \
      ~{if defined(palettePalette) then ("--palette " +  '"' + palettePalette + '"') else ""} \
      ~{if defined(colorColor) then ("--color " +  '"' + colorColor + '"') else ""} \
      ~{if defined(rotationRotation) then ("--rotation " +  '"' + rotationRotation + '"') else ""} \
      ~{if defined(elevationElevation) then ("--elevation " +  '"' + elevationElevation + '"') else ""}
  >>>
}