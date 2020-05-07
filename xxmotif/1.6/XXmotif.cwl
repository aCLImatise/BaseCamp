class: CommandLineTool
id: XXmotif.cwl
inputs:
- id: neg_set
  doc: sequence set which has to be used as a reference set
  type: File
  inputBinding:
    prefix: --negSet
- id: z_oops
  doc: use zero-or-one occurrence per sequence model (DEFAULT)
  type: boolean
  inputBinding:
    prefix: --zoops
- id: mops
  doc: use multiple occurrence per sequence model
  type: boolean
  inputBinding:
    prefix: --mops
- id: oops
  doc: use one occurrence per sequence model
  type: boolean
  inputBinding:
    prefix: --oops
- id: rev_comp
  doc: 'search in reverse complement of sequences as well (DEFAULT: NO)'
  type: boolean
  inputBinding:
    prefix: --revcomp
- id: background_model_order
  doc: 'order of background distribution (DEFAULT: 2, 8(--negset) )'
  type: string
  inputBinding:
    prefix: --background-model-order
- id: pseudo
  doc: 'percentage of pseudocounts used (DEFAULT: 10)'
  type: string
  inputBinding:
    prefix: --pseudo
- id: gaps
  doc: 'maximum number of gaps used for start seeds [0-3] (DEFAULT: 0)'
  type: string
  inputBinding:
    prefix: --gaps
- id: type
  doc: 'defines what kind of start seeds are used (DEFAULT: ALL) - possible types:
    ALL, FIVEMERS, PALINDROME, TANDEM, NOPALINDROME, NOTANDEM'
  type: string
  inputBinding:
    prefix: --type
- id: merge_motif_threshold
  doc: 'defines the similarity threshold for merging motifs (DEFAULT: HIGH) - possible
    modes: LOW, MEDIUM, HIGH'
  type: string
  inputBinding:
    prefix: --merge-motif-threshold
- id: no_pwm_length_optimization
  doc: do not optimize length during iterations (runtime advantages)
  type: boolean
  inputBinding:
    prefix: --no-pwm-length-optimization
- id: max_match_positions
  doc: 'max number of positions per motif (DEFAULT: 17, higher values will lead to
    very long runtimes)'
  type: long
  inputBinding:
    prefix: --max-match-positions
- id: batch
  doc: suppress progress bars (reduce output size for batch jobs)
  type: boolean
  inputBinding:
    prefix: --batch
- id: max_pos_setsize
  doc: 'maximum number of sequences from the positive set used [DEFAULT: all]'
  type: string
  inputBinding:
    prefix: --maxPosSetSize
- id: tracked_motif
  doc: 'inspect extensions and refinement of a given seed (DEFAULT: not used)'
  type: string
  inputBinding:
    prefix: --trackedMotif
- id: format
  doc: '|MFASTA                   defines what kind of format the input sequences
    have (DEFAULT: FASTA)'
  type: string
  inputBinding:
    prefix: --format
- id: max_multiple_sequences
  doc: 'maximum number of sequences used in an alignment [DEFAULT: all]'
  type: string
  inputBinding:
    prefix: --maxMultipleSequences
- id: localization
  doc: use localization information to calculate combined P-values  (sequences should
    have all the same length)
  type: boolean
  inputBinding:
    prefix: --localization
- id: downstream
  doc: 'number of residues in positive set downstream of anchor point (DEFAULT: 0)'
  type: string
  inputBinding:
    prefix: --downstream
- id: start_motif
  doc: Start motif (IUPAC characters)
  type: string
  inputBinding:
    prefix: --startMotif
- id: profile_file
  doc: profile file
  type: File
  inputBinding:
    prefix: --profileFile
- id: start_region
  doc: expected start position for motif occurrences relative to anchor point (--localization)
  type: string
  inputBinding:
    prefix: --startRegion
- id: endregion
  doc: expected end position for motif occurrences relative to anchor point (--localization)
  type: string
  inputBinding:
    prefix: --endRegion
- id: save_init_models
  doc: Save Markov models after initialization to file.
  type: boolean
  inputBinding:
    prefix: --saveInitModels
- id: save_models
  doc: Save Markov models after EM phase to file.
  type: boolean
  inputBinding:
    prefix: --saveModels
- id: save_expectation_maximization_likelihoods
  doc: Save EM iteration's sequence likelihoods and positional odds to file.
  type: boolean
  inputBinding:
    prefix: --saveExpectationMaximizationLikelihoods
- id: save_expectation_maximization_models
  doc: Save EM iteration's Markov models to file.
  type: boolean
  inputBinding:
    prefix: --saveExpectationMaximizationModels
- id: verbose
  doc: Verbose printouts.
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- XXmotif
