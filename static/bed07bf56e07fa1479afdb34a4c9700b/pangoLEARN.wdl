version 1.0

task PangoLEARN {
  command <<<
    pangoLEARN
  >>>
  runtime {
    docker: "quay.io/biocontainers/pangolearn:2021.02.18--pyh3252c3a_0"
  }
  output {
    File out_stdout = stdout()
  }
}