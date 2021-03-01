version 1.0

task MegalodonExtrasPhaseVariantsMergeHaploidVariants {
  input {
    String? out_vcf
    String diploid_called_variants
    String derived_dot
    Int haplotype_two_variants
    String merged_haploid_variants_dot_vcf
  }
  command <<<
    megalodon_extras phase_variants merge_haploid_variants \
      ~{diploid_called_variants} \
      ~{derived_dot} \
      ~{haplotype_two_variants} \
      ~{merged_haploid_variants_dot_vcf} \
      ~{if defined(out_vcf) then ("--out-vcf " +  '"' + out_vcf + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/megalodon:2.2.10--py38h0213d0e_0"
  }
  parameter_meta {
    out_vcf: "Output name for VCF. Default:"
    diploid_called_variants: "Phased variants from which the diploid calls are"
    derived_dot: "haplotype1_variants   Variant file for haplotype 1."
    haplotype_two_variants: "Variant file for haplotype 2."
    merged_haploid_variants_dot_vcf: "--force-invalid-variant-processing"
  }
  output {
    File out_stdout = stdout()
  }
}