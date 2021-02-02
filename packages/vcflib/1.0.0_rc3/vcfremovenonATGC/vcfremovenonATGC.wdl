version 1.0

task VcfremovenonATGC {
  command <<<
    vcfremovenonATGC
  >>>
  output {
    File out_stdout = stdout()
  }
}