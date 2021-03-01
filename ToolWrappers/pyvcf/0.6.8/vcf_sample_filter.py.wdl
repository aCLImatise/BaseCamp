version 1.0

task VcfSampleFilterpy {
  command <<<
    vcf_sample_filter_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}