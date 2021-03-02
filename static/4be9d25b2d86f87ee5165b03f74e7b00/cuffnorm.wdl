version 1.0

task Cuffnorm {
  input {
    Directory? output_dir
    Boolean? labels
    Boolean? norm_standards_file
    Boolean? num_threads
    Boolean? library_type
    Boolean? library_norm_method
    Boolean? output_format
    Boolean? compatible_hits_norm
    Boolean? total_hits_norm
    Boolean? verbose
    Boolean? quiet
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
      ~{if (output_dir) then "--output-dir" else ""} \
      ~{if (labels) then "--labels" else ""} \
      ~{if (norm_standards_file) then "--norm-standards-file" else ""} \
      ~{if (num_threads) then "--num-threads" else ""} \
      ~{if (library_type) then "--library-type" else ""} \
      ~{if (library_norm_method) then "--library-norm-method" else ""} \
      ~{if (output_format) then "--output-format" else ""} \
      ~{if (compatible_hits_norm) then "--compatible-hits-norm" else ""} \
      ~{if (total_hits_norm) then "--total-hits-norm" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (seed) then "--seed" else ""} \
      ~{if (no_update_check) then "--no-update-check" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_dir: "write all output files to this directory              [ default:     ./ ]"
    labels: "comma-separated list of condition labels"
    norm_standards_file: "Housekeeping/spike genes to normalize libraries       [ default:   NULL ]"
    num_threads: "number of threads used during quantification          [ default:      1 ]"
    library_type: "Library prep used for input reads                     [ default:  below ]"
    library_norm_method: "Method used to normalize library sizes                [ default:  below ]"
    output_format: "Format for output tables                              [ default:  below ]"
    compatible_hits_norm: "count hits compatible with reference RNAs only        [ default:   TRUE ]"
    total_hits_norm: "count all hits for normalization                      [ default:  FALSE ]"
    verbose: "log-friendly verbose processing (no progress bar)     [ default:  FALSE ]"
    quiet: "log-friendly quiet processing (no progress bar)       [ default:  FALSE ]"
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
    Directory out_output_dir = "${in_output_dir}"
  }
}