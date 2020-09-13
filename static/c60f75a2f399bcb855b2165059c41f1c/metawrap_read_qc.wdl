version 1.0

task MetawrapReadQc {
  input {
    Int? forward_fastq_reads
    Int? reverse_fastq_reads
    Directory? output_directory
    Int? number_threads_default
    Directory? prefix_host_index
    Boolean? skip_bm_tagger
    Boolean? skip_trimming
    Boolean? skip_pre_qc_report
    Boolean? skip_post_qc_report
  }
  command <<<
    metawrap read_qc \
      ~{if defined(forward_fastq_reads) then ("-1 " +  '"' + forward_fastq_reads + '"') else ""} \
      ~{if defined(reverse_fastq_reads) then ("-2 " +  '"' + reverse_fastq_reads + '"') else ""} \
      ~{if defined(output_directory) then ("-o " +  '"' + output_directory + '"') else ""} \
      ~{if defined(number_threads_default) then ("-t " +  '"' + number_threads_default + '"') else ""} \
      ~{if defined(prefix_host_index) then ("-x " +  '"' + prefix_host_index + '"') else ""} \
      ~{if (skip_bm_tagger) then "--skip-bmtagger" else ""} \
      ~{if (skip_trimming) then "--skip-trimming" else ""} \
      ~{if (skip_pre_qc_report) then "--skip-pre-qc-report" else ""} \
      ~{if (skip_post_qc_report) then "--skip-post-qc-report" else ""}
  >>>
  parameter_meta {
    forward_fastq_reads: "forward fastq reads"
    reverse_fastq_reads: "reverse fastq reads"
    output_directory: "output directory"
    number_threads_default: "number of threads (default=1)"
    prefix_host_index: "prefix of host index in bmtagger database folder (default=hg38)"
    skip_bm_tagger: "dont remove human sequences with bmtagger"
    skip_trimming: "dont trim sequences with trimgalore"
    skip_pre_qc_report: "dont make FastQC report of input sequences"
    skip_post_qc_report: "dont make FastQC report of final sequences"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}