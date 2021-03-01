version 1.0

task GenerateFusiongeneConvertCoordinateTrim {
  command <<<
    generate_fusiongene_convert_coordinate_trim
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}