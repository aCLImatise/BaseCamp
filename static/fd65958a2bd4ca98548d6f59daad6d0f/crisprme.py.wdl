version 1.0

task Crisprmepy {
  command <<<
    crisprme_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/crisprme:1.7.2--hdfd78af_0"
  }
  output {
    File out_stdout = stdout()
  }
}