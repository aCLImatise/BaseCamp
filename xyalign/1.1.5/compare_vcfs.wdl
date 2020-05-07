version 1.0

task CompareVcfs {
  input {
    String vcfVcfBefore
    String vcfVcfAfter
    String outputOutputFile
    String variantVariantSiteQuality
    String variantVariantGenotypeQuality
    String variantVariantDepth
    String chromChrom
  }
  command <<<
    compare_vcfs \
      ~{if defined(vcfVcfBefore) then ("--vcf_before " +  '"' + vcfVcfBefore + '"') else ""} \
      ~{if defined(vcfVcfAfter) then ("--vcf_after " +  '"' + vcfVcfAfter + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output_file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(variantVariantSiteQuality) then ("--variant_site_quality " +  '"' + variantVariantSiteQuality + '"') else ""} \
      ~{if defined(variantVariantGenotypeQuality) then ("--variant_genotype_quality " +  '"' + variantVariantGenotypeQuality + '"') else ""} \
      ~{if defined(variantVariantDepth) then ("--variant_depth " +  '"' + variantVariantDepth + '"') else ""} \
      ~{if defined(chromChrom) then ("--chrom " +  '"' + chromChrom + '"') else ""}
  >>>
}