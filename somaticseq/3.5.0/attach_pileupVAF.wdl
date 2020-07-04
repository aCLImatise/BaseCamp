version 1.0

task AttachPileupVAF.py {
  input {
    String? my_vcf_file
    String? normal_sample_name
    String? tumor_sample_name
    String? normal_pile_up_file
    String? tumor_pile_up_file
    String? reference_fast_a_fai
    String? reference_fast_a_dict
    Boolean? pile_up_variant_allele_frequency
    Boolean? pile_up_dp_four
    String? output_file
  }
  command <<<
    attach_pileupVAF.py \
      ~{if defined(my_vcf_file) then ("--my-vcf-file " +  '"' + my_vcf_file + '"') else ""} \
      ~{if defined(normal_sample_name) then ("--normal-sample-name " +  '"' + normal_sample_name + '"') else ""} \
      ~{if defined(tumor_sample_name) then ("--tumor-sample-name " +  '"' + tumor_sample_name + '"') else ""} \
      ~{if defined(normal_pile_up_file) then ("--normal-pileup-file " +  '"' + normal_pile_up_file + '"') else ""} \
      ~{if defined(tumor_pile_up_file) then ("--tumor-pileup-file " +  '"' + tumor_pile_up_file + '"') else ""} \
      ~{if defined(reference_fast_a_fai) then ("--reference-fasta-fai " +  '"' + reference_fast_a_fai + '"') else ""} \
      ~{if defined(reference_fast_a_dict) then ("--reference-fasta-dict " +  '"' + reference_fast_a_dict + '"') else ""} \
      ~{true="--pileup-variant-allele-frequency" false="" pile_up_variant_allele_frequency} \
      ~{true="--pileup-DP4" false="" pile_up_dp_four} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""}
  >>>
  parameter_meta {
    my_vcf_file: "My VCF (default: None)"
    normal_sample_name: "Normal Sample Name (default: NORMAL)"
    tumor_sample_name: "Tumor Sample Name (default: TUMOR)"
    normal_pile_up_file: "Normal VCF File (default: None)"
    tumor_pile_up_file: "Tumor VCF File (default: None)"
    reference_fast_a_fai: "Use the fasta.fai file to get the valid contigs (default: None)"
    reference_fast_a_dict: "Use the reference dict file to get the valid contigs (default: None)"
    pile_up_variant_allele_frequency: "Variant Allele Frequency calculated from pileup file (default: False)"
    pile_up_dp_four: "DP4 from pileup file (default: False)"
    output_file: "Output File Name (default: None)"
  }
}