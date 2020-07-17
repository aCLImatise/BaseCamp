version 1.0

task Vcf2snpFreec.pl {
  input {
    Boolean? file_dbsnp_vcf
  }
  command <<<
    vcf2snpFreec.pl \
      ~{true="-f" false="" file_dbsnp_vcf}
  >>>
  parameter_meta {
    file_dbsnp_vcf: "file                   dbSNP vcf file"
  }
}