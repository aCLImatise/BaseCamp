version 1.0

task Bcftools {
  input {
    Boolean vcfVcf
    Boolean vcfVcf
  }
  command <<<
    bcftools \
      ~{true="-- VCF" false="" vcfVcf} \
      ~{true="-- VCF" false="" vcfVcf}
  >>>
}