version 1.0

task Calcmemsh {
  command <<<
    calcmem_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/bbmap:38.90--h1296035_0"
  }
  output {
    File out_stdout = stdout()
  }
}