version 1.0

task Wtcyc {
  input {
    Int? number_of_threads
    Int? total_parallel_jobs
    Int? index_current_p
    String? output_reads_regions
    String? output_of_alignments
    File? force_overwrite_output
    Int? mininum_alignment_score
    Int? mininum_alignment_identity
    Int? alignment_penalty_match
    Int? alignment_penalty_mismatch
    Int? alignment_penalty_gap_open
    Int? alignment_penalty_gap_extension
    Int? alignment_penalty_read
    String long_read_file
  }
  command <<<
    wtcyc \
      ~{long_read_file} \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""} \
      ~{if defined(total_parallel_jobs) then ("-P " +  '"' + total_parallel_jobs + '"') else ""} \
      ~{if defined(index_current_p) then ("-p " +  '"' + index_current_p + '"') else ""} \
      ~{if defined(output_reads_regions) then ("-o " +  '"' + output_reads_regions + '"') else ""} \
      ~{if defined(output_of_alignments) then ("-a " +  '"' + output_of_alignments + '"') else ""} \
      ~{if (force_overwrite_output) then "-f" else ""} \
      ~{if defined(mininum_alignment_score) then ("-s " +  '"' + mininum_alignment_score + '"') else ""} \
      ~{if defined(mininum_alignment_identity) then ("-m " +  '"' + mininum_alignment_identity + '"') else ""} \
      ~{if defined(alignment_penalty_match) then ("-M " +  '"' + alignment_penalty_match + '"') else ""} \
      ~{if defined(alignment_penalty_mismatch) then ("-X " +  '"' + alignment_penalty_mismatch + '"') else ""} \
      ~{if defined(alignment_penalty_gap_open) then ("-O " +  '"' + alignment_penalty_gap_open + '"') else ""} \
      ~{if defined(alignment_penalty_gap_extension) then ("-E " +  '"' + alignment_penalty_gap_extension + '"') else ""} \
      ~{if defined(alignment_penalty_read) then ("-T " +  '"' + alignment_penalty_read + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    number_of_threads: "Number of threads, [1]"
    total_parallel_jobs: "Total parallel jobs, [1]"
    index_current_p: "Index of current job (0-based), [0]\\nSuppose to run it parallelly in 60 nodes. For node1, -P 60 -p 0; node2, -P 60 -p 1, ..."
    output_reads_regions: "Output of reads' regions after trimming, [-]"
    output_of_alignments: "Output of alignments, [NULL]"
    force_overwrite_output: "Force overwrite output file"
    mininum_alignment_score: "Mininum alignment score, [400]"
    mininum_alignment_identity: "Mininum alignment identity, [0.7]"
    alignment_penalty_match: "Alignment penalty: match, [2]"
    alignment_penalty_mismatch: "Alignment penalty: mismatch, [-5]"
    alignment_penalty_gap_open: "Alignment penalty: gap open, [-3]"
    alignment_penalty_gap_extension: "Alignment penalty: gap extension, [-1]"
    alignment_penalty_read: "Alignment penalty: read end clipping, 0: distable HSP extension, otherwise set to -30 or other [-100]"
    long_read_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_force_overwrite_output = "${in_force_overwrite_output}"
  }
}