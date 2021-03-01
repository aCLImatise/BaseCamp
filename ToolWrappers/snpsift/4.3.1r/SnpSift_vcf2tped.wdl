version 1.0

task SnpSiftVcf2tped {
  input {
    Boolean? force_overwrite_new
    Boolean? num
    Boolean? only_snp
    Boolean? only_bi_allelic
    Boolean? use_missing
    Boolean? use_missing_ref
    String? jar
    File file_do_ttf_am
    File file_dot_vcf
    String output_name
  }
  command <<<
    SnpSift vcf2tped \
      ~{file_do_ttf_am} \
      ~{file_dot_vcf} \
      ~{output_name} \
      ~{if (force_overwrite_new) then "-f" else ""} \
      ~{if (num) then "-num" else ""} \
      ~{if (only_snp) then "-onlySnp" else ""} \
      ~{if (only_bi_allelic) then "-onlyBiAllelic" else ""} \
      ~{if (use_missing) then "-useMissing" else ""} \
      ~{if (use_missing_ref) then "-useMissingRef" else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    force_overwrite_new: ": Force. Overwrite new files if they exist. Default: false"
    num: ": Use only numbers {1, 2, 3, 4} instead of bases {A, C, G, T}. Default: false"
    only_snp: ": Use only SNPs when converting VCF to TPED. Default: false"
    only_bi_allelic: ": Use only bi-allelic variants. Default: false"
    use_missing: ": Use entries with missing genotypes (otherwise they are filtered out). Default: true"
    use_missing_ref: ": Use entries with missing genotypes marking them as 'reference' instead of 'missing'. Default: false"
    jar: ""
    file_do_ttf_am: ": File with genotypes and groups information (in PLINK's TFAM format)"
    file_dot_vcf: ": A VCF file (variants and genotype data)"
    output_name: ": Base name for the new TPED and TFAM files."
  }
  output {
    File out_stdout = stdout()
  }
}