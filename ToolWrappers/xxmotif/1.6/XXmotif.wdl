version 1.0

task XXmotif {
  input {
    File? neg_set
    Boolean? z_oops
    Boolean? mops
    Boolean? oops
    Boolean? rev_comp
    Int? background_model_order
    Int? pseudo
    Int? gaps
    String? type
    String? merge_motif_threshold
    Boolean? no_pwm_length_optimization
    Int? max_match_positions
    Boolean? batch
    Int? max_pos_setsize
    String? tracked_motif
    String? format
    Int? max_multiple_sequences
    Boolean? localization
    Int? downstream
    String? start_motif
    File? profile_file
    Int? start_region
    Int? endregion
    Boolean? em
    File? binding_site_file
    Int? binding_site_length
    File? markov_model_file
    Int? nr_models
    Int? min_models
    Int? max_models
    Float? maxp_value
    Float? min_occurrence
    Int? add_columns
    Int? markov_model_order
    Float? markov_model_pseudocounts_factors_order
    Float? eta
    Boolean? interpolate
    Int? background_model_order
    Float? background_model_pseudocounts
    Boolean? no_expectation_maximization_phase
    Float? specificity_factor_approximates
    Float? epsilon
    Int? max_em_iterations
    File? sequence_ints_file
    Boolean? in_it_ints
    Boolean? rank_weighting
    Float? background_quantile
    Float? background_intensity
    Int? background_rank
    File? binding_site_ints_file
    Boolean? binding_site_rank_weighting
    Float? binding_site_background_quantile
    Float? binding_site_background_intensity
    Int? binding_site_background_rank
    Boolean? test_pos_set
    Boolean? test_neg_set
    File? test_set
    Boolean? evaluate_pwm_s
    Boolean? log_probs
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
      ~{if (z_oops) then "--zoops" else ""} \
      ~{if (mops) then "--mops" else ""} \
      ~{if (oops) then "--oops" else ""} \
      ~{if (rev_comp) then "--revcomp" else ""} \
      ~{if defined(background_model_order) then ("--background-model-order " +  '"' + background_model_order + '"') else ""} \
      ~{if defined(pseudo) then ("--pseudo " +  '"' + pseudo + '"') else ""} \
      ~{if defined(gaps) then ("--gaps " +  '"' + gaps + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(merge_motif_threshold) then ("--merge-motif-threshold " +  '"' + merge_motif_threshold + '"') else ""} \
      ~{if (no_pwm_length_optimization) then "--no-pwm-length-optimization" else ""} \
      ~{if defined(max_match_positions) then ("--max-match-positions " +  '"' + max_match_positions + '"') else ""} \
      ~{if (batch) then "--batch" else ""} \
      ~{if defined(max_pos_setsize) then ("--maxPosSetSize " +  '"' + max_pos_setsize + '"') else ""} \
      ~{if defined(tracked_motif) then ("--trackedMotif " +  '"' + tracked_motif + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(max_multiple_sequences) then ("--maxMultipleSequences " +  '"' + max_multiple_sequences + '"') else ""} \
      ~{if (localization) then "--localization" else ""} \
      ~{if defined(downstream) then ("--downstream " +  '"' + downstream + '"') else ""} \
      ~{if defined(start_motif) then ("--startMotif " +  '"' + start_motif + '"') else ""} \
      ~{if defined(profile_file) then ("--profileFile " +  '"' + profile_file + '"') else ""} \
      ~{if defined(start_region) then ("--startRegion " +  '"' + start_region + '"') else ""} \
      ~{if defined(endregion) then ("--endRegion " +  '"' + endregion + '"') else ""} \
      ~{if (em) then "--em" else ""} \
      ~{if defined(binding_site_file) then ("--bindingSiteFile " +  '"' + binding_site_file + '"') else ""} \
      ~{if defined(binding_site_length) then ("--bindingSiteLength " +  '"' + binding_site_length + '"') else ""} \
      ~{if defined(markov_model_file) then ("--markovModelFile " +  '"' + markov_model_file + '"') else ""} \
      ~{if defined(nr_models) then ("--nrModels " +  '"' + nr_models + '"') else ""} \
      ~{if defined(min_models) then ("--minModels " +  '"' + min_models + '"') else ""} \
      ~{if defined(max_models) then ("--maxModels " +  '"' + max_models + '"') else ""} \
      ~{if defined(maxp_value) then ("--maxPvalue " +  '"' + maxp_value + '"') else ""} \
      ~{if defined(min_occurrence) then ("--minOccurrence " +  '"' + min_occurrence + '"') else ""} \
      ~{if defined(add_columns) then ("--addColumns " +  '"' + add_columns + '"') else ""} \
      ~{if defined(markov_model_order) then ("-k " +  '"' + markov_model_order + '"') else ""} \
      ~{if defined(markov_model_pseudocounts_factors_order) then ("--alpha " +  '"' + markov_model_pseudocounts_factors_order + '"') else ""} \
      ~{if defined(eta) then ("--eta " +  '"' + eta + '"') else ""} \
      ~{if (interpolate) then "--interpolate" else ""} \
      ~{if defined(background_model_order) then ("-K " +  '"' + background_model_order + '"') else ""} \
      ~{if defined(background_model_pseudocounts) then ("--Alpha " +  '"' + background_model_pseudocounts + '"') else ""} \
      ~{if (no_expectation_maximization_phase) then "--noExpectationMaximizationPhase" else ""} \
      ~{if defined(specificity_factor_approximates) then ("-q " +  '"' + specificity_factor_approximates + '"') else ""} \
      ~{if defined(epsilon) then ("--epsilon " +  '"' + epsilon + '"') else ""} \
      ~{if defined(max_em_iterations) then ("--maxEMIterations " +  '"' + max_em_iterations + '"') else ""} \
      ~{if defined(sequence_ints_file) then ("--sequenceIntsFile " +  '"' + sequence_ints_file + '"') else ""} \
      ~{if (in_it_ints) then "--initInts" else ""} \
      ~{if (rank_weighting) then "--rankWeighting" else ""} \
      ~{if defined(background_quantile) then ("--backgroundQuantile " +  '"' + background_quantile + '"') else ""} \
      ~{if defined(background_intensity) then ("--backgroundIntensity " +  '"' + background_intensity + '"') else ""} \
      ~{if defined(background_rank) then ("--backgroundRank " +  '"' + background_rank + '"') else ""} \
      ~{if defined(binding_site_ints_file) then ("--bindingSiteIntsFile " +  '"' + binding_site_ints_file + '"') else ""} \
      ~{if (binding_site_rank_weighting) then "--bindingSiteRankWeighting" else ""} \
      ~{if defined(binding_site_background_quantile) then ("--bindingSiteBackgroundQuantile " +  '"' + binding_site_background_quantile + '"') else ""} \
      ~{if defined(binding_site_background_intensity) then ("--bindingSiteBackgroundIntensity " +  '"' + binding_site_background_intensity + '"') else ""} \
      ~{if defined(binding_site_background_rank) then ("--bindingSiteBackgroundRank " +  '"' + binding_site_background_rank + '"') else ""} \
      ~{if (test_pos_set) then "--testPosSet" else ""} \
      ~{if (test_neg_set) then "--testNegSet" else ""} \
      ~{if defined(test_set) then ("--testSet " +  '"' + test_set + '"') else ""} \
      ~{if (evaluate_pwm_s) then "--evaluatePWMs" else ""} \
      ~{if (log_probs) then "--logProbs" else ""} \
      ~{if (save_init_models) then "--saveInitModels" else ""} \
      ~{if (save_models) then "--saveModels" else ""} \
      ~{if (save_expectation_maximization_likelihoods) then "--saveExpectationMaximizationLikelihoods" else ""} \
      ~{if (save_expectation_maximization_models) then "--saveExpectationMaximizationModels" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    neg_set: "sequence set which has to be used as a reference set"
    z_oops: "use zero-or-one occurrence per sequence model (DEFAULT)"
    mops: "use multiple occurrence per sequence model"
    oops: "use one occurrence per sequence model"
    rev_comp: "search in reverse complement of sequences as well (DEFAULT: NO)"
    background_model_order: "Background model order. <INTEGER> >= 0. (default: 0)."
    pseudo: "percentage of pseudocounts used (DEFAULT: 10)"
    gaps: "maximum number of gaps used for start seeds [0-3] (DEFAULT: 0)"
    type: "defines what kind of start seeds are used (DEFAULT: ALL)\\n- possible types: ALL, FIVEMERS, PALINDROME, TANDEM, NOPALINDROME, NOTANDEM"
    merge_motif_threshold: "defines the similarity threshold for merging motifs (DEFAULT: HIGH)\\n- possible modes: LOW, MEDIUM, HIGH"
    no_pwm_length_optimization: "do not optimize length during iterations (runtime advantages)"
    max_match_positions: "max number of positions per motif (DEFAULT: 17, higher values will lead to very long runtimes)"
    batch: "suppress progress bars (reduce output size for batch jobs)"
    max_pos_setsize: "maximum number of sequences from the positive set used [DEFAULT: all]"
    tracked_motif: "inspect extensions and refinement of a given seed (DEFAULT: not used)"
    format: "|MFASTA                   defines what kind of format the input sequences have (DEFAULT: FASTA)"
    max_multiple_sequences: "maximum number of sequences used in an alignment [DEFAULT: all]"
    localization: "use localization information to calculate combined P-values\\n(sequences should have all the same length)"
    downstream: "number of residues in positive set downstream of anchor point (DEFAULT: 0)"
    start_motif: "Start motif (IUPAC characters)"
    profile_file: "profile file"
    start_region: "expected start position for motif occurrences relative to anchor point (--localization)"
    endregion: "expected end position for motif occurrences relative to anchor point (--localization)"
    em: "EM mode."
    binding_site_file: "Binding sites file name to initialize a single Markov model. Sequence lengths must not differ and be provided line-by-line."
    binding_site_length: "Specify the length of binding sites provided by --bindingSiteFile (not mandatory)."
    markov_model_file: "Markov model file name (without ending) to initialize a single Markov model. Files <FILE>.conds and <FILE>.probs need to be available."
    nr_models: "[<INTEGER>...]\\nNumber of one or more XXmotif models in the ranking used to initialize Markov models. The remaining parameters available to choose models from XXmotif results are ignored."
    min_models: "Min. number of XXmotif models used to initialize Markov models. Independent on options --maxPvalue and --minOccurrence. <INTEGER> > 0 (default: 1)."
    max_models: "Max. number of XXmotif models used to initialize Markov models. <INTEGER> > 0 (default: max. integer)."
    maxp_value: "Max. p-value of XXmotif models used to initialize Markov models. Not applied to min. number of models. (default: 1)."
    min_occurrence: "Min. percentage of sequences containing a binding site instance. Not applied to min. number of models. (default: 0)."
    add_columns: "{1,2}\\nAdd columns to the left and/or right of models. <INTEGER> >= 0 (default: 0 0)."
    markov_model_order: "Markov model order. <INTEGER> >= 0 (default: 0)."
    markov_model_pseudocounts_factors_order: "[<FLOAT>...]\\nMarkov model pseudo-counts factor(s). Markov model order k fixes vector size to k+1. <FLOAT> >= 0 (default: 10)."
    eta: "[<FLOAT>...]\\nMarkov model pseudo-counts factor(s) defined by --alpha and -q. Markov model order k fixes vector size to k+1. Specify either --eta or --alpha. <FLOAT> >= 0 (default: 10)."
    interpolate: "Interpolate between higher- and lower-order probabilities."
    background_model_pseudocounts: "Background model pseudo-counts factor. <FLOAT> >= 0 (default: 10)."
    no_expectation_maximization_phase: "Initialize Markov model but skip EM phase."
    specificity_factor_approximates: "Specificity factor approximates the percentage of sequences contributing to the Markov model. 0 < <FLOAT> < 1 (default: 0.1)."
    epsilon: "EM convergence parameter. <FLOAT> > 0 (default: 0.001)."
    max_em_iterations: "Max. number of EM iterations (default: max. integer)."
    sequence_ints_file: "Intensity or significance values for positive sequences. The higher the values the higher the weights."
    in_it_ints: "Parameter to initialize models from XXmotif results by weighting instances with corresponding sequence weigths. Option --sequenceIntsFile must be provided simultaneously. Options --bindingSiteFile and --markovModelFile must not be provided simultaneously."
    rank_weighting: "Rank-based weighting (default: intensity-based weighting)."
    background_quantile: "Quantile to estimate the background intensity value (or rank). Sequences having their intensity value (rank) below (above) the background intensity value (rank) get assigned to weight zero. 0 <= <FLOAT> <= 1 (default: 0)."
    background_intensity: "Background intensity value. Sequences having their intensity value below the background intensity value get assigned to weight zero. Option --rankWeighting must not be provided simultaneously (default: min. intensity value)."
    background_rank: "Background intensity rank. Sequences having their intensity rank above the background intensity rank get assigned to weight zero. Option --rankWeighting must be provided simultaneously (default: max. rank)."
    binding_site_ints_file: "Intensity or significance values for binding site sequences. The higher the values the higher the weights. Option --bindingSiteFile must be provided simultaneously."
    binding_site_rank_weighting: "Binding site rank-based weighting (default: intensity-based weighting)."
    binding_site_background_quantile: "Quantile to estimate the background intensity value (or rank). Binding sites having their intensity value (rank) below (below) the background intensity value (rank) get assigned to weight zero. 0 <= <FLOAT> <= 1 (default: 0)."
    binding_site_background_intensity: "Background intensity value. Binding sites having their intensity value below the background intensity value get assigned to weight zero. Option --bindingSiteRankWeighting must not be provided simultaneously (default: min. intensity value)."
    binding_site_background_rank: "Background intensity rank. Binding sites having their intensity rank above the background intensity rank get assigned to weight zero. Option --bindingSiteRankWeighting must be provided simultaneously (default: max. rank)."
    test_pos_set: "Evaluate model(s) on training sequences."
    test_neg_set: "Evaluate model(s) on background sequences."
    test_set: "Evaluate model(s) on sequences in FASTA format. Specify one or more files. Sequence lengths may differ."
    evaluate_pwm_s: "Evaluate PWM model(s) used to initialize Markov model(s) on test sequences."
    log_probs: "Calculate log probabilities instead of log likelihood ratios."
    save_init_models: "Save Markov models after initialization to file."
    save_models: "Save Markov models after EM phase to file."
    save_expectation_maximization_likelihoods: "Save EM iteration's sequence likelihoods and positional odds to file."
    save_expectation_maximization_models: "Save EM iteration's Markov models to file."
    verbose: "Verbose printouts.\\n"
    outdir: ""
    seq_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}