version 1.0

task PhastOdds {
  input {
    String? features
    Int? window
    Boolean? output_bed
    String? background_mods
    String? background_hmm
    String? feature_mods
    String? feature_hmm
    Boolean? base_by_base
    Int? window_wig
    String? msa_format
    String? ref_idx
    Boolean? verbose
  }
  command <<<
    phastOdds \
      ~{if defined(features) then ("--features " +  '"' + features + '"') else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{true="--output-bed" false="" output_bed} \
      ~{if defined(background_mods) then ("--background-mods " +  '"' + background_mods + '"') else ""} \
      ~{if defined(background_hmm) then ("--background-hmm " +  '"' + background_hmm + '"') else ""} \
      ~{if defined(feature_mods) then ("--feature-mods " +  '"' + feature_mods + '"') else ""} \
      ~{if defined(feature_hmm) then ("--feature-hmm " +  '"' + feature_hmm + '"') else ""} \
      ~{true="--base-by-base" false="" base_by_base} \
      ~{if defined(window_wig) then ("--window-wig " +  '"' + window_wig + '"') else ""} \
      ~{if defined(msa_format) then ("--msa-format " +  '"' + msa_format + '"') else ""} \
      ~{if defined(ref_idx) then ("--refidx " +  '"' + ref_idx + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    features: "(Required unless -w or -y) File defining features to be scored (GFF, BED, or genepred)."
    window: "(Can be used instead of -g or -y) Compute scores in a sliding window of the specified size."
    output_bed: "(For use with -g) Generate output in bed format rather than GFF."
    background_mods: "(Required) Comma-delimited list of tree model (*.mod) files for background.  If used with --background-hmm, order of models must correspond to order of states in HMM."
    background_hmm: "HMM for background.  If there is only one backgound tree model, a trivial (single-state) HMM will be assumed."
    feature_mods: "(Required) Comma-delimited list of tree model (*.mod) files for features.  If used with --feature-hmm, order of models must correspond to order of states in HMM."
    feature_hmm: "HMM for features.  If there is only one tree model for features, a trivial (single-state) HMM will be assumed."
    base_by_base: "(Can be used instead of -g or -y) Output base-by-base scores, in the coordinate frame of the reference sequence (or of the sequence specified by --refidx).  Output is in fixed-step WIG format (http://genome.ucsc.edu/goldenPath/help/wiggle.html).  This option can only be used with individual phylogenetic models, not with sets of models and a (nontrivial) HMM."
    window_wig: "(Can be used instead of -g or -y) Like --window but outputs scores in fixed-step WIG format, as with --base-by-base.  Scores for the positive strand only are output."
    msa_format: "Input format for alignment.  May be FASTA, PHYLIP, MPM, SS, or MAF (default is to guess format from file contents)."
    ref_idx: "Index of reference sequence for coordinates.  Use 0 to indicate the coordinate system of the alignment as a whole. Default is 1, for first sequence."
    verbose: "Verbose mode.  Print messages to stderr describing what the program is doing."
  }
}