version 1.0

task Gripss {
  input {
    File? breakpoint_p_on
    Int? hard_max_normal_absolute_support
    Int? hard_max_normal_relative_support
    Int? hard_min_tumor_qual
    File? input_vcf
    Int? max_in_exact_hom_length_short_del
    Int? max_short_strand_bias
    Int? min_length
    Int? min_normal_coverage
    Int? min_qual_break_end
    Int? min_qual_break_point
    Int? min_qual_rescue_mobile_element_insertion
    Int? min_tumor_af
    File? output_vcf
    String? ref_genome
    String? reference
    Int? soft_max_normal_relative_support
    String? tumor
    String grips_s
    File breakpointhotspot_arg_paired
    String maxhomlengthshortinv_arg_max
  }
  command <<<
    gripss \
      ~{grips_s} \
      ~{breakpointhotspot_arg_paired} \
      ~{maxhomlengthshortinv_arg_max} \
      ~{if defined(breakpoint_p_on) then ("-breakpoint_pon " +  '"' + breakpoint_p_on + '"') else ""} \
      ~{if defined(hard_max_normal_absolute_support) then ("-hard_max_normal_absolute_support " +  '"' + hard_max_normal_absolute_support + '"') else ""} \
      ~{if defined(hard_max_normal_relative_support) then ("-hard_max_normal_relative_support " +  '"' + hard_max_normal_relative_support + '"') else ""} \
      ~{if defined(hard_min_tumor_qual) then ("-hard_min_tumor_qual " +  '"' + hard_min_tumor_qual + '"') else ""} \
      ~{if defined(input_vcf) then ("-input_vcf " +  '"' + input_vcf + '"') else ""} \
      ~{if defined(max_in_exact_hom_length_short_del) then ("-max_inexact_hom_length_short_del " +  '"' + max_in_exact_hom_length_short_del + '"') else ""} \
      ~{if defined(max_short_strand_bias) then ("-max_short_strand_bias " +  '"' + max_short_strand_bias + '"') else ""} \
      ~{if defined(min_length) then ("-min_length " +  '"' + min_length + '"') else ""} \
      ~{if defined(min_normal_coverage) then ("-min_normal_coverage " +  '"' + min_normal_coverage + '"') else ""} \
      ~{if defined(min_qual_break_end) then ("-min_qual_break_end " +  '"' + min_qual_break_end + '"') else ""} \
      ~{if defined(min_qual_break_point) then ("-min_qual_break_point " +  '"' + min_qual_break_point + '"') else ""} \
      ~{if defined(min_qual_rescue_mobile_element_insertion) then ("-min_qual_rescue_mobile_element_insertion " +  '"' + min_qual_rescue_mobile_element_insertion + '"') else ""} \
      ~{if defined(min_tumor_af) then ("-min_tumor_af " +  '"' + min_tumor_af + '"') else ""} \
      ~{if defined(output_vcf) then ("-output_vcf " +  '"' + output_vcf + '"') else ""} \
      ~{if defined(ref_genome) then ("-ref_genome " +  '"' + ref_genome + '"') else ""} \
      ~{if defined(reference) then ("-reference " +  '"' + reference + '"') else ""} \
      ~{if defined(soft_max_normal_relative_support) then ("-soft_max_normal_relative_support " +  '"' + soft_max_normal_relative_support + '"') else ""} \
      ~{if defined(tumor) then ("-tumor " +  '"' + tumor + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hmftools-gripss:1.9--0"
  }
  parameter_meta {
    breakpoint_p_on: "Paired breakpoint pon\\nbedpe file"
    hard_max_normal_absolute_support: "Hard max normal\\nabsolute support [3]"
    hard_max_normal_relative_support: "Hard max normal\\nrelative support [0.06]"
    hard_min_tumor_qual: "Hard min tumor qual\\n[100]"
    input_vcf: "Path to GRIDSS VCF"
    max_in_exact_hom_length_short_del: "Max inexact homology\\nlength short del [5]"
    max_short_strand_bias: "Max short strand bias\\n[0.95]"
    min_length: "Min length [32]"
    min_normal_coverage: "Min normal coverage [8]"
    min_qual_break_end: "Min qual break end\\n[1000]"
    min_qual_break_point: "Min qual break point\\n[400]"
    min_qual_rescue_mobile_element_insertion: "Min qual rescue mobile\\nelement insertions\\n[1000]"
    min_tumor_af: "Min tumor allelic\\nfrequency [0.005]"
    output_vcf: "Path to output VCF"
    ref_genome: "Ref genome"
    reference: "Optional name of\\nreference sample"
    soft_max_normal_relative_support: "Soft max normal\\nrelative support [0.03]"
    tumor: "Name of tumor sample"
    grips_s: "-breakend_pon <arg>                               Single breakend pon bed"
    breakpointhotspot_arg_paired: "-breakpoint_hotspot <arg>                         Paired breakpoint"
    maxhomlengthshortinv_arg_max: "-max_hom_length_short_inv <arg>                   Max homology length"
  }
  output {
    File out_stdout = stdout()
    File out_output_vcf = "${in_output_vcf}"
  }
}