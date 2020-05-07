version 1.0

task PlotSemivariogram.py {
  input {
    String inputInputPathX
    String inputInputPathY
    String outputOutputPath
  }
  command <<<
    plot_semivariogram.py \
      ~{if defined(inputInputPathX) then ("--input_path_x " +  '"' + inputInputPathX + '"') else ""} \
      ~{if defined(inputInputPathY) then ("--input_path_y " +  '"' + inputInputPathY + '"') else ""} \
      ~{if defined(outputOutputPath) then ("--output_path " +  '"' + outputOutputPath + '"') else ""}
  >>>
}