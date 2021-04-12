version 1.0

task MedakaDataPath {
  command <<<
    medaka_data_path
  >>>
  runtime {
    docker: "quay.io/biocontainers/medaka:1.2.6--py38h64b100c_0"
  }
  output {
    File out_stdout = stdout()
  }
}