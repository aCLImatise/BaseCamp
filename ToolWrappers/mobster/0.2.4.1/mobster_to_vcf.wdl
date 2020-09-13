version 1.0

task Mobstertovcf {
  input {
    String mobster_to_vcf
  }
  command <<<
    mobster_to_vcf \
      ~{mobster_to_vcf}
  >>>
  parameter_meta {
    mobster_to_vcf: ""
  }
  output {
    File out_stdout = stdout()
  }
}