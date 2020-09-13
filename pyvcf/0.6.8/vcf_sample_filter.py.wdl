version 1.0

task VcfSampleFilterpy {
  command <<<
    vcf_sample_filter_py
  >>>
  output {
    File out_stdout = stdout()
  }
}