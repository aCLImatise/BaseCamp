version 1.0

task SeqtkTrimfq {
  input {
    Float? error_rate_threshold
    Int? maximally_trim_int
    Int? trim_int_bp_left_disable_ql
    Int? trim_int_bp_right_disable_ql
    Int? retain_disable_ql
    Boolean? force_fastq_output
    String in_dot_fq
  }
  command <<<
    seqtk trimfq \
      ~{in_dot_fq} \
      ~{if defined(error_rate_threshold) then ("-q " +  '"' + error_rate_threshold + '"') else ""} \
      ~{if defined(maximally_trim_int) then ("-l " +  '"' + maximally_trim_int + '"') else ""} \
      ~{if defined(trim_int_bp_left_disable_ql) then ("-b " +  '"' + trim_int_bp_left_disable_ql + '"') else ""} \
      ~{if defined(trim_int_bp_right_disable_ql) then ("-e " +  '"' + trim_int_bp_right_disable_ql + '"') else ""} \
      ~{if defined(retain_disable_ql) then ("-L " +  '"' + retain_disable_ql + '"') else ""} \
      ~{if (force_fastq_output) then "-Q" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    error_rate_threshold: "error rate threshold (disabled by -b/-e) [0.05]"
    maximally_trim_int: "maximally trim down to INT bp (disabled by -b/-e) [30]"
    trim_int_bp_left_disable_ql: "trim INT bp from left (non-zero to disable -q/-l) [0]"
    trim_int_bp_right_disable_ql: "trim INT bp from right (non-zero to disable -q/-l) [0]"
    retain_disable_ql: "retain at most INT bp from the 5'-end (non-zero to disable -q/-l) [0]"
    force_fastq_output: "force FASTQ output"
    in_dot_fq: ""
  }
  output {
    File out_stdout = stdout()
  }
}