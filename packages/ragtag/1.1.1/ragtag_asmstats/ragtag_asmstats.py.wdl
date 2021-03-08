version 1.0

task RagtagAsmstatspy {
  command <<<
    ragtag_asmstats_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/ragtag:1.1.1--pyh7b7c402_0"
  }
  output {
    File out_stdout = stdout()
  }
}