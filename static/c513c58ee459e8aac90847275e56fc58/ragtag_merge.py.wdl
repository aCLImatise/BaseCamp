version 1.0

task RagtagMergepy {
  command <<<
    ragtag_merge_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/ragtag:1.1.1--pyh7b7c402_0"
  }
  output {
    File out_stdout = stdout()
  }
}