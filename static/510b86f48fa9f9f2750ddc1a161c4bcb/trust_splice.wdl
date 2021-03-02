version 1.0

task Trustsplice {
  command <<<
    trust_splice
  >>>
  runtime {
    docker: "quay.io/biocontainers/psiclass:1.0.2--he1b5a44_0"
  }
  output {
    File out_stdout = stdout()
  }
}