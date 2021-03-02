version 1.0

task MedakaDataPath {
  command <<<
    medaka_data_path
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}