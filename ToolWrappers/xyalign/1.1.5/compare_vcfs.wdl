version 1.0

task CompareVcfs {
  input {
    File? output_file
    File? vcf_before
    File? vcf_after
    Int? variant_site_quality
    Int? variant_genotype_quality
    Int? variant_depth
    String? chrom
  }
  command <<<
    compare_vcfs \
      ~{if defined(output_file) then ("--output_file " +  '"' + output_file + '"') else ""} \
      ~{if defined(vcf_before) then ("--vcf_before " +  '"' + vcf_before + '"') else ""} \
      ~{if defined(vcf_after) then ("--vcf_after " +  '"' + vcf_after + '"') else ""} \
      ~{if defined(variant_site_quality) then ("--variant_site_quality " +  '"' + variant_site_quality + '"') else ""} \
      ~{if defined(variant_genotype_quality) then ("--variant_genotype_quality " +  '"' + variant_genotype_quality + '"') else ""} \
      ~{if defined(variant_depth) then ("--variant_depth " +  '"' + variant_depth + '"') else ""} \
      ~{if defined(chrom) then ("--chrom " +  '"' + chrom + '"') else ""}
  >>>
  parameter_meta {
    output_file: "[--variant_site_quality VARIANT_SITE_QUALITY]\\n[--variant_genotype_quality VARIANT_GENOTYPE_QUALITY]\\n[--variant_depth VARIANT_DEPTH] --chrom CHROM"
    vcf_before: "Full path to first Platypus VCF output from\\nBAM_ANALYSIS module. This will be treated as the\\n'before' condition for comparisons."
    vcf_after: "Full path to second Platypus VCF output from\\nBAM_ANALYSIS module. This will be treated as the\\n'after' condition for comparisons."
    variant_site_quality: "Consider all SNPs with a site quality (QUAL) greater\\nthan or equal to this value. Default is 30."
    variant_genotype_quality: "Consider all SNPs with a sample genotype quality\\ngreater than or equal to this value. Default is 30."
    variant_depth: "Consider all SNPs with a sample depth greater than or\\nequal to this value. Default is 4."
    chrom: "Name of chromosome to analyze."
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
    File out_vcf_before = "${in_vcf_before}"
    File out_vcf_after = "${in_vcf_after}"
  }
}