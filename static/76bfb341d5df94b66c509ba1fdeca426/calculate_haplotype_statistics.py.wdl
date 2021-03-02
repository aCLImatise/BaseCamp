version 1.0

task CalculateHaplotypeStatisticspy {
  input {
    Int? v_two
    Array[Int] vcf_one
    Array[Int] vcf_two
    Array[Int] haplotype_blocks_one
    Array[Int] haplotype_blocks_two
    Boolean? indels
  }
  command <<<
    calculate_haplotype_statistics_py \
      ~{if defined(v_two) then ("-v2 " +  '"' + v_two + '"') else ""} \
      ~{if defined(vcf_one) then ("--vcf1 " +  '"' + vcf_one + '"') else ""} \
      ~{if defined(vcf_two) then ("--vcf2 " +  '"' + vcf_two + '"') else ""} \
      ~{if defined(haplotype_blocks_one) then ("--haplotype_blocks1 " +  '"' + haplotype_blocks_one + '"') else ""} \
      ~{if defined(haplotype_blocks_two) then ("--haplotype_blocks2 " +  '"' + haplotype_blocks_two + '"') else ""} \
      ~{if (indels) then "--indels" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    v_two: "optionally -h2 arguments). All files must contain information for one"
    vcf_one: "A phased, single sample VCF file to compute haplotype\\nstatistics on."
    vcf_two: "A phased, single sample VCF file to use as the \\\"ground\\ntruth\\\" haplotype."
    haplotype_blocks_one: "Override the haplotype information in \\\"-v1\\\" with the\\ninformation in this HapCUT2-format haplotype block\\nfile. If this option is used, then the VCF specified\\nwith -v1 MUST be the same VCF used with HapCUT2\\n(--vcf) to produce the haplotype block file!"
    haplotype_blocks_two: "Override the haplotype information in \\\"-v2\\\" with the\\ninformation in this HapCUT2-format haplotype block\\nfile. If this option is used, then the VCF specified\\nwith -v2 MUST be the same VCF used with HapCUT2\\n(--vcf) to produce the haplotype block file!"
    indels: "Use this flag to consider indel variants. Default:\\nIndels ignored.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}