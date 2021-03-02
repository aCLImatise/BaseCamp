class: CommandLineTool
id: XXmotif.cwl
inputs:
- id: in_neg_set
  doc: sequence set which has to be used as a reference set
  type: File?
  inputBinding:
    prefix: --negSet
- id: in_z_oops
  doc: use zero-or-one occurrence per sequence model (DEFAULT)
  type: boolean?
  inputBinding:
    prefix: --zoops
- id: in_mops
  doc: use multiple occurrence per sequence model
  type: boolean?
  inputBinding:
    prefix: --mops
- id: in_oops
  doc: use one occurrence per sequence model
  type: boolean?
  inputBinding:
    prefix: --oops
- id: in_rev_comp
  doc: 'search in reverse complement of sequences as well (DEFAULT: NO)'
  type: boolean?
  inputBinding:
    prefix: --revcomp
- id: in_background_model_order
  doc: 'order of background distribution (DEFAULT: 2, 8(--negset) )'
  type: long?
  inputBinding:
    prefix: --background-model-order
- id: in_pseudo
  doc: 'percentage of pseudocounts used (DEFAULT: 10)'
  type: long?
  inputBinding:
    prefix: --pseudo
- id: in_gaps
  doc: 'maximum number of gaps used for start seeds [0-3] (DEFAULT: 0)'
  type: long?
  inputBinding:
    prefix: --gaps
- id: in_type
  doc: "defines what kind of start seeds are used (DEFAULT: ALL)\n- possible types:\
    \ ALL, FIVEMERS, PALINDROME, TANDEM, NOPALINDROME, NOTANDEM"
  type: string?
  inputBinding:
    prefix: --type
- id: in_merge_motif_threshold
  doc: "defines the similarity threshold for merging motifs (DEFAULT: HIGH)\n- possible\
    \ modes: LOW, MEDIUM, HIGH"
  type: string?
  inputBinding:
    prefix: --merge-motif-threshold
- id: in_no_pwm_length_optimization
  doc: do not optimize length during iterations (runtime advantages)
  type: boolean?
  inputBinding:
    prefix: --no-pwm-length-optimization
- id: in_max_match_positions
  doc: 'max number of positions per motif (DEFAULT: 17, higher values will lead to
    very long runtimes)'
  type: long?
  inputBinding:
    prefix: --max-match-positions
- id: in_batch
  doc: suppress progress bars (reduce output size for batch jobs)
  type: boolean?
  inputBinding:
    prefix: --batch
- id: in_max_pos_setsize
  doc: 'maximum number of sequences from the positive set used [DEFAULT: all]'
  type: long?
  inputBinding:
    prefix: --maxPosSetSize
- id: in_tracked_motif
  doc: 'inspect extensions and refinement of a given seed (DEFAULT: not used)'
  type: string?
  inputBinding:
    prefix: --trackedMotif
- id: in_format
  doc: '|MFASTA                   defines what kind of format the input sequences
    have (DEFAULT: FASTA)'
  type: string?
  inputBinding:
    prefix: --format
- id: in_max_multiple_sequences
  doc: 'maximum number of sequences used in an alignment [DEFAULT: all]'
  type: long?
  inputBinding:
    prefix: --maxMultipleSequences
- id: in_localization
  doc: "use localization information to calculate combined P-values\n(sequences should\
    \ have all the same length)"
  type: boolean?
  inputBinding:
    prefix: --localization
- id: in_downstream
  doc: 'number of residues in positive set downstream of anchor point (DEFAULT: 0)'
  type: long?
  inputBinding:
    prefix: --downstream
- id: in_start_motif
  doc: Start motif (IUPAC characters)
  type: string?
  inputBinding:
    prefix: --startMotif
- id: in_profile_file
  doc: profile file
  type: File?
  inputBinding:
    prefix: --profileFile
- id: in_start_region
  doc: expected start position for motif occurrences relative to anchor point (--localization)
  type: long?
  inputBinding:
    prefix: --startRegion
- id: in_endregion
  doc: expected end position for motif occurrences relative to anchor point (--localization)
  type: long?
  inputBinding:
    prefix: --endRegion
- id: in_em
  doc: EM mode.
  type: boolean?
  inputBinding:
    prefix: --em
- id: in_binding_site_file
  doc: Binding sites file name to initialize a single Markov model. Sequence lengths
    must not differ and be provided line-by-line.
  type: File?
  inputBinding:
    prefix: --bindingSiteFile
- id: in_binding_site_length
  doc: Specify the length of binding sites provided by --bindingSiteFile (not mandatory).
  type: long?
  inputBinding:
    prefix: --bindingSiteLength
- id: in_markov_model_file
  doc: Markov model file name (without ending) to initialize a single Markov model.
    Files <FILE>.conds and <FILE>.probs need to be available.
  type: File?
  inputBinding:
    prefix: --markovModelFile
- id: in_nr_models
  doc: "[<INTEGER>...]\nNumber of one or more XXmotif models in the ranking used to\
    \ initialize Markov models. The remaining parameters available to choose models\
    \ from XXmotif results are ignored."
  type: long?
  inputBinding:
    prefix: --nrModels
- id: in_min_models
  doc: 'Min. number of XXmotif models used to initialize Markov models. Independent
    on options --maxPvalue and --minOccurrence. <INTEGER> > 0 (default: 1).'
  type: long?
  inputBinding:
    prefix: --minModels
- id: in_max_models
  doc: 'Max. number of XXmotif models used to initialize Markov models. <INTEGER>
    > 0 (default: max. integer).'
  type: long?
  inputBinding:
    prefix: --maxModels
- id: in_maxp_value
  doc: 'Max. p-value of XXmotif models used to initialize Markov models. Not applied
    to min. number of models. (default: 1).'
  type: double?
  inputBinding:
    prefix: --maxPvalue
- id: in_min_occurrence
  doc: 'Min. percentage of sequences containing a binding site instance. Not applied
    to min. number of models. (default: 0).'
  type: double?
  inputBinding:
    prefix: --minOccurrence
- id: in_add_columns
  doc: "{1,2}\nAdd columns to the left and/or right of models. <INTEGER> >= 0 (default:\
    \ 0 0)."
  type: long?
  inputBinding:
    prefix: --addColumns
- id: in_markov_model_order
  doc: 'Markov model order. <INTEGER> >= 0 (default: 0).'
  type: long?
  inputBinding:
    prefix: -k
- id: in_markov_model_pseudocounts_factors_order
  doc: "[<FLOAT>...]\nMarkov model pseudo-counts factor(s). Markov model order k fixes\
    \ vector size to k+1. <FLOAT> >= 0 (default: 10)."
  type: double?
  inputBinding:
    prefix: --alpha
- id: in_eta
  doc: "[<FLOAT>...]\nMarkov model pseudo-counts factor(s) defined by --alpha and\
    \ -q. Markov model order k fixes vector size to k+1. Specify either --eta or --alpha.\
    \ <FLOAT> >= 0 (default: 10)."
  type: double?
  inputBinding:
    prefix: --eta
- id: in_interpolate
  doc: Interpolate between higher- and lower-order probabilities.
  type: boolean?
  inputBinding:
    prefix: --interpolate
- id: in_background_model_order
  doc: 'Background model order. <INTEGER> >= 0. (default: 0).'
  type: long?
  inputBinding:
    prefix: -K
- id: in_background_model_pseudocounts
  doc: 'Background model pseudo-counts factor. <FLOAT> >= 0 (default: 10).'
  type: double?
  inputBinding:
    prefix: --Alpha
- id: in_no_expectation_maximization_phase
  doc: Initialize Markov model but skip EM phase.
  type: boolean?
  inputBinding:
    prefix: --noExpectationMaximizationPhase
- id: in_specificity_factor_approximates
  doc: 'Specificity factor approximates the percentage of sequences contributing to
    the Markov model. 0 < <FLOAT> < 1 (default: 0.1).'
  type: double?
  inputBinding:
    prefix: -q
- id: in_epsilon
  doc: 'EM convergence parameter. <FLOAT> > 0 (default: 0.001).'
  type: double?
  inputBinding:
    prefix: --epsilon
- id: in_max_em_iterations
  doc: 'Max. number of EM iterations (default: max. integer).'
  type: long?
  inputBinding:
    prefix: --maxEMIterations
- id: in_sequence_ints_file
  doc: Intensity or significance values for positive sequences. The higher the values
    the higher the weights.
  type: File?
  inputBinding:
    prefix: --sequenceIntsFile
- id: in_in_it_ints
  doc: Parameter to initialize models from XXmotif results by weighting instances
    with corresponding sequence weigths. Option --sequenceIntsFile must be provided
    simultaneously. Options --bindingSiteFile and --markovModelFile must not be provided
    simultaneously.
  type: boolean?
  inputBinding:
    prefix: --initInts
- id: in_rank_weighting
  doc: 'Rank-based weighting (default: intensity-based weighting).'
  type: boolean?
  inputBinding:
    prefix: --rankWeighting
- id: in_background_quantile
  doc: 'Quantile to estimate the background intensity value (or rank). Sequences having
    their intensity value (rank) below (above) the background intensity value (rank)
    get assigned to weight zero. 0 <= <FLOAT> <= 1 (default: 0).'
  type: double?
  inputBinding:
    prefix: --backgroundQuantile
- id: in_background_intensity
  doc: 'Background intensity value. Sequences having their intensity value below the
    background intensity value get assigned to weight zero. Option --rankWeighting
    must not be provided simultaneously (default: min. intensity value).'
  type: double?
  inputBinding:
    prefix: --backgroundIntensity
- id: in_background_rank
  doc: 'Background intensity rank. Sequences having their intensity rank above the
    background intensity rank get assigned to weight zero. Option --rankWeighting
    must be provided simultaneously (default: max. rank).'
  type: long?
  inputBinding:
    prefix: --backgroundRank
- id: in_binding_site_ints_file
  doc: Intensity or significance values for binding site sequences. The higher the
    values the higher the weights. Option --bindingSiteFile must be provided simultaneously.
  type: File?
  inputBinding:
    prefix: --bindingSiteIntsFile
- id: in_binding_site_rank_weighting
  doc: 'Binding site rank-based weighting (default: intensity-based weighting).'
  type: boolean?
  inputBinding:
    prefix: --bindingSiteRankWeighting
- id: in_binding_site_background_quantile
  doc: 'Quantile to estimate the background intensity value (or rank). Binding sites
    having their intensity value (rank) below (below) the background intensity value
    (rank) get assigned to weight zero. 0 <= <FLOAT> <= 1 (default: 0).'
  type: double?
  inputBinding:
    prefix: --bindingSiteBackgroundQuantile
- id: in_binding_site_background_intensity
  doc: 'Background intensity value. Binding sites having their intensity value below
    the background intensity value get assigned to weight zero. Option --bindingSiteRankWeighting
    must not be provided simultaneously (default: min. intensity value).'
  type: double?
  inputBinding:
    prefix: --bindingSiteBackgroundIntensity
- id: in_binding_site_background_rank
  doc: 'Background intensity rank. Binding sites having their intensity rank above
    the background intensity rank get assigned to weight zero. Option --bindingSiteRankWeighting
    must be provided simultaneously (default: max. rank).'
  type: long?
  inputBinding:
    prefix: --bindingSiteBackgroundRank
- id: in_test_pos_set
  doc: Evaluate model(s) on training sequences.
  type: boolean?
  inputBinding:
    prefix: --testPosSet
- id: in_test_neg_set
  doc: Evaluate model(s) on background sequences.
  type: boolean?
  inputBinding:
    prefix: --testNegSet
- id: in_test_set
  doc: Evaluate model(s) on sequences in FASTA format. Specify one or more files.
    Sequence lengths may differ.
  type: File?
  inputBinding:
    prefix: --testSet
- id: in_evaluate_pwm_s
  doc: Evaluate PWM model(s) used to initialize Markov model(s) on test sequences.
  type: boolean?
  inputBinding:
    prefix: --evaluatePWMs
- id: in_log_probs
  doc: Calculate log probabilities instead of log likelihood ratios.
  type: boolean?
  inputBinding:
    prefix: --logProbs
- id: in_save_init_models
  doc: Save Markov models after initialization to file.
  type: boolean?
  inputBinding:
    prefix: --saveInitModels
- id: in_save_models
  doc: Save Markov models after EM phase to file.
  type: boolean?
  inputBinding:
    prefix: --saveModels
- id: in_save_expectation_maximization_likelihoods
  doc: Save EM iteration's sequence likelihoods and positional odds to file.
  type: boolean?
  inputBinding:
    prefix: --saveExpectationMaximizationLikelihoods
- id: in_save_expectation_maximization_models
  doc: Save EM iteration's Markov models to file.
  type: boolean?
  inputBinding:
    prefix: --saveExpectationMaximizationModels
- id: in_verbose
  doc: "Verbose printouts.\n"
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_outdir
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_seq_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- XXmotif
