version 1.0

task Crisprmepy {
  command <<<
    crisprme_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/crisprme:1.6.5--hdfd78af_1"
  }
  output {
    File out_stdout = stdout()
  }
}