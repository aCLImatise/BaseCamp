version 1.0

task Integrationtest {
  command <<<
    integration_test
  >>>
  runtime {
    docker: "quay.io/biocontainers/irida-uploader:0.5.1--py36_1"
  }
  output {
    File out_stdout = stdout()
  }
}