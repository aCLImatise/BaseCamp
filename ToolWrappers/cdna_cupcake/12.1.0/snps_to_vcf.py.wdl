version 1.0

task SnpsToVcfpy {
  command <<<
    snps_to_vcf_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}