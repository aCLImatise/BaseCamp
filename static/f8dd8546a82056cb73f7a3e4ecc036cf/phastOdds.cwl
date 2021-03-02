class: CommandLineTool
id: phastOdds.cwl
inputs:
- id: in_background_mods
  doc: "(Required) Comma-delimited list of tree model (*.mod) files for\nbackground.\
    \  If used with --background-hmm, order of models must\ncorrespond to order of\
    \ states in HMM."
  type: string?
  inputBinding:
    prefix: --background-mods
- id: in_feature_mods
  doc: "(Required) Comma-delimited list of tree model (*.mod) files for\nfeatures.\
    \  If used with --feature-hmm, order of models must\ncorrespond to order of states\
    \ in HMM."
  type: string?
  inputBinding:
    prefix: --feature-mods
- id: in_background_hmm
  doc: "HMM for background.  If there is only one backgound tree\nmodel, a trivial\
    \ (single-state) HMM will be assumed."
  type: string?
  inputBinding:
    prefix: --background-hmm
- id: in_feature_hmm
  doc: "HMM for features.  If there is only one tree model for\nfeatures, a trivial\
    \ (single-state) HMM will be assumed."
  type: string?
  inputBinding:
    prefix: --feature-hmm
- id: in_features
  doc: "(Required unless -w or -y) File defining features to be scored\n(GFF, BED,\
    \ or genepred)."
  type: File?
  inputBinding:
    prefix: --features
- id: in_window
  doc: "(Can be used instead of -g or -y) Compute scores in a sliding\nwindow of the\
    \ specified size."
  type: long?
  inputBinding:
    prefix: --window
- id: in_base_by_base
  doc: "(Can be used instead of -g or -y) Output base-by-base scores, in\nthe coordinate\
    \ frame of the reference sequence (or of the sequence\nspecified by --refidx).\
    \  Output is in fixed-step WIG format\n(http://genome.ucsc.edu/goldenPath/help/wiggle.html).\
    \  This option\ncan only be used with individual phylogenetic models, not with\
    \ sets\nof models and a (nontrivial) HMM."
  type: boolean?
  inputBinding:
    prefix: --base-by-base
- id: in_window_wig
  doc: "(Can be used instead of -g or -y) Like --window but outputs scores\nin fixed-step\
    \ WIG format, as with --base-by-base.  Scores for the\npositive strand only are\
    \ output."
  type: long?
  inputBinding:
    prefix: --window-wig
- id: in_msa_format
  doc: "Input format for alignment.  May be FASTA, PHYLIP, MPM, SS, or\nMAF (default\
    \ is to guess format from file contents)."
  type: File?
  inputBinding:
    prefix: --msa-format
- id: in_ref_idx
  doc: "Index of reference sequence for coordinates.  Use 0 to\nindicate the coordinate\
    \ system of the alignment as a whole.\nDefault is 1, for first sequence."
  type: long?
  inputBinding:
    prefix: --refidx
- id: in_output_bed
  doc: (For use with -g) Generate output in bed format rather than GFF.
  type: boolean?
  inputBinding:
    prefix: --output-bed
- id: in_verbose
  doc: "Verbose mode.  Print messages to stderr describing what the\nprogram is doing."
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- phastOdds
