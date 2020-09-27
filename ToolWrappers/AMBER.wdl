version 1.0

task AMBER {
  input {
    Int? max_depth_percent
    Int? max_het_af_percent
    Int? min_base_quality
    Int? min_depth_percent
    Int? min_het_af_percent
    Int? min_mapping_quality
    Directory? output_dir
    File? ref_genome
    String? reference
    File? reference_bam
    Int? threads
    String? tumor
    File? tumor_bam
    Boolean? tumor_only
    Int? tumor_only_min_support
    Int? tumor_only_min_vaf
    String? validation_stringency
    String amber_application
  }
  command <<<
    AMBER \
      ~{amber_application} \
      ~{if defined(max_depth_percent) then ("-max_depth_percent " +  '"' + max_depth_percent + '"') else ""} \
      ~{if defined(max_het_af_percent) then ("-max_het_af_percent " +  '"' + max_het_af_percent + '"') else ""} \
      ~{if defined(min_base_quality) then ("-min_base_quality " +  '"' + min_base_quality + '"') else ""} \
      ~{if defined(min_depth_percent) then ("-min_depth_percent " +  '"' + min_depth_percent + '"') else ""} \
      ~{if defined(min_het_af_percent) then ("-min_het_af_percent " +  '"' + min_het_af_percent + '"') else ""} \
      ~{if defined(min_mapping_quality) then ("-min_mapping_quality " +  '"' + min_mapping_quality + '"') else ""} \
      ~{if defined(output_dir) then ("-output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(ref_genome) then ("-ref_genome " +  '"' + ref_genome + '"') else ""} \
      ~{if defined(reference) then ("-reference " +  '"' + reference + '"') else ""} \
      ~{if defined(reference_bam) then ("-reference_bam " +  '"' + reference_bam + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(tumor) then ("-tumor " +  '"' + tumor + '"') else ""} \
      ~{if defined(tumor_bam) then ("-tumor_bam " +  '"' + tumor_bam + '"') else ""} \
      ~{if (tumor_only) then "-tumor_only" else ""} \
      ~{if defined(tumor_only_min_support) then ("-tumor_only_min_support " +  '"' + tumor_only_min_support + '"') else ""} \
      ~{if defined(tumor_only_min_vaf) then ("-tumor_only_min_vaf " +  '"' + tumor_only_min_vaf + '"') else ""} \
      ~{if defined(validation_stringency) then ("-validation_stringency " +  '"' + validation_stringency + '"') else ""}
  >>>
  parameter_meta {
    max_depth_percent: "Min percentage of median depth [1.5]"
    max_het_af_percent: "Max heterozygous AF% [0.65]"
    min_base_quality: "Minimum quality for a base to be\\nconsidered [13]"
    min_depth_percent: "Max percentage of median depth [0.5]"
    min_het_af_percent: "Min heterozygous AF% [0.4]"
    min_mapping_quality: "Minimum mapping quality for an alignment\\nto be used [1]"
    output_dir: "Output directory"
    ref_genome: "Path to the ref genome fasta file"
    reference: "Name of reference sample"
    reference_bam: "Path to reference bam file"
    threads: "Number of threads [1]"
    tumor: "Name of tumor sample"
    tumor_bam: "Path to tumor bam file"
    tumor_only: "Tumor only mode"
    tumor_only_min_support: "Min VAF in ref and alt in tumor only mode\\n[2]"
    tumor_only_min_vaf: "Min support in ref and alt in tumor only\\nmode [0.05]"
    validation_stringency: "SAM validation strategy: STRICT, SILENT,\\nLENIENT [STRICT]\\n"
    amber_application: "-loci <arg>                     Path to BAF loci vcf file"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}