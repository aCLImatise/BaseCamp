version 1.0

task Vcf2snpFreecpl {
  input {
    Boolean? file_dbsnp_vcf
  }
  command <<<
    vcf2snpFreec_pl \
      ~{if (file_dbsnp_vcf) then "-f" else ""}
  >>>
  parameter_meta {
    file_dbsnp_vcf: "file                   dbSNP vcf file"
  }
  output {
    File out_stdout = stdout()
  }
}