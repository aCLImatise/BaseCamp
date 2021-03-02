version 1.0

task NovoutilIupac {
  input {
    Boolean? lower_quality_limit
    Boolean? replace_reference_base
    Boolean? update_reference_changes
    Boolean? use_snp_vcf
    Int? sets_sample_specified
    String snp_file
    String fast_a_files
    String bed_files
  }
  command <<<
    novoutil iupac \
      ~{snp_file} \
      ~{fast_a_files} \
      ~{bed_files} \
      ~{if (lower_quality_limit) then "-q" else ""} \
      ~{if (replace_reference_base) then "-g" else ""} \
      ~{if (update_reference_changes) then "-i" else ""} \
      ~{if (use_snp_vcf) then "-w" else ""} \
      ~{if defined(sets_sample_specified) then ("-s " +  '"' + sets_sample_specified + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    lower_quality_limit: "<99>    Lower quality limit for SNPs. Default 30.\\nSNPs with quality of '.' are assumed as high quality."
    replace_reference_base: "Replace reference base with the genotype base code.\\nThe reference base will not be included in the IUPAC code if\\nthe SNP is homozygous. Zygosity is determined as follows:\\nif -s is specified then from GT attribute of the sample\\nelse if there is an AF tag then AF=1 is homozygous\\nelse check first GT tag."
    update_reference_changes: "Update reference with homozygous indels from the vcf file.\\nNote. That this changes the length of reference and will affect\\nlocation of annotations hence ability to give a list of bed\\nfiles to be relocated."
    use_snp_vcf: "Use with SNP files in wgsim format rather than vcf."
    sets_sample_specified: "Sets sample (1 based) to use for multi-sample vcf files.\\nWhen a sample is specified the GT of that sample is used for\\ndetermining genotype. If sample has ./. in GT attribute then\\nthe SNP is not encoded into the reference.\\nIf a multi-sample vcf file is used and -s is not specified\\nthen all SNPs are applied and AF attribute is used to determine\\ngenotype, AF=1.0 is homozygous for the SNP."
    snp_file: "is a sorted vcf file of SNPs, and"
    fast_a_files: "is one or more fasta files to be processed.\\nInput files may be compressed with gzip or bzip."
    bed_files: "BED format files whose coordinates should be updated to match the new \\nfasta file. Useful if indels are being incorporated in the new fasta files.\\nRelocated BED filenames are prefixed by 'new.'"
  }
  output {
    File out_stdout = stdout()
  }
}