version 1.0

task PangoLEARN {
  command <<<
    pangoLEARN
  >>>
  runtime {
    docker: "quay.io/biocontainers/pangolearn:2021.04.21--pyh5e36f6f_0"
  }
  output {
    File out_stdout = stdout()
  }
}