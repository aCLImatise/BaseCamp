version 1.0

task PhastOdds {
  input {
    String? background_mods
    String? feature_mods
    String? background_hmm
    String? feature_hmm
    File? features
    Int? window
    Boolean? base_by_base
    Int? window_wig
    File? msa_format
    Int? ref_idx
    Boolean? output_bed
    Boolean? verbose
  }
  command <<<
    phastOdds \
      ~{if defined(background_mods) then ("--background-mods " +  '"' + background_mods + '"') else ""} \
      ~{if defined(feature_mods) then ("--feature-mods " +  '"' + feature_mods + '"') else ""} \
      ~{if defined(background_hmm) then ("--background-hmm " +  '"' + background_hmm + '"') else ""} \
      ~{if defined(feature_hmm) then ("--feature-hmm " +  '"' + feature_hmm + '"') else ""} \
      ~{if defined(features) then ("--features " +  '"' + features + '"') else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if (base_by_base) then "--base-by-base" else ""} \
      ~{if defined(window_wig) then ("--window-wig " +  '"' + window_wig + '"') else ""} \
      ~{if defined(msa_format) then ("--msa-format " +  '"' + msa_format + '"') else ""} \
      ~{if defined(ref_idx) then ("--refidx " +  '"' + ref_idx + '"') else ""} \
      ~{if (output_bed) then "--output-bed" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    background_mods: "(Required) Comma-delimited list of tree model (*.mod) files for\\nbackground.  If used with --background-hmm, order of models must\\ncorrespond to order of states in HMM."
    feature_mods: "(Required) Comma-delimited list of tree model (*.mod) files for\\nfeatures.  If used with --feature-hmm, order of models must\\ncorrespond to order of states in HMM."
    background_hmm: "HMM for background.  If there is only one backgound tree\\nmodel, a trivial (single-state) HMM will be assumed."
    feature_hmm: "HMM for features.  If there is only one tree model for\\nfeatures, a trivial (single-state) HMM will be assumed."
    features: "(Required unless -w or -y) File defining features to be scored\\n(GFF, BED, or genepred)."
    window: "(Can be used instead of -g or -y) Compute scores in a sliding\\nwindow of the specified size."
    base_by_base: "(Can be used instead of -g or -y) Output base-by-base scores, in\\nthe coordinate frame of the reference sequence (or of the sequence\\nspecified by --refidx).  Output is in fixed-step WIG format\\n(http://genome.ucsc.edu/goldenPath/help/wiggle.html).  This option\\ncan only be used with individual phylogenetic models, not with sets\\nof models and a (nontrivial) HMM."
    window_wig: "(Can be used instead of -g or -y) Like --window but outputs scores\\nin fixed-step WIG format, as with --base-by-base.  Scores for the\\npositive strand only are output."
    msa_format: "Input format for alignment.  May be FASTA, PHYLIP, MPM, SS, or\\nMAF (default is to guess format from file contents)."
    ref_idx: "Index of reference sequence for coordinates.  Use 0 to\\nindicate the coordinate system of the alignment as a whole.\\nDefault is 1, for first sequence."
    output_bed: "(For use with -g) Generate output in bed format rather than GFF."
    verbose: "Verbose mode.  Print messages to stderr describing what the\\nprogram is doing."
  }
  output {
    File out_stdout = stdout()
  }
}