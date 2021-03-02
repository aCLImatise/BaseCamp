version 1.0

task SnpSiftPrivate {
  input {
    String? jar
    File file_do_ttf_am
    File file_dot_vcf
  }
  command <<<
    SnpSift private \
      ~{file_do_ttf_am} \
      ~{file_dot_vcf} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    jar: ""
    file_do_ttf_am: ": File with genotypes and groups information (in PLINK's TFAM format)"
    file_dot_vcf: ": A VCF file (variants and genotype data). Default: 'STDIN'"
  }
  output {
    File out_stdout = stdout()
  }
}