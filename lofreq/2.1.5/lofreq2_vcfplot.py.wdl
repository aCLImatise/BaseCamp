version 1.0

task Lofreq2Vcfplotpy {
  command <<<
    lofreq2_vcfplot_py
  >>>
  output {
    File out_stdout = stdout()
  }
}