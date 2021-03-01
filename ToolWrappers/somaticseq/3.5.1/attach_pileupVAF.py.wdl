version 1.0

task AttachPileupVAFpy {
  input {
    File? my_vcf_file
    String? normal_sample_name
    String? tumor_sample_name
    File? normal_pile_up_file
    File? tumor_pile_up_file
    File? reference_fast_a_fai
    File? reference_fast_a_dict
    Boolean? pile_up_variant_allele_frequency
    Boolean? pile_up_dp_four
    File? output_file
  }
  command <<<
    attach_pileupVAF_py \
      ~{if defined(my_vcf_file) then ("--my-vcf-file " +  '"' + my_vcf_file + '"') else ""} \
      ~{if defined(normal_sample_name) then ("--normal-sample-name " +  '"' + normal_sample_name + '"') else ""} \
      ~{if defined(tumor_sample_name) then ("--tumor-sample-name " +  '"' + tumor_sample_name + '"') else ""} \
      ~{if defined(normal_pile_up_file) then ("--normal-pileup-file " +  '"' + normal_pile_up_file + '"') else ""} \
      ~{if defined(tumor_pile_up_file) then ("--tumor-pileup-file " +  '"' + tumor_pile_up_file + '"') else ""} \
      ~{if defined(reference_fast_a_fai) then ("--reference-fasta-fai " +  '"' + reference_fast_a_fai + '"') else ""} \
      ~{if defined(reference_fast_a_dict) then ("--reference-fasta-dict " +  '"' + reference_fast_a_dict + '"') else ""} \
      ~{if (pile_up_variant_allele_frequency) then "--pileup-variant-allele-frequency" else ""} \
      ~{if (pile_up_dp_four) then "--pileup-DP4" else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    my_vcf_file: "My VCF (default: None)"
    normal_sample_name: "Normal Sample Name (default: NORMAL)"
    tumor_sample_name: "Tumor Sample Name (default: TUMOR)"
    normal_pile_up_file: "Normal VCF File (default: None)"
    tumor_pile_up_file: "Tumor VCF File (default: None)"
    reference_fast_a_fai: "Use the fasta.fai file to get the valid contigs\\n(default: None)"
    reference_fast_a_dict: "Use the reference dict file to get the valid contigs\\n(default: None)"
    pile_up_variant_allele_frequency: "Variant Allele Frequency calculated from pileup file\\n(default: False)"
    pile_up_dp_four: "DP4 from pileup file (default: False)"
    output_file: "Output File Name (default: None)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}