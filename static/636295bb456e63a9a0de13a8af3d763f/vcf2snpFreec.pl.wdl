version 1.0

task Vcf2snpFreecpl {
  input {
    Boolean? file_dbsnp_file
  }
  command <<<
    vcf2snpFreec_pl \
      ~{if (file_dbsnp_file) then "-f" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_dbsnp_file: "file                   dbSNP vcf file"
  }
  output {
    File out_stdout = stdout()
  }
}