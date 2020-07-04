version 1.0

task Cuffnorm {
  input {
    Boolean? oslash_output_dir
    Boolean? lslash_labels
    Boolean? norm_standards_file
    Boolean? p_slash_num_threads
    Boolean? library_type
    Boolean? library_norm_method
    Boolean? output_format
    Boolean? compatible_hits_norm
    Boolean? total_hits_norm
    Boolean? v_slash_verbose
    Boolean? q_slash_quiet
    Boolean? seed
    Boolean? no_update_check
    String transcripts_dot_gtf
    String sample_one_expr_dot_cx_b
    String sample_two_expr_dot_cx_b
  }
  command <<<
    cuffnorm \
      ~{transcripts_dot_gtf} \
      ~{sample_one_expr_dot_cx_b} \
      ~{sample_two_expr_dot_cx_b} \
      ~{true="-o/--output-dir" false="" oslash_output_dir} \
      ~{true="-L/--labels" false="" lslash_labels} \
      ~{true="--norm-standards-file" false="" norm_standards_file} \
      ~{true="-p/--num-threads" false="" p_slash_num_threads} \
      ~{true="--library-type" false="" library_type} \
      ~{true="--library-norm-method" false="" library_norm_method} \
      ~{true="--output-format" false="" output_format} \
      ~{true="--compatible-hits-norm" false="" compatible_hits_norm} \
      ~{true="--total-hits-norm" false="" total_hits_norm} \
      ~{true="-v/--verbose" false="" v_slash_verbose} \
      ~{true="-q/--quiet" false="" q_slash_quiet} \
      ~{true="--seed" false="" seed} \
      ~{true="--no-update-check" false="" no_update_check}
  >>>
  parameter_meta {
    oslash_output_dir: "write all output files to this directory              [ default:     ./ ]"
    lslash_labels: "comma-separated list of condition labels"
    norm_standards_file: "Housekeeping/spike genes to normalize libraries       [ default:   NULL ]"
    p_slash_num_threads: "number of threads used during quantification          [ default:      1 ]"
    library_type: "Library prep used for input reads                     [ default:  below ]"
    library_norm_method: "Method used to normalize library sizes                [ default:  below ]"
    output_format: "Format for output tables                              [ default:  below ]"
    compatible_hits_norm: "count hits compatible with reference RNAs only        [ default:   TRUE ]"
    total_hits_norm: "count all hits for normalization                      [ default:  FALSE ]"
    v_slash_verbose: "log-friendly verbose processing (no progress bar)     [ default:  FALSE ]"
    q_slash_quiet: "log-friendly quiet processing (no progress bar)       [ default:  FALSE ]"
    seed: "value of random number generator seed                 [ default:      0 ]"
    no_update_check: "do not contact server to check for update availability[ default:  FALSE ]"
    transcripts_dot_gtf: ""
    sample_one_expr_dot_cx_b: ""
    sample_two_expr_dot_cx_b: ""
  }
}