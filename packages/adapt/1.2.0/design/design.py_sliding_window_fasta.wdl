version 1.0

task DesignpySlidingwindowFasta {
  input {
    Int? guide_length
    String? obj
    Int? guide_mismatches
    String? guide_cover_frac
    Int? soft_guide_constraint
    Int? hard_guide_constraint
    Int? penalty_strength
    String? maximization_algorithm
    Int? missing_th_res
    Int? id_m
    String? id_frac
    String? id_method
    Array[String] specific_against_fast_as
    File? specific_against_tax_a
    Boolean? do_not_allow_gu_pairing
    File? required_guides
    File? blacklisted_ranges
    Int? blacklisted_km_ers
    Int? require_flanking_five
    Int? require_flanking_three
    String? seed
    File? predict_activity_model_path
    Int? predict_activity_th_res
    Boolean? use_simple_binary_activity_prediction
    Boolean? do_not_memoize_guide_computations
    Boolean? debug
    Boolean? verbose
    Int? window_size
    String? window_step
    Boolean? sort
    Array[String] out_tsv
    Int? cover_by_year_decay
    String in_fast_a
  }
  command <<<
    design_py sliding_window fasta \
      ~{in_fast_a} \
      ~{if defined(guide_length) then ("--guide-length " +  '"' + guide_length + '"') else ""} \
      ~{if defined(obj) then ("--obj " +  '"' + obj + '"') else ""} \
      ~{if defined(guide_mismatches) then ("--guide-mismatches " +  '"' + guide_mismatches + '"') else ""} \
      ~{if defined(guide_cover_frac) then ("--guide-cover-frac " +  '"' + guide_cover_frac + '"') else ""} \
      ~{if defined(soft_guide_constraint) then ("--soft-guide-constraint " +  '"' + soft_guide_constraint + '"') else ""} \
      ~{if defined(hard_guide_constraint) then ("--hard-guide-constraint " +  '"' + hard_guide_constraint + '"') else ""} \
      ~{if defined(penalty_strength) then ("--penalty-strength " +  '"' + penalty_strength + '"') else ""} \
      ~{if defined(maximization_algorithm) then ("--maximization-algorithm " +  '"' + maximization_algorithm + '"') else ""} \
      ~{if defined(missing_th_res) then ("--missing-thres " +  '"' + missing_th_res + '"') else ""} \
      ~{if defined(id_m) then ("--id-m " +  '"' + id_m + '"') else ""} \
      ~{if defined(id_frac) then ("--id-frac " +  '"' + id_frac + '"') else ""} \
      ~{if defined(id_method) then ("--id-method " +  '"' + id_method + '"') else ""} \
      ~{if defined(specific_against_fast_as) then ("--specific-against-fastas " +  '"' + specific_against_fast_as + '"') else ""} \
      ~{if defined(specific_against_tax_a) then ("--specific-against-taxa " +  '"' + specific_against_tax_a + '"') else ""} \
      ~{if (do_not_allow_gu_pairing) then "--do-not-allow-gu-pairing" else ""} \
      ~{if defined(required_guides) then ("--required-guides " +  '"' + required_guides + '"') else ""} \
      ~{if defined(blacklisted_ranges) then ("--blacklisted-ranges " +  '"' + blacklisted_ranges + '"') else ""} \
      ~{if defined(blacklisted_km_ers) then ("--blacklisted-kmers " +  '"' + blacklisted_km_ers + '"') else ""} \
      ~{if defined(require_flanking_five) then ("--require-flanking5 " +  '"' + require_flanking_five + '"') else ""} \
      ~{if defined(require_flanking_three) then ("--require-flanking3 " +  '"' + require_flanking_three + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(predict_activity_model_path) then ("--predict-activity-model-path " +  '"' + predict_activity_model_path + '"') else ""} \
      ~{if defined(predict_activity_th_res) then ("--predict-activity-thres " +  '"' + predict_activity_th_res + '"') else ""} \
      ~{if (use_simple_binary_activity_prediction) then "--use-simple-binary-activity-prediction" else ""} \
      ~{if (do_not_memoize_guide_computations) then "--do-not-memoize-guide-computations" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(window_size) then ("--window-size " +  '"' + window_size + '"') else ""} \
      ~{if defined(window_step) then ("--window-step " +  '"' + window_step + '"') else ""} \
      ~{if (sort) then "--sort" else ""} \
      ~{if defined(out_tsv) then ("--out-tsv " +  '"' + out_tsv + '"') else ""} \
      ~{if defined(cover_by_year_decay) then ("--cover-by-year-decay " +  '"' + cover_by_year_decay + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/adapt:1.2.0--py_0"
  }
  parameter_meta {
    guide_length: "Length of guide to construct"
    obj: "Objective function to solve. 'maximize-activity'\\nmaximizes the expected activity of the guide set of\\nthe target genomes subject to soft and hard\\nconstraints on the size of the guide set. 'minimize-\\nguides' minimizes the number of guides in the guide\\nset subject to coverage constraints across the target\\ngenomes."
    guide_mismatches: "Allow for this number of mismatches when determining\\nwhether a guide covers a sequence"
    guide_cover_frac: "The fraction of all sequences that must be covered by\\nthe guides."
    soft_guide_constraint: "Soft constraint on the number of guides. There is no\\npenalty for a number of guides <=\\nSOFT_GUIDE_CONSTRAINT, and having a number of guides\\nbeyond this is penalized. See --penalty-strength. This\\nvalue must be <= HARD_GUIDE_CONSTRAINT."
    hard_guide_constraint: "Hard constraint on the number of guides. The number of\\nguides designed for a target will be <=\\nHARD_GUIDE_CONSTRAINT."
    penalty_strength: "Importance of the penalty when the number of guides\\nexceeds the soft guide constraint. Namely, for a guide\\nset G, if the penalty strength is L and the soft guide\\nconstraint is h, then the penalty in the objective\\nfunction is L*max(0, |G|-h). Must be >= 0. The value\\ndepends on the output of activity model and reflects a\\ntolerance for more guides; for the default activity\\nmodel reasonable values are in the range [0.1, 0.5]."
    maximization_algorithm: "Algorithm to use for solving submodular maximization\\nproblem. 'greedy' is the canonical deterministic\\ngreedy algorithm (Nemhauser 1978) for constrained\\nmonotone submodular maximization, which may perform\\nwell in practice but has poor theoretical guarantees\\nhere because the function is not monotone (unless\\n--penalty-strength is 0). 'random-greedy' is the\\nrandomized greedy algorithm (Buchbinder 2014) for\\nconstrained non-monotone submodular maximization that\\nhas good worst-case theoretical guarantees."
    missing_th_res: "MISSING_THRES MISSING_THRES\\n<A> <B> <C>; parameters governing the threshold on\\nwhich sites to ignore due to too much missing data.\\nThe 3 values specify not to attempt to design guides\\noverlapping sites where the fraction of sequences with\\nmissing data is > min(A, max(B, C*m)) where m is the\\nmedian fraction of sequences with missing data over\\nthe alignment. Set a=1 and b=1 to not ignore sites due\\nto missing data."
    id_m: "Allow for this number of mismatches when determining\\nwhether a guide 'hits' a sequence in a group/taxon\\nother than the for which it is being designed; higher\\nvalues correspond to more specificity."
    id_frac: "Decide that a guide 'hits' a group/taxon if it 'hits'\\na fraction of sequences in that group/taxon that\\nexceeds this value; lower values correspond to more\\nspecificity."
    id_method: "Choice of method to query for specificity. 'lshnn' for\\nLSH near-neighbor approach. 'shard' for approach that\\nshards k-mers across small tries."
    specific_against_fast_as: "Path to one or more FASTA files giving sequences, such\\nthat guides are designed to be specific against (i.e.,\\nnot hit) these sequences, according to --id-m and\\n--id-frac. This is equivalent to specifying the FASTAs\\nin the main input (as positional inputs), except that,\\nwhen provided here, guides are not designed for them\\nand they do not need to be aligned."
    specific_against_tax_a: "Path to TSV file giving giving taxonomies from which\\nto download all genomes and ensure guides are specific\\nagainst (i.e., not hit) these. The TSV file has 2\\ncolumns: (1) a taxonomic ID; (2) segment label, or\\n'None' if unsegmented"
    do_not_allow_gu_pairing: "When determining whether a guide binds to a region of\\ntarget sequence, do not count G-U (wobble) base pairs\\nas matching. Default is to tolerate G-U pairing:\\nnamely, A in an output guide sequence matches G in the\\ntarget and C in an output guide sequence matches T in\\nthe target (since the synthesized guide is the reverse\\ncomplement of the output guide sequence)"
    required_guides: "Path to a file that gives guide sequences that will be\\nincluded in the guide cover and output for the windows\\nin which they belong, e.g., if certain guide sequences\\nare shown experimentally to perform well. The file\\nmust have 3 columns: col 1 gives an identifier for the\\nalignment that the guide covers, such that i\\nrepresents the i'th FASTA given as input (0-based);\\ncol 2 gives a guide sequence; col 3 gives the start\\nposition of the guide (0-based) in the alignment"
    blacklisted_ranges: "Path to a file that gives ranges in alignments from\\nwhich guides will not be constructed. The file must\\nhave 3 columns: col 1 gives an identifier for the\\nalignment that the range corresponds to, such that i\\nrepresents the i'th FASTA given as input (0-based);\\ncol 2 gives the start position of the range\\n(inclusive); col 3 gives the end position of the range\\n(exclusive)"
    blacklisted_km_ers: "Path to a FASTA file that gives k-mers to blacklisted\\nfrom guide sequences. No guide sequences will be\\nconstructed that contain these k-mers. The k-mers make\\nup the sequences in the FASTA file; the sequence names\\nare ignored. k-mers should be long enough so that not\\ntoo many guide sequences are deemed to be unsuitable,\\nand should be at most the length of the guide"
    require_flanking_five: "Require the given sequence on the 5' protospacer\\nflanking site (PFS) of each designed guide; this\\ntolerates ambiguity in the sequence (e.g., 'H'\\nrequires 'A', 'C', or 'T', or, equivalently, avoids\\nguides flanked by 'G'). Note that this is the 5' end\\nin the target sequence (not the spacer sequence)."
    require_flanking_three: "Require the given sequence on the 3' protospacer\\nflanking site (PFS) of each designed guide; this\\ntolerates ambiguity in the sequence (e.g., 'H'\\nrequires 'A', 'C', or 'T', or, equivalently, avoids\\nguides flanked by 'G'). Note that this is the 3' end\\nin the target sequence (not the spacer sequence)."
    seed: "SEED will set the random seed, guaranteeing the same\\noutput given the same inputs. If SEED is not set to\\nthe same value, output may vary across different runs."
    predict_activity_model_path: "PREDICT_ACTIVITY_MODEL_PATH\\nPaths to directories containing serialized models in\\nTensorFlow's SavedModel format for predicting guide-\\ntarget activity. There are two arguments: (1)\\nclassification model to determine which guides are\\nactive; (2) regression model, which is used to\\ndetermine which guides (among active ones) are highly\\nactive. The models/ directory contains example models.\\nIf not set, ADAPT does not predict activities to use\\nduring design."
    predict_activity_th_res: "PREDICT_ACTIVITY_THRES\\nThresholds to use for decisions on output of\\npredictive models. There are two arguments: (1)\\nclassification threshold for deciding which guide-\\ntarget pairs are active (in [0,1], where higher values\\nhave higher precision but less recall); (2) regression\\nthreshold for deciding which guide-target pairs are\\nhighly active (>= 0, where higher values limit the\\nnumber determined to be highly active). If not set but\\n--predict-activity-model-path is set, then ADAPT uses\\ndefault thresholds stored with the models."
    use_simple_binary_activity_prediction: "If set, predict activity using a simple binary\\nprediction between guide and target according to their\\ndistance, with the threshold determined based on\\n--guide-mismatches. This is only applicable when OBJ\\nis 'maxmimize-activity'. This does not use a\\nserialized model for predicting activity, so\\n--predict-activity-model-path should not be set when\\nthis is set."
    do_not_memoize_guide_computations: "If set, do not memoize computations during the search,\\nincluding of guides identified at each site and of\\nspecificity queries. This can be helpful for\\nbenchmarking the improvement of memoization, or if\\nthere is reason to believe memoization will slow the\\nsearch (e.g., if possible amplicons rarely overlap).\\nNote that activity predictions are still memoized."
    debug: "Debug output"
    verbose: "Verbose output"
    window_size: "Ensure that selected guides are all a window of this\\nsize"
    window_step: "Amount by which to increase the window start position\\nfor every iteration"
    sort: "If set, sort output TSV by number of guides\\n(ascending) then by score (descending); default is to\\nsort by window position"
    out_tsv: "Path to output TSV. If more than one input FASTA is\\ngiven, the same number of output TSVs must be given;\\neach output TSV corresponds to an input FASTA."
    cover_by_year_decay: "COVER_BY_YEAR_DECAY COVER_BY_YEAR_DECAY\\n<A> <B> <C>; if set, group input sequences by year and\\nset a desired partial cover for each year (fraction of\\nsequences that must be covered by guides) as follows:\\nA is a tsv giving a year for each input sequence (col\\n1 is sequence name matching that in the input FASTA,\\ncol 2 is year). All years >= A receive a desired cover\\nfraction of GUIDE_COVER_FRAC for guides (and\\nPRIMER_COVER_FRAC for primers). Each preceding year\\nreceives a desired cover fraction that decays by B --\\ni.e., year n is given B*(desired cover fraction of\\nyear n+1).\\n"
    in_fast_a: "Path to input FASTA. More than one can be given for\\ndifferential identification"
  }
  output {
    File out_stdout = stdout()
  }
}