version 1.0

task SeqtkTrimfq {
  input {
    Float? error_rate_threshold
    Int? maximally_trim_int
    Int? trimming_bebe_produce
    Int? trim_int_bp_left_disable_q
    Int? trim_int_bp_right_disable_q
    Int? keep_first_bp
    Int? keep_last_bp
    String in_dot_fq
  }
  command <<<
    seqtk trimfq \
      ~{in_dot_fq} \
      ~{if defined(error_rate_threshold) then ("-q " +  '"' + error_rate_threshold + '"') else ""} \
      ~{if defined(maximally_trim_int) then ("-l " +  '"' + maximally_trim_int + '"') else ""} \
      ~{if defined(trimming_bebe_produce) then ("-s " +  '"' + trimming_bebe_produce + '"') else ""} \
      ~{if defined(trim_int_bp_left_disable_q) then ("-b " +  '"' + trim_int_bp_left_disable_q + '"') else ""} \
      ~{if defined(trim_int_bp_right_disable_q) then ("-e " +  '"' + trim_int_bp_right_disable_q + '"') else ""} \
      ~{if defined(keep_first_bp) then ("-B " +  '"' + keep_first_bp + '"') else ""} \
      ~{if defined(keep_last_bp) then ("-E " +  '"' + keep_last_bp + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    error_rate_threshold: "error rate threshold (disabled by -b/-e/-B/-E) [0.05]"
    maximally_trim_int: "maximally trim down to INT bp (disabled by -b/-e/-B/-E) [30]"
    trimming_bebe_produce: "trimming by -b/-e/-B/-E shall not produce reads shorter then INT bp [1]"
    trim_int_bp_left_disable_q: "trim INT bp from left (non-zero to disable -q) [0]"
    trim_int_bp_right_disable_q: "trim INT bp from right (non-zero to disable -q) [0]"
    keep_first_bp: "keep first INT bp from left (non-zero to disable -q/-e/-E) [0]"
    keep_last_bp: "keep last INT bp from right (non-zero to disable -q/-b/-B) [0]"
    in_dot_fq: ""
  }
  output {
    File out_stdout = stdout()
  }
}