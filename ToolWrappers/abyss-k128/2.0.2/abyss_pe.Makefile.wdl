version 1.0

task AbysspeMakefile {
  command <<<
    abyss_pe_Makefile
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}