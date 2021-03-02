version 1.0

task Configini {
  command <<<
    config_ini
  >>>
  runtime {
    docker: "quay.io/biocontainers/optitype:1.3.5--0"
  }
  output {
    File out_stdout = stdout()
  }
}