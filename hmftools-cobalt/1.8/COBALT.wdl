version 1.0

task COBALT {
  input {
    String? gc_profile
    String? min_quality
    String? output_dir
    String? ref_genome
    String? reference
    String? reference_bam
    String? threads
    String? tumor
    String? tumor_bam
    String? validation_stringency
    String count_bam_lines_application
  }
  command <<<
    COBALT \
      ~{count_bam_lines_application} \
      ~{if defined(gc_profile) then ("-gc_profile " +  '"' + gc_profile + '"') else ""} \
      ~{if defined(min_quality) then ("-min_quality " +  '"' + min_quality + '"') else ""} \
      ~{if defined(output_dir) then ("-output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(ref_genome) then ("-ref_genome " +  '"' + ref_genome + '"') else ""} \
      ~{if defined(reference) then ("-reference " +  '"' + reference + '"') else ""} \
      ~{if defined(reference_bam) then ("-reference_bam " +  '"' + reference_bam + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(tumor) then ("-tumor " +  '"' + tumor + '"') else ""} \
      ~{if defined(tumor_bam) then ("-tumor_bam " +  '"' + tumor_bam + '"') else ""} \
      ~{if defined(validation_stringency) then ("-validation_stringency " +  '"' + validation_stringency + '"') else ""}
  >>>
  parameter_meta {
    gc_profile: "Location of GC Profile"
    min_quality: "Min quality [10]"
    output_dir: "Output directory"
    ref_genome: "Path to reference genome fasta file if using CRAM files"
    reference: "Name of reference sample"
    reference_bam: "Path to reference bam file"
    threads: "Number of threads [4]"
    tumor: "Name of tumor sample"
    tumor_bam: "Path to tumor bam file"
    validation_stringency: "SAM validation strategy: STRICT, SILENT, LENIENT [STRICT]"
    count_bam_lines_application: ""
  }
}