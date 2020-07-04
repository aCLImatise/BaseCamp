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
    String? sim_function
    String? sim_factor
    Int? wiggle
    File? bt_two_exe
    File? bwa_exe
    File? snap_exe
    String? aligner
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
    String? optimization_tolerance
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
    File? output_directory
    File? vanilla_output
    Boolean? keep_intermediates
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
      ~{true="--write-orig-mapq" false="" write_orig_mapq} \
      ~{true="--write-precise-mapq" false="" write_precise_mapq} \
      ~{if defined(orig_mapq_flag) then ("--orig-mapq-flag " +  '"' + orig_mapq_flag + '"') else ""} \
      ~{if defined(precise_mapq_flag) then ("--precise-mapq-flag " +  '"' + precise_mapq_flag + '"') else ""} \
      ~{true="--keep-ztz" false="" keep_z_tz} \
      ~{if defined(model_family) then ("--model-family " +  '"' + model_family + '"') else ""} \
      ~{if defined(num_trees) then ("--num-trees " +  '"' + num_trees + '"') else ""} \
      ~{if defined(max_features) then ("--max-features " +  '"' + max_features + '"') else ""} \
      ~{if defined(max_leaf_nodes) then ("--max-leaf-nodes " +  '"' + max_leaf_nodes + '"') else ""} \
      ~{if defined(learning_rate) then ("--learning-rate " +  '"' + learning_rate + '"') else ""} \
      ~{if defined(optimization_tolerance) then ("--optimization-tolerance " +  '"' + optimization_tolerance + '"') else ""} \
      ~{if defined(re_weight_ratio) then ("--reweight-ratio " +  '"' + re_weight_ratio + '"') else ""} \
      ~{true="--reweight-mapq" false="" re_weight_mapq} \
      ~{if defined(re_weight_mapq_offset) then ("--reweight-mapq-offset " +  '"' + re_weight_mapq_offset + '"') else ""} \
      ~{true="--collapse" false="" collapse} \
      ~{if defined(max_rows) then ("--max-rows " +  '"' + max_rows + '"') else ""} \
      ~{true="--no-oob" false="" no_oob} \
      ~{true="--skip-rewrite" false="" skip_rewrite} \
      ~{true="--profile-memory" false="" profile_memory} \
      ~{true="--predict-for-training" false="" predict_for_training} \
      ~{true="--try-include-mapq" false="" try_include_mapq} \
      ~{if defined(subsampling_series) then ("--subsampling-series " +  '"' + subsampling_series + '"') else ""} \
      ~{if defined(trials) then ("--trials " +  '"' + trials + '"') else ""} \
      ~{true="--assess-accuracy" false="" assess_accuracy} \
      ~{if defined(assess_limit) then ("--assess-limit " +  '"' + assess_limit + '"') else ""} \
      ~{if defined(temp_directory) then ("--temp-directory " +  '"' + temp_directory + '"') else ""} \
      ~{if defined(output_directory) then ("--output-directory " +  '"' + output_directory + '"') else ""} \
      ~{if defined(vanilla_output) then ("--vanilla-output " +  '"' + vanilla_output + '"') else ""} \
      ~{true="--keep-intermediates" false="" keep_intermediates} \
      ~{true="--profile" false="" profile} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    ref: "FASTA file, or many FASTAs separated by spaces, containing reference genome sequences (default: None)"
    unpaired_read_name: "Unpaired read FASTQ file name, or many FASTQ file names separated by spaces (default: None)"
    m_one: "Mate 1 FASTQ file name, or many FASTQ file names separated by spaces; must be specified in same order as --m2 (default: None)"
    m_two: "Mate 2 FASTQ file name, or many FASTQ file names separated by spaces; must be specified in same order as --m1 (default: None)"
    index: "Index file to use; specify the appropriate prefix, e.g. Bowtie 2 index file name without the .X.bt2 suffix. (default: None)"
    seed: "Integer to initialize pseudo-random generator (default: 99099)"
    max_allowed_fra_glen: "When simulating fragments, longer fragments are truncated to this length (default: 100000)"
    input_model_size: "Maximum # templates to keep when building an input model. There are 4 separate models for each alignment category and this governs the maximum for all 4. (default: 30000)"
    sim_unp_min: "If predictions for unpaired reads are needed, simulate at least this # of unpaired reads. (default: 30000)"
    sim_conc_min: "If predictions for concordantly aligned reads are needed, simulate at least this # of concordant pairs. (default: 30000)"
    sim_disc_min: "If predictions for discordantly aligned reads are needed, simulate at least this # of discordant pairs. (default: 10000)"
    sim_bad_end_min: "If predictions for ends with an unaligned mate are needed, simulate at least this # of pairs with a bad end. (default: 10000)"
    sim_function: "|linear|const Function giving # of tandem reads to simulate in a category; parameter is the number of input reads. See also: --sim-factor. (default: sqrt)"
    sim_factor: "This is multiplied with X (if --sim-function=linear) or with sqrt(X) (if --sim-function=sqrt) or with 1 (if --sim-function=const) to calculate # tandem reads to simulate in a given category, where X is # of input reads in that category. (default: 45.0)"
    wiggle: "Wiggle room to allow in starting position when determining whether alignment is correct (default: 30)"
    bt_two_exe: "Path to Bowtie 2 aligner exe, \"bowtie2\" (default: None)"
    bwa_exe: "Path to BWA-MEM aligner exe, \"bwa\" (default: None)"
    snap_exe: "Path to SNAP aligner exe, \"snap-aligner\" (default: None)"
    aligner: "Which aligner to use: bowtie2 | bwa-mem | snap (default: bowtie2)"
    write_orig_mapq: "Write original MAPQ as an extra field in output SAM (default: False)"
    write_precise_mapq: "Write a more precise MAPQ prediction as an extra field in output SAM (default: False)"
    orig_mapq_flag: ":X If --write-orig-mapq is specified, store original MAPQ in this extra SAM field (default: Zm:Z)"
    precise_mapq_flag: ":X If --write-precise-mapq is specified, store original MAPQ in this extra SAM field (default: Zp:Z)"
    keep_z_tz: "Don't remove ZT:Z field, with aligner-reported feature data, from the final output SAM (default: False)"
    model_family: "{RandomForest | ExtraTrees | GradientBoosting} (default: RandomForest)"
    num_trees: ",int,... number of decision trees to try; relevant for all model families (default: 30)"
    max_features: ",float,... maximum number of features to consider at each decision tree node; relevant for RandomForest and ExtraTrees (default: 0.1,0.2,0.25,0.3,0.35,0.4,0.45)"
    max_leaf_nodes: ",int,... maximum number of leaf nodes to include in a decision tree; relevant for RandomForest and ExtraTrees (default: 35)"
    learning_rate: ",float,... learning rate to use when fitting; only relevant for GradientBoosting (default: 0.75,0.8,0.85,0.9,0.95,1.0)"
    optimization_tolerance: "When using hill climbing procedure to optimize hyperparamters,stop when OOB score can't be improved by this relative factor (default: 0.01)"
    re_weight_ratio: "When fitting, reweigh samples so weight of highest- mapq alignment has this times as much weight as lowest-mapq. (default: 1.0)"
    re_weight_mapq: "When fitting, reweigh samples according to initially- predicted mapq. Higher predictions get more weight (default: False)"
    re_weight_mapq_offset: "Add this to every MAPQ before reweighting (default: 10.0)"
    collapse: "Remove redundant rows just before prediction. Usually not a net win. (default: False)"
    max_rows: "Maximum number of rows (alignments) to feed at once to the prediction function (default: 250000)"
    no_oob: "Don't use out-of-bag score when fitting hyperparameters -- use cross validation instead. No effect for models that don't calculate OOB score. (default: False)"
    skip_rewrite: "Skip the final SAM rewriting step; other results, including any fit and prediction assessments requested, are still written. (default: False)"
    profile_memory: "Use guppy/heapy to profile memory and periodically print heap usage (default: False)"
    predict_for_training: "Make predictions and produce associated plots/output files for training (tandem) data (default: False)"
    try_include_mapq: "Try both with and without including the tool-predicted MAPQ as a feature; default: does not include it (default: False)"
    subsampling_series: "Comma separated list of subsampling fractions to try (default: 1.0)"
    trials: "Number of times to repeat fitting/prediction (default: 1)"
    assess_accuracy: "When correctness can be inferred from simulated read names, assess accuracy of old and new MAPQ predictions (default: False)"
    assess_limit: "The maximum number of alignments to assess when assessing accuracy (default: 100000000)"
    temp_directory: "Write temporary files to this directory; when None: uses environment variables like TMPDIR, TEMP, etc (default: None)"
    output_directory: "Write outputs to this directory (default: None)"
    vanilla_output: "Only write final SAM file; suppress all other output (default: None)"
    keep_intermediates: "Keep intermediates in output directory; if False, intermediates are written to a temporary directory then deleted (default: False)"
    profile: "Print profiling info (default: False)"
    verbose: "Be talkative (default: False)"
  }
}