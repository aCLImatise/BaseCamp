version 1.0

task XXmotif {
  input {
    File? neg_set
    Boolean? z_oops
    Boolean? mops
    Boolean? oops
    Boolean? rev_comp
    String? background_model_order
    String? pseudo
    String? gaps
    String? type
    String? merge_motif_threshold
    Boolean? no_pwm_length_optimization
    Int? max_match_positions
    Boolean? batch
    String? max_pos_setsize
    String? tracked_motif
    String? format
    String? max_multiple_sequences
    Boolean? localization
    String? downstream
    String? start_motif
    File? profile_file
    String? start_region
    String? endregion
    Boolean? save_init_models
    Boolean? save_models
    Boolean? save_expectation_maximization_likelihoods
    Boolean? save_expectation_maximization_models
    Boolean? verbose
    String outdir
    String seq_file
  }
  command <<<
    XXmotif \
      ~{outdir} \
      ~{seq_file} \
      ~{if defined(neg_set) then ("--negSet " +  '"' + neg_set + '"') else ""} \
      ~{true="--zoops" false="" z_oops} \
      ~{true="--mops" false="" mops} \
      ~{true="--oops" false="" oops} \
      ~{true="--revcomp" false="" rev_comp} \
      ~{if defined(background_model_order) then ("--background-model-order " +  '"' + background_model_order + '"') else ""} \
      ~{if defined(pseudo) then ("--pseudo " +  '"' + pseudo + '"') else ""} \
      ~{if defined(gaps) then ("--gaps " +  '"' + gaps + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(merge_motif_threshold) then ("--merge-motif-threshold " +  '"' + merge_motif_threshold + '"') else ""} \
      ~{true="--no-pwm-length-optimization" false="" no_pwm_length_optimization} \
      ~{if defined(max_match_positions) then ("--max-match-positions " +  '"' + max_match_positions + '"') else ""} \
      ~{true="--batch" false="" batch} \
      ~{if defined(max_pos_setsize) then ("--maxPosSetSize " +  '"' + max_pos_setsize + '"') else ""} \
      ~{if defined(tracked_motif) then ("--trackedMotif " +  '"' + tracked_motif + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(max_multiple_sequences) then ("--maxMultipleSequences " +  '"' + max_multiple_sequences + '"') else ""} \
      ~{true="--localization" false="" localization} \
      ~{if defined(downstream) then ("--downstream " +  '"' + downstream + '"') else ""} \
      ~{if defined(start_motif) then ("--startMotif " +  '"' + start_motif + '"') else ""} \
      ~{if defined(profile_file) then ("--profileFile " +  '"' + profile_file + '"') else ""} \
      ~{if defined(start_region) then ("--startRegion " +  '"' + start_region + '"') else ""} \
      ~{if defined(endregion) then ("--endRegion " +  '"' + endregion + '"') else ""} \
      ~{true="--saveInitModels" false="" save_init_models} \
      ~{true="--saveModels" false="" save_models} \
      ~{true="--saveExpectationMaximizationLikelihoods" false="" save_expectation_maximization_likelihoods} \
      ~{true="--saveExpectationMaximizationModels" false="" save_expectation_maximization_models} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    neg_set: "sequence set which has to be used as a reference set"
    z_oops: "use zero-or-one occurrence per sequence model (DEFAULT)"
    mops: "use multiple occurrence per sequence model"
    oops: "use one occurrence per sequence model"
    rev_comp: "search in reverse complement of sequences as well (DEFAULT: NO)"
    background_model_order: "order of background distribution (DEFAULT: 2, 8(--negset) )"
    pseudo: "percentage of pseudocounts used (DEFAULT: 10)"
    gaps: "maximum number of gaps used for start seeds [0-3] (DEFAULT: 0)"
    type: "defines what kind of start seeds are used (DEFAULT: ALL) - possible types: ALL, FIVEMERS, PALINDROME, TANDEM, NOPALINDROME, NOTANDEM"
    merge_motif_threshold: "defines the similarity threshold for merging motifs (DEFAULT: HIGH) - possible modes: LOW, MEDIUM, HIGH"
    no_pwm_length_optimization: "do not optimize length during iterations (runtime advantages)"
    max_match_positions: "max number of positions per motif (DEFAULT: 17, higher values will lead to very long runtimes)"
    batch: "suppress progress bars (reduce output size for batch jobs)"
    max_pos_setsize: "maximum number of sequences from the positive set used [DEFAULT: all]"
    tracked_motif: "inspect extensions and refinement of a given seed (DEFAULT: not used)"
    format: "|MFASTA                   defines what kind of format the input sequences have (DEFAULT: FASTA)"
    max_multiple_sequences: "maximum number of sequences used in an alignment [DEFAULT: all]"
    localization: "use localization information to calculate combined P-values  (sequences should have all the same length)"
    downstream: "number of residues in positive set downstream of anchor point (DEFAULT: 0)"
    start_motif: "Start motif (IUPAC characters)"
    profile_file: "profile file"
    start_region: "expected start position for motif occurrences relative to anchor point (--localization)"
    endregion: "expected end position for motif occurrences relative to anchor point (--localization)"
    save_init_models: "Save Markov models after initialization to file."
    save_models: "Save Markov models after EM phase to file."
    save_expectation_maximization_likelihoods: "Save EM iteration's sequence likelihoods and positional odds to file."
    save_expectation_maximization_models: "Save EM iteration's Markov models to file."
    verbose: "Verbose printouts."
    outdir: ""
    seq_file: ""
  }
}