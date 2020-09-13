version 1.0

task SnpsToVcfpy {
  command <<<
    snps_to_vcf_py
  >>>
  output {
    File out_stdout = stdout()
  }
}