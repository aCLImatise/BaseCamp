version 1.0

task Qtip {
  input {
    Array[File] ref
    Array[File] unpaired_read_name
    Array[File] m_one
    Array[File] m_two
    File? index
    Int? seed
    Int? max_allowed_fra_glen
    Int? input_model_size
    Int? sim_unp_min
    Int? sim_conc_min
    Int? sim_disc_min
    Int? sim_bad_end_min
    Int? sim_function
    Float? sim_factor
    Int? wiggle
    File? bt_two_exe
    File? bwa_exe
    File? snap_exe
    Int? aligner
    Boolean? write_orig_mapq
    Boolean? write_precise_mapq
    String? orig_mapq_flag
    String? precise_mapq_flag
    Boolean? keep_z_tz
    String? model_family
    Int? num_trees
    Float? max_features
    Int? max_leaf_nodes
    Float? learning_rate
    Float? optimization_tolerance
    Float? re_weight_ratio
    Boolean? re_weight_mapq
    Float? re_weight_mapq_offset
    Boolean? collapse
    Int? max_rows
    Boolean? no_oob
    Boolean? skip_rewrite
    Boolean? profile_memory
    Boolean? predict_for_training
    Boolean? try_include_mapq
    Float? subsampling_series
    Int? trials
    Boolean? assess_accuracy
    Int? assess_limit
    File? temp_directory
    Directory? output_directory
    File? vanilla_output
    Directory? keep_intermediates
    Boolean? profile
    Boolean? verbose
  }
  command <<<
    qtip \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(unpaired_read_name) then ("--U " +  '"' + unpaired_read_name + '"') else ""} \
      ~{if defined(m_one) then ("--m1 " +  '"' + m_one + '"') else ""} \
      ~{if defined(m_two) then ("--m2 " +  '"' + m_two + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(max_allowed_fra_glen) then ("--max-allowed-fraglen " +  '"' + max_allowed_fra_glen + '"') else ""} \
      ~{if defined(input_model_size) then ("--input-model-size " +  '"' + input_model_size + '"') else ""} \
      ~{if defined(sim_unp_min) then ("--sim-unp-min " +  '"' + sim_unp_min + '"') else ""} \
      ~{if defined(sim_conc_min) then ("--sim-conc-min " +  '"' + sim_conc_min + '"') else ""} \
      ~{if defined(sim_disc_min) then ("--sim-disc-min " +  '"' + sim_disc_min + '"') else ""} \
      ~{if defined(sim_bad_end_min) then ("--sim-bad-end-min " +  '"' + sim_bad_end_min + '"') else ""} \
      ~{if defined(sim_function) then ("--sim-function " +  '"' + sim_function + '"') else ""} \
      ~{if defined(sim_factor) then ("--sim-factor " +  '"' + sim_factor + '"') else ""} \
      ~{if defined(wiggle) then ("--wiggle " +  '"' + wiggle + '"') else ""} \
      ~{if defined(bt_two_exe) then ("--bt2-exe " +  '"' + bt_two_exe + '"') else ""} \
      ~{if defined(bwa_exe) then ("--bwa-exe " +  '"' + bwa_exe + '"') else ""} \
      ~{if defined(snap_exe) then ("--snap-exe " +  '"' + snap_exe + '"') else ""} \
      ~{if defined(aligner) then ("--aligner " +  '"' + aligner + '"') else ""} \
      ~{if (write_orig_mapq) then "--write-orig-mapq" else ""} \
      ~{if (write_precise_mapq) then "--write-precise-mapq" else ""} \
      ~{if defined(orig_mapq_flag) then ("--orig-mapq-flag " +  '"' + orig_mapq_flag + '"') else ""} \
      ~{if defined(precise_mapq_flag) then ("--precise-mapq-flag " +  '"' + precise_mapq_flag + '"') else ""} \
      ~{if (keep_z_tz) then "--keep-ztz" else ""} \
      ~{if defined(model_family) then ("--model-family " +  '"' + model_family + '"') else ""} \
      ~{if defined(num_trees) then ("--num-trees " +  '"' + num_trees + '"') else ""} \
      ~{if defined(max_features) then ("--max-features " +  '"' + max_features + '"') else ""} \
      ~{if defined(max_leaf_nodes) then ("--max-leaf-nodes " +  '"' + max_leaf_nodes + '"') else ""} \
      ~{if defined(learning_rate) then ("--learning-rate " +  '"' + learning_rate + '"') else ""} \
      ~{if defined(optimization_tolerance) then ("--optimization-tolerance " +  '"' + optimization_tolerance + '"') else ""} \
      ~{if defined(re_weight_ratio) then ("--reweight-ratio " +  '"' + re_weight_ratio + '"') else ""} \
      ~{if (re_weight_mapq) then "--reweight-mapq" else ""} \
      ~{if defined(re_weight_mapq_offset) then ("--reweight-mapq-offset " +  '"' + re_weight_mapq_offset + '"') else ""} \
      ~{if (collapse) then "--collapse" else ""} \
      ~{if defined(max_rows) then ("--max-rows " +  '"' + max_rows + '"') else ""} \
      ~{if (no_oob) then "--no-oob" else ""} \
      ~{if (skip_rewrite) then "--skip-rewrite" else ""} \
      ~{if (profile_memory) then "--profile-memory" else ""} \
      ~{if (predict_for_training) then "--predict-for-training" else ""} \
      ~{if (try_include_mapq) then "--try-include-mapq" else ""} \
      ~{if defined(subsampling_series) then ("--subsampling-series " +  '"' + subsampling_series + '"') else ""} \
      ~{if defined(trials) then ("--trials " +  '"' + trials + '"') else ""} \
      ~{if (assess_accuracy) then "--assess-accuracy" else ""} \
      ~{if defined(assess_limit) then ("--assess-limit " +  '"' + assess_limit + '"') else ""} \
      ~{if defined(temp_directory) then ("--temp-directory " +  '"' + temp_directory + '"') else ""} \
      ~{if defined(output_directory) then ("--output-directory " +  '"' + output_directory + '"') else ""} \
      ~{if defined(vanilla_output) then ("--vanilla-output " +  '"' + vanilla_output + '"') else ""} \
      ~{if (keep_intermediates) then "--keep-intermediates" else ""} \
      ~{if (profile) then "--profile" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ref: "FASTA file, or many FASTAs separated by spaces,\\ncontaining reference genome sequences (default: None)"
    unpaired_read_name: "Unpaired read FASTQ file name, or many FASTQ file\\nnames separated by spaces (default: None)"
    m_one: "Mate 1 FASTQ file name, or many FASTQ file names\\nseparated by spaces; must be specified in same order\\nas --m2 (default: None)"
    m_two: "Mate 2 FASTQ file name, or many FASTQ file names\\nseparated by spaces; must be specified in same order\\nas --m1 (default: None)"
    index: "Index file to use; specify the appropriate prefix,\\ne.g. Bowtie 2 index file name without the .X.bt2\\nsuffix. (default: None)"
    seed: "Integer to initialize pseudo-random generator\\n(default: 99099)"
    max_allowed_fra_glen: "When simulating fragments, longer fragments are\\ntruncated to this length (default: 100000)"
    input_model_size: "Maximum # templates to keep when building an input\\nmodel. There are 4 separate models for each alignment\\ncategory and this governs the maximum for all 4.\\n(default: 30000)"
    sim_unp_min: "If predictions for unpaired reads are needed, simulate\\nat least this # of unpaired reads. (default: 30000)"
    sim_conc_min: "If predictions for concordantly aligned reads are\\nneeded, simulate at least this # of concordant pairs.\\n(default: 30000)"
    sim_disc_min: "If predictions for discordantly aligned reads are\\nneeded, simulate at least this # of discordant pairs.\\n(default: 10000)"
    sim_bad_end_min: "If predictions for ends with an unaligned mate are\\nneeded, simulate at least this # of pairs with a bad\\nend. (default: 10000)"
    sim_function: "|linear|const\\nFunction giving # of tandem reads to simulate in a\\ncategory; parameter is the number of input reads. See\\nalso: --sim-factor. (default: sqrt)"
    sim_factor: "This is multiplied with X (if --sim-function=linear)\\nor with sqrt(X) (if --sim-function=sqrt) or with 1 (if\\n--sim-function=const) to calculate # tandem reads to\\nsimulate in a given category, where X is # of input\\nreads in that category. (default: 45.0)"
    wiggle: "Wiggle room to allow in starting position when\\ndetermining whether alignment is correct (default: 30)"
    bt_two_exe: "Path to Bowtie 2 aligner exe, \\\"bowtie2\\\" (default:\\nNone)"
    bwa_exe: "Path to BWA-MEM aligner exe, \\\"bwa\\\" (default: None)"
    snap_exe: "Path to SNAP aligner exe, \\\"snap-aligner\\\" (default:\\nNone)"
    aligner: "Which aligner to use: bowtie2 | bwa-mem | snap\\n(default: bowtie2)"
    write_orig_mapq: "Write original MAPQ as an extra field in output SAM\\n(default: False)"
    write_precise_mapq: "Write a more precise MAPQ prediction as an extra field\\nin output SAM (default: False)"
    orig_mapq_flag: ":X\\nIf --write-orig-mapq is specified, store original MAPQ\\nin this extra SAM field (default: Zm:Z)"
    precise_mapq_flag: ":X\\nIf --write-precise-mapq is specified, store original\\nMAPQ in this extra SAM field (default: Zp:Z)"
    keep_z_tz: "Don't remove ZT:Z field, with aligner-reported feature\\ndata, from the final output SAM (default: False)"
    model_family: "{RandomForest | ExtraTrees | GradientBoosting}\\n(default: RandomForest)"
    num_trees: ",int,...\\nnumber of decision trees to try; relevant for all\\nmodel families (default: 30)"
    max_features: ",float,...\\nmaximum number of features to consider at each\\ndecision tree node; relevant for RandomForest and\\nExtraTrees (default: 0.1,0.2,0.25,0.3,0.35,0.4,0.45)"
    max_leaf_nodes: ",int,...\\nmaximum number of leaf nodes to include in a decision\\ntree; relevant for RandomForest and ExtraTrees\\n(default: 35)"
    learning_rate: ",float,...\\nlearning rate to use when fitting; only relevant for\\nGradientBoosting (default: 0.75,0.8,0.85,0.9,0.95,1.0)"
    optimization_tolerance: "When using hill climbing procedure to optimize\\nhyperparamters,stop when OOB score can't be improved\\nby this relative factor (default: 0.01)"
    re_weight_ratio: "When fitting, reweigh samples so weight of highest-\\nmapq alignment has this times as much weight as\\nlowest-mapq. (default: 1.0)"
    re_weight_mapq: "When fitting, reweigh samples according to initially-\\npredicted mapq. Higher predictions get more weight\\n(default: False)"
    re_weight_mapq_offset: "Add this to every MAPQ before reweighting (default:\\n10.0)"
    collapse: "Remove redundant rows just before prediction. Usually\\nnot a net win. (default: False)"
    max_rows: "Maximum number of rows (alignments) to feed at once to\\nthe prediction function (default: 250000)"
    no_oob: "Don't use out-of-bag score when fitting\\nhyperparameters -- use cross validation instead. No\\neffect for models that don't calculate OOB score.\\n(default: False)"
    skip_rewrite: "Skip the final SAM rewriting step; other results,\\nincluding any fit and prediction assessments\\nrequested, are still written. (default: False)"
    profile_memory: "Use guppy/heapy to profile memory and periodically\\nprint heap usage (default: False)"
    predict_for_training: "Make predictions and produce associated plots/output\\nfiles for training (tandem) data (default: False)"
    try_include_mapq: "Try both with and without including the tool-predicted\\nMAPQ as a feature; default: does not include it\\n(default: False)"
    subsampling_series: "Comma separated list of subsampling fractions to try\\n(default: 1.0)"
    trials: "Number of times to repeat fitting/prediction (default:\\n1)"
    assess_accuracy: "When correctness can be inferred from simulated read\\nnames, assess accuracy of old and new MAPQ predictions\\n(default: False)"
    assess_limit: "The maximum number of alignments to assess when\\nassessing accuracy (default: 100000000)"
    temp_directory: "Write temporary files to this directory; when None:\\nuses environment variables like TMPDIR, TEMP, etc\\n(default: None)"
    output_directory: "Write outputs to this directory (default: None)"
    vanilla_output: "Only write final SAM file; suppress all other output\\n(default: None)"
    keep_intermediates: "Keep intermediates in output directory; if False,\\nintermediates are written to a temporary directory\\nthen deleted (default: False)"
    profile: "Print profiling info (default: False)"
    verbose: "Be talkative (default: False)"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
    File out_vanilla_output = "${in_vanilla_output}"
    Directory out_keep_intermediates = "${in_keep_intermediates}"
  }
}