version 1.0

task Cuffnorm {
  input {
    Directory? oslash_output_dir
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
    String ff_first_strand
    String ff_un_stranded
    String fr_second_strand
    String trans_frags
    String classic_fp_km
    String geometric
    String cuff_diff
  }
  command <<<
    cuffnorm \
      ~{ff_first_strand} \
      ~{ff_un_stranded} \
      ~{fr_second_strand} \
      ~{trans_frags} \
      ~{classic_fp_km} \
      ~{geometric} \
      ~{cuff_diff} \
      ~{if (oslash_output_dir) then "-o/--output-dir" else ""} \
      ~{if (lslash_labels) then "-L/--labels" else ""} \
      ~{if (norm_standards_file) then "--norm-standards-file" else ""} \
      ~{if (p_slash_num_threads) then "-p/--num-threads" else ""} \
      ~{if (library_type) then "--library-type" else ""} \
      ~{if (library_norm_method) then "--library-norm-method" else ""} \
      ~{if (output_format) then "--output-format" else ""} \
      ~{if (compatible_hits_norm) then "--compatible-hits-norm" else ""} \
      ~{if (total_hits_norm) then "--total-hits-norm" else ""} \
      ~{if (v_slash_verbose) then "-v/--verbose" else ""} \
      ~{if (q_slash_quiet) then "-q/--quiet" else ""} \
      ~{if (seed) then "--seed" else ""} \
      ~{if (no_update_check) then "--no-update-check" else ""}
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
    ff_first_strand: "ff-secondstrand"
    ff_un_stranded: "fr-firststrand"
    fr_second_strand: "fr-unstranded (default)"
    trans_frags: "Supported library normalization methods:"
    classic_fp_km: "geometric (default)"
    geometric: "quartile"
    cuff_diff: "simple-table (default)"
  }
  output {
    File out_stdout = stdout()
    Directory out_oslash_output_dir = "${in_oslash_output_dir}"
  }
}