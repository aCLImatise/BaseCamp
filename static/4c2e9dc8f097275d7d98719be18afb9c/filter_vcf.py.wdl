version 1.0

task FilterVcfpy {
  command <<<
    filter_vcf_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}