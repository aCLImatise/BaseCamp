version 1.0

task GenerateFusiongeneConvertCoordinateTrim {
  command <<<
    generate_fusiongene_convert_coordinate_trim
  >>>
  output {
    File out_stdout = stdout()
  }
}