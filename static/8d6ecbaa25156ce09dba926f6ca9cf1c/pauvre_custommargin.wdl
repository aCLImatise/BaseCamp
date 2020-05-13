version 1.0

task PauvreCustommargin {
  input {
    Boolean quietQuiet
    String dpiDpi
    Array[String]+ fileFileForm
    String inputInputFile
    String xXCol
    String yYCol
    Boolean noNoTransparent
    Boolean noNoTimestamp
    String outputOutputBaseName
    String plotPlotMaxY
    String plotPlotMaxX
    String plotPlotMinY
    String plotPlotMinX
    Boolean squareSquare
    String titleTitle
    String yYBin
    String xXBin
    Boolean addAddYAxes
  }
  command <<<
    pauvre custommargin \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(dpiDpi) then ("--dpi " +  '"' + dpiDpi + '"') else ""} \
      ~{if defined(fileFileForm) then ("--fileform " +  '"' + fileFileForm + '"') else ""} \
      ~{if defined(inputInputFile) then ("--input_file " +  '"' + inputInputFile + '"') else ""} \
      ~{if defined(xXCol) then ("--xcol " +  '"' + xXCol + '"') else ""} \
      ~{if defined(yYCol) then ("--ycol " +  '"' + yYCol + '"') else ""} \
      ~{true="--no_transparent" false="" noNoTransparent} \
      ~{true="--no_timestamp" false="" noNoTimestamp} \
      ~{if defined(outputOutputBaseName) then ("--output_base_name " +  '"' + outputOutputBaseName + '"') else ""} \
      ~{if defined(plotPlotMaxY) then ("--plot_max_y " +  '"' + plotPlotMaxY + '"') else ""} \
      ~{if defined(plotPlotMaxX) then ("--plot_max_x " +  '"' + plotPlotMaxX + '"') else ""} \
      ~{if defined(plotPlotMinY) then ("--plot_min_y " +  '"' + plotPlotMinY + '"') else ""} \
      ~{if defined(plotPlotMinX) then ("--plot_min_x " +  '"' + plotPlotMinX + '"') else ""} \
      ~{true="--square" false="" squareSquare} \
      ~{if defined(titleTitle) then ("--title " +  '"' + titleTitle + '"') else ""} \
      ~{if defined(yYBin) then ("--ybin " +  '"' + yYBin + '"') else ""} \
      ~{if defined(xXBin) then ("--xbin " +  '"' + xXBin + '"') else ""} \
      ~{true="--add-yaxes" false="" addAddYAxes}
  >>>
}