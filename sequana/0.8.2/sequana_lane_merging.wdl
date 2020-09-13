version 1.0

task SequanaLaneMerging {
  input {
    Directory? output_directory
    String? pattern
    Int? threads
    String? queue
    Array[String] lanes
    Boolean? dry_run
    String se_quan_a_lane_fusion
    Int sample_id_l_zero_zero_one_dot_fast_q_do_tgz
  }
  command <<<
    sequana_lane_merging \
      ~{se_quan_a_lane_fusion} \
      ~{sample_id_l_zero_zero_one_dot_fast_q_do_tgz} \
      ~{if defined(output_directory) then ("--output-directory " +  '"' + output_directory + '"') else ""} \
      ~{if defined(pattern) then ("--pattern " +  '"' + pattern + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(queue) then ("--queue " +  '"' + queue + '"') else ""} \
      ~{if defined(lanes) then ("--lanes " +  '"' + lanes + '"') else ""} \
      ~{if (dry_run) then "--dry-run" else ""}
  >>>
  parameter_meta {
    output_directory: "Where to store the new fastq files"
    pattern: "pattern for the input fastq files. Use quotes if\\nwildcards are used"
    threads: "number of threads per job (pigz)"
    queue: "queue to use on the cluster"
    lanes: ""
    dry_run: "just createt the script but do not launch them"
    se_quan_a_lane_fusion: "This searches for data stored in this format:\\n<sampleID_1>/*fastq.gz\\n<sampleID_2>/*fastq.gz\\n<sampleID_3>/*fastq.gz"
    sample_id_l_zero_zero_one_dot_fast_q_do_tgz: "sampleID_L002_.fastq.gz"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}