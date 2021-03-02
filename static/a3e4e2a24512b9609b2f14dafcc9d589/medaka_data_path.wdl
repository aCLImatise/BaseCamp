version 1.0

task MedakaDataPath {
  command <<<
    medaka_data_path
  >>>
  runtime {
    docker: "quay.io/biocontainers/medaka:1.2.3--py36hbcc4abb_0"
  }
  output {
    File out_stdout = stdout()
  }
}