version 1.0

task Vcf2bedpy {
  command <<<
    vcf2bed_py
  >>>
  output {
    File out_stdout = stdout()
  }
}