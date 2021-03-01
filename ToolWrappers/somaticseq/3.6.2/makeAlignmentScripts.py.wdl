version 1.0

task MakeAlignmentScriptspy {
  input {
    String? var_0
    Directory? output_directory
    File? output_bam_file
    Int? genome_reference
    Boolean? fq_two
    Int? out_fast_q_one_name
    Int? out_fast_q_two_name
    String? extra_trim_arguments
    String? extra_mark_dup_arguments
    Boolean? parallelize_mark_dup
    Boolean? run_workflow
  }
  command <<<
    makeAlignmentScripts_py \
      ~{if defined(var_0) then ("-outbam " +  '"' + var_0 + '"') else ""} \
      ~{if defined(output_directory) then ("--output-directory " +  '"' + output_directory + '"') else ""} \
      ~{if defined(output_bam_file) then ("--out-bam " +  '"' + output_bam_file + '"') else ""} \
      ~{if defined(genome_reference) then ("--genome-reference " +  '"' + genome_reference + '"') else ""} \
      ~{if (fq_two) then "-fq2" else ""} \
      ~{if defined(out_fast_q_one_name) then ("--out-fastq1-name " +  '"' + out_fast_q_one_name + '"') else ""} \
      ~{if defined(out_fast_q_two_name) then ("--out-fastq2-name " +  '"' + out_fast_q_two_name + '"') else ""} \
      ~{if defined(extra_trim_arguments) then ("--extra-trim-arguments " +  '"' + extra_trim_arguments + '"') else ""} \
      ~{if defined(extra_mark_dup_arguments) then ("--extra-markdup-arguments " +  '"' + extra_mark_dup_arguments + '"') else ""} \
      ~{if (parallelize_mark_dup) then "--parallelize-markdup" else ""} \
      ~{if (run_workflow) then "--run-workflow" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/somaticseq:3.6.2--py_0"
  }
  parameter_meta {
    var_0: "[-nt THREADS]"
    output_directory: "input bam path if already aligned (default: None)"
    output_bam_file: "output bam file name (default: None)"
    genome_reference: "[IN_FASTQ1S [IN_FASTQ1S ...]], --in-fastq1s [IN_FASTQ1S [IN_FASTQ1S ...]]\\npaths of forward reads (default: None)"
    fq_two: "[IN_FASTQ2S [IN_FASTQ2S ...]], --in-fastq2s [IN_FASTQ2S [IN_FASTQ2S ...]]\\npaths of reverse reads in paired-end sequencing\\n(default: None)"
    out_fast_q_one_name: "file name of forward reads (default: None)"
    out_fast_q_two_name: "file name of reverse reads (default: None)"
    extra_trim_arguments: "split input fastq files before trimming to maximize\\nmulti-threading efficiency in trimming. (default:\\nFalse)"
    extra_mark_dup_arguments: "place holder for now (default: )"
    parallelize_mark_dup: "parallelize by splitting input bam files and work on\\neach independently, and then merge. (default: False)"
    run_workflow: "Execute the bash scripts locally right here. Only\\nworks on Linux machines with modern bash shells.\\n(default: False)\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
    File out_output_bam_file = "${in_output_bam_file}"
  }
}