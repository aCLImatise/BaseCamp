version 1.0

task CompareVcfs {
  input {
    String? vcf_before
    String? vcf_after
    String? output_file
    String? variant_site_quality
    String? variant_genotype_quality
    String? variant_depth
    String? chrom
  }
  command <<<
    compare_vcfs \
      ~{if defined(vcf_before) then ("--vcf_before " +  '"' + vcf_before + '"') else ""} \
      ~{if defined(vcf_after) then ("--vcf_after " +  '"' + vcf_after + '"') else ""} \
      ~{if defined(output_file) then ("--output_file " +  '"' + output_file + '"') else ""} \
      ~{if defined(variant_site_quality) then ("--variant_site_quality " +  '"' + variant_site_quality + '"') else ""} \
      ~{if defined(variant_genotype_quality) then ("--variant_genotype_quality " +  '"' + variant_genotype_quality + '"') else ""} \
      ~{if defined(variant_depth) then ("--variant_depth " +  '"' + variant_depth + '"') else ""} \
      ~{if defined(chrom) then ("--chrom " +  '"' + chrom + '"') else ""}
  >>>
  parameter_meta {
    vcf_before: "Full path to first Platypus VCF output from BAM_ANALYSIS module. This will be treated as the 'before' condition for comparisons."
    vcf_after: "Full path to second Platypus VCF output from BAM_ANALYSIS module. This will be treated as the 'after' condition for comparisons."
    output_file: "Name of output file (including path, if to be created elsewhere)."
    variant_site_quality: "Consider all SNPs with a site quality (QUAL) greater than or equal to this value. Default is 30."
    variant_genotype_quality: "Consider all SNPs with a sample genotype quality greater than or equal to this value. Default is 30."
    variant_depth: "Consider all SNPs with a sample depth greater than or equal to this value. Default is 4."
    chrom: "Name of chromosome to analyze."
  }
}