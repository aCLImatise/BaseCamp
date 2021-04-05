version 1.0

task AbysspeMakefile {
  command <<<
    abyss_pe_Makefile
  >>>
  runtime {
    docker: "quay.io/biocontainers/abyss:2.3.0--ha4ec83a_0"
  }
  output {
    File out_stdout = stdout()
  }
}