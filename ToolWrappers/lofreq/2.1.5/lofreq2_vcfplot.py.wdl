version 1.0

task Lofreq2Vcfplotpy {
  command <<<
    lofreq2_vcfplot_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}