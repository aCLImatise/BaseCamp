version 1.0

task AnalyzeCoveragepy {
  input {
    Int? write_frac_bound
    Int? write_mean_activity_of_guides
    Int? primer_mismatches
    Int? guide_mismatches
    Boolean? do_not_allow_gu_pairing
    File? predict_activity_model_path
    Int? predict_activity_th_res
    Boolean? predict_activity_require_highly_active
    Boolean? use_accessions
    Boolean? fully_sensitive
    Boolean? debug
    Boolean? verbose
    String designs_fn
    String seqs_fn
  }
  command <<<
    analyze_coverage_py \
      ~{designs_fn} \
      ~{seqs_fn} \
      ~{if defined(write_frac_bound) then ("--write-frac-bound " +  '"' + write_frac_bound + '"') else ""} \
      ~{if defined(write_mean_activity_of_guides) then ("--write-mean-activity-of-guides " +  '"' + write_mean_activity_of_guides + '"') else ""} \
      ~{if defined(primer_mismatches) then ("--primer-mismatches " +  '"' + primer_mismatches + '"') else ""} \
      ~{if defined(guide_mismatches) then ("--guide-mismatches " +  '"' + guide_mismatches + '"') else ""} \
      ~{if (do_not_allow_gu_pairing) then "--do-not-allow-gu-pairing" else ""} \
      ~{if defined(predict_activity_model_path) then ("--predict-activity-model-path " +  '"' + predict_activity_model_path + '"') else ""} \
      ~{if defined(predict_activity_th_res) then ("--predict-activity-thres " +  '"' + predict_activity_th_res + '"') else ""} \
      ~{if (predict_activity_require_highly_active) then "--predict-activity-require-highly-active" else ""} \
      ~{if (use_accessions) then "--use-accessions" else ""} \
      ~{if (fully_sensitive) then "--fully-sensitive" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/adapt:1.2.0--py_0"
  }
  parameter_meta {
    write_frac_bound: "If set, write a table in which each row represents an\\ninput design and gives the fraction of all sequences\\nthat are covered by the design. The 'design_id' column\\ngives the row number of the design in the designs\\ninput (1 for the first design). The provided argument\\nis a path to a TSV file at which to the write the\\ntable."
    write_mean_activity_of_guides: "If set, write a table in which each row represents an\\ninput design and gives the mean activity across the\\ntarget sequences of the guide set. The 'design_id'\\ncolumn gives the row number of the design in the\\ndesigns input (1 for the first design). The provided\\nargument is a path to a TSV file at which to write the\\ntable. If set, a predictive model must be set without\\n--predict-activity-require-highly-active"
    primer_mismatches: "Allow for this number of mismatches when determining\\nwhether a primer covers a sequence (ignore this if the\\ntargets only consist of guides)"
    guide_mismatches: "Allow for this number of mismatches when determining\\nwhether a guide covers a sequence; either this or\\n--predict-activity-model-path should be set"
    do_not_allow_gu_pairing: "When determining whether a guide binds to a region of\\ntarget sequence, do not count G-U (wobble) base pairs\\nas matching. Default is to tolerate G-U pairing:\\nnamely, A in an output guide sequence matches G in the\\ntarget and C in an output guide sequence matches T in\\nthe target (since the synthesized guide is the reverse\\ncomplement of the output guide sequence)"
    predict_activity_model_path: "PREDICT_ACTIVITY_MODEL_PATH\\nPaths to directories containing serialized models in\\nTensorFlow's SavedModel format for predicting guide-\\ntarget activity. There are two arguments: (1)\\nclassification model to determine which guides are\\nactive; (2) regression model, which is used to\\ndetermine which guides (among active ones) are highly\\nactive. The models/ directory contains example models.\\nEither this or --guide-mismatches should be set."
    predict_activity_th_res: "PREDICT_ACTIVITY_THRES\\nThresholds to use for decisions on output of\\npredictive models. There are two arguments: (1)\\nclassification threshold for deciding which guide-\\ntarget pairs are active (in [0,1], where higher values\\nhave higher precision but less recall); (2) regression\\nthreshold for deciding which guide-target pairs are\\nhighly active (>= 0, where higher values limit the\\nnumber determined to be highly active). If not set but\\n--predict-activity-model-path is set, then this uses\\ndefault thresholds stored with the models. To 'bind\\nto' or 'cover' a target, the guide-target pair must be\\nactive or, if --predict-activity-require-highly-active\\nis set, highly active."
    predict_activity_require_highly_active: "When determining whether a guide-target pair binds\\nusing an activity model, require that the pair be\\npredicted to be highly active (not just active)"
    use_accessions: "When set, the input file of sequences gives accessions\\nrather than being a FASTA of sequences -- each line in\\nthe file gives an accession. This fetches the\\nsequences of those accessions uses them as input."
    fully_sensitive: "When set, use a naive, slow sliding approach to find\\nbinding for primers and guides; otherwise, this uses\\nan index to more quickly identify binding sites"
    debug: "Debug output"
    verbose: "Verbose output"
    designs_fn: "Path to output of running design.py; a TSV file where\\neach row contains a design (target)"
    seqs_fn: "Path to FASTA file giving sequences against which to\\ncompute coverage. (See --use-accessions to pass\\naccessions as input rather than a FASTA file.)"
  }
  output {
    File out_stdout = stdout()
  }
}