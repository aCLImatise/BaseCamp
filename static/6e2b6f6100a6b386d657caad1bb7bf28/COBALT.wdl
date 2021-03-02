version 1.0

task COBALT {
  input {
    Int? min_quality
    Directory? output_dir
    File? ref_genome
    String? reference
    File? reference_bam
    Int? threads
    String? tumor
    File? tumor_bam
    String? validation_stringency
    String count_bam_lines_application
  }
  command <<<
    COBALT \
      ~{count_bam_lines_application} \
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
  runtime {
    docker: "None"
  }
  parameter_meta {
    min_quality: "Min quality [10]"
    output_dir: "Output directory"
    ref_genome: "Path to reference genome fasta file if\\nusing CRAM files"
    reference: "Name of reference sample"
    reference_bam: "Path to reference bam file"
    threads: "Number of threads [4]"
    tumor: "Name of tumor sample"
    tumor_bam: "Path to tumor bam file"
    validation_stringency: "SAM validation strategy: STRICT, SILENT,\\nLENIENT [STRICT]\\n"
    count_bam_lines_application: "-gc_profile <arg>              Location of GC Profile"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}