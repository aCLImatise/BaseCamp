class: CommandLineTool
id: phastOdds.cwl
inputs:
- id: features
  doc: alignment.fa > scores.gff
  type: string
  inputBinding:
    prefix: --features
- id: window
  doc: 100 alignment.fa > scores.dat
  type: boolean
  inputBinding:
    prefix: --window
- id: output_bed
  doc: '> scores.bed'
  type: string
  inputBinding:
    prefix: --output-bed
- id: background_mods
  doc: (Required) Comma-delimited list of tree model (*.mod) files for background.  If
    used with --background-hmm, order of models must correspond to order of states
    in HMM.
  type: string
  inputBinding:
    prefix: --background-mods
- id: background_hmm
  doc: HMM for background.  If there is only one backgound tree model, a trivial (single-state)
    HMM will be assumed.
  type: string
  inputBinding:
    prefix: --background-hmm
- id: feature_mods
  doc: (Required) Comma-delimited list of tree model (*.mod) files for features.  If
    used with --feature-hmm, order of models must correspond to order of states in
    HMM.
  type: string
  inputBinding:
    prefix: --feature-mods
- id: feature_hmm
  doc: HMM for features.  If there is only one tree model for features, a trivial
    (single-state) HMM will be assumed.
  type: string
  inputBinding:
    prefix: --feature-hmm
- id: features
  doc: (Required unless -w or -y) File defining features to be scored (GFF, BED, or
    genepred).
  type: string
  inputBinding:
    prefix: --features
- id: window
  doc: (Can be used instead of -g or -y) Compute scores in a sliding window of the
    specified size.
  type: long
  inputBinding:
    prefix: --window
- id: base_by_base
  doc: (Can be used instead of -g or -y) Output base-by-base scores, in the coordinate
    frame of the reference sequence (or of the sequence specified by --refidx).  Output
    is in fixed-step WIG format (http://genome.ucsc.edu/goldenPath/help/wiggle.html).  This
    option can only be used with individual phylogenetic models, not with sets of
    models and a (nontrivial) HMM.
  type: boolean
  inputBinding:
    prefix: --base-by-base
- id: window_wig
  doc: (Can be used instead of -g or -y) Like --window but outputs scores in fixed-step
    WIG format, as with --base-by-base.  Scores for the positive strand only are output.
  type: long
  inputBinding:
    prefix: --window-wig
- id: msa_format
  doc: Input format for alignment.  May be FASTA, PHYLIP, MPM, SS, or MAF (default
    is to guess format from file contents).
  type: string
  inputBinding:
    prefix: --msa-format
- id: ref_idx
  doc: Index of reference sequence for coordinates.  Use 0 to indicate the coordinate
    system of the alignment as a whole. Default is 1, for first sequence.
  type: string
  inputBinding:
    prefix: --refidx
- id: output_bed
  doc: (For use with -g) Generate output in bed format rather than GFF.
  type: boolean
  inputBinding:
    prefix: --output-bed
- id: verbose
  doc: Verbose mode.  Print messages to stderr describing what the program is doing.
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- phastOdds
