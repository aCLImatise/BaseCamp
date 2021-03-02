version 1.0

task VcfremovenonATGC {
  command <<<
    vcfremovenonATGC
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}