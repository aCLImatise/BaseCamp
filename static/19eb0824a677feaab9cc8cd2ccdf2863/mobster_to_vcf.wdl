version 1.0

task MobsterToVcf {
  input {
    String mobster_to_vcf
  }
  command <<<
    mobster-to-vcf \
      ~{mobster_to_vcf}
  >>>
  parameter_meta {
    mobster_to_vcf: ""
  }
}