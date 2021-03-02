version 1.0

task Sdm {
  command <<<
    sdm
  >>>
  runtime {
    docker: "quay.io/biocontainers/sdm:1.73--he513fc3_1"
  }
  output {
    File out_stdout = stdout()
  }
}