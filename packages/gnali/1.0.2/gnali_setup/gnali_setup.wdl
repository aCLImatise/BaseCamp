version 1.0

task GnaliSetup {
  command <<<
    gnali_setup
  >>>
  runtime {
    docker: "quay.io/biocontainers/gnali:1.0.2--py37heccd8a3_0"
  }
  output {
    File out_stdout = stdout()
  }
}