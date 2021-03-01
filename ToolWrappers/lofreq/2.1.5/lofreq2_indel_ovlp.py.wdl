version 1.0

task Lofreq2IndelOvlppy {
  command <<<
    lofreq2_indel_ovlp_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}