version 1.0

task GenerateFusiongeneConvertCoordinateTrimDRanger {
  command <<<
    generate_fusiongene_convert_coordinate_trim_dRanger
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}