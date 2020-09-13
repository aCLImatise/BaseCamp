version 1.0

task Hisat2ExtractSnpsHaplotypesVCFpy {
  input {
    String? reference_type
    Int? inter_gap
    Int? intra_gap
    Boolean? non_rs
    File? genotype_vcf
    String? genotype_gene_list
    Boolean? extra_files
    Boolean? verbose
  }
  command <<<
    hisat2_extract_snps_haplotypes_VCF_py \
      ~{if defined(reference_type) then ("--reference-type " +  '"' + reference_type + '"') else ""} \
      ~{if defined(inter_gap) then ("--inter-gap " +  '"' + inter_gap + '"') else ""} \
      ~{if defined(intra_gap) then ("--intra-gap " +  '"' + intra_gap + '"') else ""} \
      ~{if (non_rs) then "--non-rs" else ""} \
      ~{if defined(genotype_vcf) then ("--genotype-vcf " +  '"' + genotype_vcf + '"') else ""} \
      ~{if defined(genotype_gene_list) then ("--genotype-gene-list " +  '"' + genotype_gene_list + '"') else ""} \
      ~{if (extra_files) then "--extra-files" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    reference_type: "Reference type: gene, chromosome, and genome (default:\\ngenome)"
    inter_gap: "Maximum distance for variants to be in the same\\nhaplotype (default: 30)"
    intra_gap: "Break a haplotype into several haplotypes (default:\\n50)"
    non_rs: "Allow SNP IDs not beginning with rs"
    genotype_vcf: "VCF file name for genotyping (default: empty)"
    genotype_gene_list: "A comma-separated list of genes to be genotyped\\n(default: empty)"
    extra_files: "Output extra files such as _backbone.fa and .ref"
    verbose: "also print some statistics to stderr"
  }
  output {
    File out_stdout = stdout()
  }
}