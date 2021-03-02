version 1.0

task InterhostpySnpEff {
  input {
    Directory? tmp_dir
    Boolean? tmp_dir_keep
    String? loglevel
    String annotate_variants_vcf
    String in_vcf
    String genomes
    String out_vcf
    String your_email_address
  }
  command <<<
    interhost_py snpEff \
      ~{annotate_variants_vcf} \
      ~{in_vcf} \
      ~{genomes} \
      ~{out_vcf} \
      ~{your_email_address} \
      ~{if defined(tmp_dir) then ("--tmp_dir " +  '"' + tmp_dir + '"') else ""} \
      ~{if (tmp_dir_keep) then "--tmp_dirKeep" else ""} \
      ~{if defined(loglevel) then ("--loglevel " +  '"' + loglevel + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tmp_dir: "Base directory for temp files. [default: /tmp]"
    tmp_dir_keep: "Keep the tmp_dir if an exception occurs while running.\\nDefault is to delete all temp files at the end, even\\nif there's a failure."
    loglevel: "Verboseness of output. [default: DEBUG]"
    annotate_variants_vcf: "Annotate variants in VCF file with translation consequences using snpEff."
    in_vcf: "Input VCF file"
    genomes: "genome name (snpEff db name, or NCBI accessions)"
    out_vcf: "Output VCF file"
    your_email_address: "Your email address. To access the Genbank\\nCoreNucleotide database, NCBI requires you to specify\\nyour email address with each request. In case of\\nexcessive usage of the E-utilities, NCBI will attempt\\nto contact a user at the email address provided before\\nblocking access."
  }
  output {
    File out_stdout = stdout()
  }
}