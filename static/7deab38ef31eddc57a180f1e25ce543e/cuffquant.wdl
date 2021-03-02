version 1.0

task Cuffquant {
  input {
    Directory? output_dir
    Boolean? mask_file
    Boolean? frag_bias_correct
    Boolean? multi_read_correct
    Boolean? num_threads
    Boolean? library_type
    Boolean? frag_len_mean
    Boolean? frag_len_std_dev
    Boolean? min_alignment_count
    Boolean? max_mle_iterations
    Boolean? verbose
    Boolean? quiet
    Boolean? seed
    Boolean? no_update_check
    Boolean? max_bundle_frags
    Boolean? max_frag_multi_hits
    Boolean? no_effective_length_correction
    Boolean? no_length_correction
    Boolean? read_skip_fraction
    Boolean? no_read_pairs
    Boolean? trim_read_length
    Boolean? no_scv_correction
    String ff_first_strand
    String ff_un_stranded
    String fr_second_strand
  }
  command <<<
    cuffquant \
      ~{ff_first_strand} \
      ~{ff_un_stranded} \
      ~{fr_second_strand} \
      ~{if (output_dir) then "--output-dir" else ""} \
      ~{if (mask_file) then "--mask-file" else ""} \
      ~{if (frag_bias_correct) then "--frag-bias-correct" else ""} \
      ~{if (multi_read_correct) then "--multi-read-correct" else ""} \
      ~{if (num_threads) then "--num-threads" else ""} \
      ~{if (library_type) then "--library-type" else ""} \
      ~{if (frag_len_mean) then "--frag-len-mean" else ""} \
      ~{if (frag_len_std_dev) then "--frag-len-std-dev" else ""} \
      ~{if (min_alignment_count) then "--min-alignment-count" else ""} \
      ~{if (max_mle_iterations) then "--max-mle-iterations" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (seed) then "--seed" else ""} \
      ~{if (no_update_check) then "--no-update-check" else ""} \
      ~{if (max_bundle_frags) then "--max-bundle-frags" else ""} \
      ~{if (max_frag_multi_hits) then "--max-frag-multihits" else ""} \
      ~{if (no_effective_length_correction) then "--no-effective-length-correction" else ""} \
      ~{if (no_length_correction) then "--no-length-correction" else ""} \
      ~{if (read_skip_fraction) then "--read-skip-fraction" else ""} \
      ~{if (no_read_pairs) then "--no-read-pairs" else ""} \
      ~{if (trim_read_length) then "--trim-read-length" else ""} \
      ~{if (no_scv_correction) then "--no-scv-correction" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_dir: "write all output files to this directory              [ default:     ./ ]"
    mask_file: "ignore all alignment within transcripts in this file  [ default:   NULL ]"
    frag_bias_correct: "use bias correction - reference fasta required        [ default:   NULL ]"
    multi_read_correct: "use 'rescue method' for multi-reads                   [ default:  FALSE ]"
    num_threads: "number of threads used during quantification          [ default:      1 ]"
    library_type: "Library prep used for input reads                     [ default:  below ]"
    frag_len_mean: "average fragment length (unpaired reads only)         [ default:    200 ]"
    frag_len_std_dev: "fragment length std deviation (unpaired reads only)   [ default:     80 ]"
    min_alignment_count: "minimum number of alignments in a locus for testing   [ default:   10 ]"
    max_mle_iterations: "maximum iterations allowed for MLE calculation        [ default:   5000 ]"
    verbose: "log-friendly verbose processing (no progress bar)     [ default:  FALSE ]"
    quiet: "log-friendly quiet processing (no progress bar)       [ default:  FALSE ]"
    seed: "value of random number generator seed                 [ default:      0 ]"
    no_update_check: "do not contact server to check for update availability[ default:  FALSE ]"
    max_bundle_frags: "maximum fragments allowed in a bundle before skipping [ default: 500000 ]"
    max_frag_multi_hits: "Maximum number of alignments allowed per fragment     [ default: unlim  ]"
    no_effective_length_correction: "No effective length correction                  [ default:  FALSE ]"
    no_length_correction: "No length correction                                  [ default:  FALSE ]"
    read_skip_fraction: "Skip a random subset of reads this size               [ default:    0.0 ]"
    no_read_pairs: "Break all read pairs                                  [ default:  FALSE ]"
    trim_read_length: "Trim reads to be this long (keep 5' end)              [ default:   none ]"
    no_scv_correction: "Disable SCV correction                                [ default:  FALSE ]"
    ff_first_strand: "ff-secondstrand"
    ff_un_stranded: "fr-firststrand"
    fr_second_strand: "fr-unstranded (default)"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}