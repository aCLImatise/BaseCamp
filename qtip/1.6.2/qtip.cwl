class: CommandLineTool
id: qtip.cwl
inputs:
- id: ref
  doc: 'FASTA file, or many FASTAs separated by spaces, containing reference genome
    sequences (default: None)'
  type: File[]
  inputBinding:
    prefix: --ref
- id: u
  doc: 'Unpaired read FASTQ file name, or many FASTQ file names separated by spaces
    (default: None)'
  type: File[]
  inputBinding:
    prefix: --U
- id: m1
  doc: 'Mate 1 FASTQ file name, or many FASTQ file names separated by spaces; must
    be specified in same order as --m2 (default: None)'
  type: File[]
  inputBinding:
    prefix: --m1
- id: m2
  doc: 'Mate 2 FASTQ file name, or many FASTQ file names separated by spaces; must
    be specified in same order as --m1 (default: None)'
  type: File[]
  inputBinding:
    prefix: --m2
- id: index
  doc: 'Index file to use; specify the appropriate prefix, e.g. Bowtie 2 index file
    name without the .X.bt2 suffix. (default: None)'
  type: File
  inputBinding:
    prefix: --index
- id: seed
  doc: 'Integer to initialize pseudo-random generator (default: 99099)'
  type: long
  inputBinding:
    prefix: --seed
- id: max_allowed_fra_glen
  doc: 'When simulating fragments, longer fragments are truncated to this length (default:
    100000)'
  type: long
  inputBinding:
    prefix: --max-allowed-fraglen
- id: input_model_size
  doc: 'Maximum # templates to keep when building an input model. There are 4 separate
    models for each alignment category and this governs the maximum for all 4. (default:
    30000)'
  type: long
  inputBinding:
    prefix: --input-model-size
- id: sim_unp_min
  doc: 'If predictions for unpaired reads are needed, simulate at least this # of
    unpaired reads. (default: 30000)'
  type: long
  inputBinding:
    prefix: --sim-unp-min
- id: sim_conc_min
  doc: 'If predictions for concordantly aligned reads are needed, simulate at least
    this # of concordant pairs. (default: 30000)'
  type: long
  inputBinding:
    prefix: --sim-conc-min
- id: sim_disc_min
  doc: 'If predictions for discordantly aligned reads are needed, simulate at least
    this # of discordant pairs. (default: 10000)'
  type: long
  inputBinding:
    prefix: --sim-disc-min
- id: sim_bad_end_min
  doc: 'If predictions for ends with an unaligned mate are needed, simulate at least
    this # of pairs with a bad end. (default: 10000)'
  type: long
  inputBinding:
    prefix: --sim-bad-end-min
- id: sim_function
  doc: '|linear|const Function giving # of tandem reads to simulate in a category;
    parameter is the number of input reads. See also: --sim-factor. (default: sqrt)'
  type: string
  inputBinding:
    prefix: --sim-function
- id: sim_factor
  doc: 'This is multiplied with X (if --sim-function=linear) or with sqrt(X) (if --sim-function=sqrt)
    or with 1 (if --sim-function=const) to calculate # tandem reads to simulate in
    a given category, where X is # of input reads in that category. (default: 45.0)'
  type: string
  inputBinding:
    prefix: --sim-factor
- id: wiggle
  doc: 'Wiggle room to allow in starting position when determining whether alignment
    is correct (default: 30)'
  type: long
  inputBinding:
    prefix: --wiggle
- id: bt2_exe
  doc: 'Path to Bowtie 2 aligner exe, "bowtie2" (default: None)'
  type: File
  inputBinding:
    prefix: --bt2-exe
- id: bwa_exe
  doc: 'Path to BWA-MEM aligner exe, "bwa" (default: None)'
  type: File
  inputBinding:
    prefix: --bwa-exe
- id: snap_exe
  doc: 'Path to SNAP aligner exe, "snap-aligner" (default: None)'
  type: File
  inputBinding:
    prefix: --snap-exe
- id: aligner
  doc: 'Which aligner to use: bowtie2 | bwa-mem | snap (default: bowtie2)'
  type: string
  inputBinding:
    prefix: --aligner
- id: write_orig_mapq
  doc: 'Write original MAPQ as an extra field in output SAM (default: False)'
  type: boolean
  inputBinding:
    prefix: --write-orig-mapq
- id: write_precise_mapq
  doc: 'Write a more precise MAPQ prediction as an extra field in output SAM (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --write-precise-mapq
- id: orig_mapq_flag
  doc: ':X If --write-orig-mapq is specified, store original MAPQ in this extra SAM
    field (default: Zm:Z)'
  type: string
  inputBinding:
    prefix: --orig-mapq-flag
- id: precise_mapq_flag
  doc: ':X If --write-precise-mapq is specified, store original MAPQ in this extra
    SAM field (default: Zp:Z)'
  type: string
  inputBinding:
    prefix: --precise-mapq-flag
- id: keep_z_tz
  doc: "Don't remove ZT:Z field, with aligner-reported feature data, from the final\
    \ output SAM (default: False)"
  type: boolean
  inputBinding:
    prefix: --keep-ztz
- id: model_family
  doc: '{RandomForest | ExtraTrees | GradientBoosting} (default: RandomForest)'
  type: string
  inputBinding:
    prefix: --model-family
- id: num_trees
  doc: ',int,... number of decision trees to try; relevant for all model families
    (default: 30)'
  type: long
  inputBinding:
    prefix: --num-trees
- id: max_features
  doc: ',float,... maximum number of features to consider at each decision tree node;
    relevant for RandomForest and ExtraTrees (default: 0.1,0.2,0.25,0.3,0.35,0.4,0.45)'
  type: double
  inputBinding:
    prefix: --max-features
- id: max_leaf_nodes
  doc: ',int,... maximum number of leaf nodes to include in a decision tree; relevant
    for RandomForest and ExtraTrees (default: 35)'
  type: long
  inputBinding:
    prefix: --max-leaf-nodes
- id: learning_rate
  doc: ',float,... learning rate to use when fitting; only relevant for GradientBoosting
    (default: 0.75,0.8,0.85,0.9,0.95,1.0)'
  type: double
  inputBinding:
    prefix: --learning-rate
- id: optimization_tolerance
  doc: "When using hill climbing procedure to optimize hyperparamters,stop when OOB\
    \ score can't be improved by this relative factor (default: 0.01)"
  type: string
  inputBinding:
    prefix: --optimization-tolerance
- id: re_weight_ratio
  doc: 'When fitting, reweigh samples so weight of highest- mapq alignment has this
    times as much weight as lowest-mapq. (default: 1.0)'
  type: double
  inputBinding:
    prefix: --reweight-ratio
- id: re_weight_mapq
  doc: 'When fitting, reweigh samples according to initially- predicted mapq. Higher
    predictions get more weight (default: False)'
  type: boolean
  inputBinding:
    prefix: --reweight-mapq
- id: re_weight_mapq_offset
  doc: 'Add this to every MAPQ before reweighting (default: 10.0)'
  type: double
  inputBinding:
    prefix: --reweight-mapq-offset
- id: collapse
  doc: 'Remove redundant rows just before prediction. Usually not a net win. (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --collapse
- id: max_rows
  doc: 'Maximum number of rows (alignments) to feed at once to the prediction function
    (default: 250000)'
  type: long
  inputBinding:
    prefix: --max-rows
- id: no_oob
  doc: "Don't use out-of-bag score when fitting hyperparameters -- use cross validation\
    \ instead. No effect for models that don't calculate OOB score. (default: False)"
  type: boolean
  inputBinding:
    prefix: --no-oob
- id: skip_rewrite
  doc: 'Skip the final SAM rewriting step; other results, including any fit and prediction
    assessments requested, are still written. (default: False)'
  type: boolean
  inputBinding:
    prefix: --skip-rewrite
- id: profile_memory
  doc: 'Use guppy/heapy to profile memory and periodically print heap usage (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --profile-memory
- id: predict_for_training
  doc: 'Make predictions and produce associated plots/output files for training (tandem)
    data (default: False)'
  type: boolean
  inputBinding:
    prefix: --predict-for-training
- id: try_include_mapq
  doc: 'Try both with and without including the tool-predicted MAPQ as a feature;
    default: does not include it (default: False)'
  type: boolean
  inputBinding:
    prefix: --try-include-mapq
- id: subsampling_series
  doc: 'Comma separated list of subsampling fractions to try (default: 1.0)'
  type: double
  inputBinding:
    prefix: --subsampling-series
- id: trials
  doc: 'Number of times to repeat fitting/prediction (default: 1)'
  type: long
  inputBinding:
    prefix: --trials
- id: assess_accuracy
  doc: 'When correctness can be inferred from simulated read names, assess accuracy
    of old and new MAPQ predictions (default: False)'
  type: boolean
  inputBinding:
    prefix: --assess-accuracy
- id: assess_limit
  doc: 'The maximum number of alignments to assess when assessing accuracy (default:
    100000000)'
  type: long
  inputBinding:
    prefix: --assess-limit
- id: temp_directory
  doc: 'Write temporary files to this directory; when None: uses environment variables
    like TMPDIR, TEMP, etc (default: None)'
  type: File
  inputBinding:
    prefix: --temp-directory
- id: output_directory
  doc: 'Write outputs to this directory (default: None)'
  type: File
  inputBinding:
    prefix: --output-directory
- id: vanilla_output
  doc: 'Only write final SAM file; suppress all other output (default: None)'
  type: File
  inputBinding:
    prefix: --vanilla-output
- id: keep_intermediates
  doc: 'Keep intermediates in output directory; if False, intermediates are written
    to a temporary directory then deleted (default: False)'
  type: boolean
  inputBinding:
    prefix: --keep-intermediates
- id: profile
  doc: 'Print profiling info (default: False)'
  type: boolean
  inputBinding:
    prefix: --profile
- id: verbose
  doc: 'Be talkative (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- qtip
