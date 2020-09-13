version 1.0

task Lofreq2IndelOvlppy {
  command <<<
    lofreq2_indel_ovlp_py
  >>>
  output {
    File out_stdout = stdout()
  }
}