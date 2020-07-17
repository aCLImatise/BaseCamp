version 1.0

task Vcfremoveaberrantgenotypes {
  input {
    String vcf_file
  }
  command <<<
    vcfremoveaberrantgenotypes \
      ~{vcf_file}
  >>>
  parameter_meta {
    vcf_file: ""
  }
}