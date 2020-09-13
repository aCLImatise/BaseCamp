version 1.0

task AbysspeMakefile {
  command <<<
    abyss_pe_Makefile
  >>>
  output {
    File out_stdout = stdout()
  }
}