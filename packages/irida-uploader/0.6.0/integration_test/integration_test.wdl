version 1.0

task Integrationtest {
  command <<<
    integration_test
  >>>
  runtime {
    docker: "quay.io/biocontainers/irida-uploader:0.6.0--py36_0"
  }
  output {
    File out_stdout = stdout()
  }
}