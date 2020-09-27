class: CommandLineTool
id: qtip.cwl
inputs:
- id: in_ref
  doc: "FASTA file, or many FASTAs separated by spaces,\ncontaining reference genome\
    \ sequences (default: None)"
  type: File[]
  inputBinding:
    prefix: --ref
- id: in_unpaired_read_fastq
  doc: "Unpaired read FASTQ file name, or many FASTQ file\nnames separated by spaces\
    \ (default: None)"
  type: File[]
  inputBinding:
    prefix: --U
- id: in_m_one
  doc: "Mate 1 FASTQ file name, or many FASTQ file names\nseparated by spaces; must\
    \ be specified in same order\nas --m2 (default: None)"
  type: File[]
  inputBinding:
    prefix: --m1
- id: in_m_two
  doc: "Mate 2 FASTQ file name, or many FASTQ file names\nseparated by spaces; must\
    \ be specified in same order\nas --m1 (default: None)"
  type: File[]
  inputBinding:
    prefix: --m2
- id: in_index
  doc: "Index file to use; specify the appropriate prefix,\ne.g. Bowtie 2 index file\
    \ name without the .X.bt2\nsuffix. (default: None)"
  type: File
  inputBinding:
    prefix: --index
- id: in_seed
  doc: "Integer to initialize pseudo-random generator\n(default: 99099)"
  type: long
  inputBinding:
    prefix: --seed
- id: in_max_allowed_fra_glen
  doc: "When simulating fragments, longer fragments are\ntruncated to this length\
    \ (default: 100000)"
  type: long
  inputBinding:
    prefix: --max-allowed-fraglen
- id: in_input_model_size
  doc: "Maximum # templates to keep when building an input\nmodel. There are 4 separate\
    \ models for each alignment\ncategory and this governs the maximum for all 4.\n\
    (default: 30000)"
  type: long
  inputBinding:
    prefix: --input-model-size
- id: in_sim_unp_min
  doc: "If predictions for unpaired reads are needed, simulate\nat least this # of\
    \ unpaired reads. (default: 30000)"
  type: long
  inputBinding:
    prefix: --sim-unp-min
- id: in_sim_conc_min
  doc: "If predictions for concordantly aligned reads are\nneeded, simulate at least\
    \ this # of concordant pairs.\n(default: 30000)"
  type: long
  inputBinding:
    prefix: --sim-conc-min
- id: in_sim_disc_min
  doc: "If predictions for discordantly aligned reads are\nneeded, simulate at least\
    \ this # of discordant pairs.\n(default: 10000)"
  type: long
  inputBinding:
    prefix: --sim-disc-min
- id: in_sim_bad_end_min
  doc: "If predictions for ends with an unaligned mate are\nneeded, simulate at least\
    \ this # of pairs with a bad\nend. (default: 10000)"
  type: long
  inputBinding:
    prefix: --sim-bad-end-min
- id: in_sim_function
  doc: "|linear|const\nFunction giving # of tandem reads to simulate in a\ncategory;\
    \ parameter is the number of input reads. See\nalso: --sim-factor. (default: sqrt)"
  type: long
  inputBinding:
    prefix: --sim-function
- id: in_sim_factor
  doc: "This is multiplied with X (if --sim-function=linear)\nor with sqrt(X) (if\
    \ --sim-function=sqrt) or with 1 (if\n--sim-function=const) to calculate # tandem\
    \ reads to\nsimulate in a given category, where X is # of input\nreads in that\
    \ category. (default: 45.0)"
  type: double
  inputBinding:
    prefix: --sim-factor
- id: in_wiggle
  doc: "Wiggle room to allow in starting position when\ndetermining whether alignment\
    \ is correct (default: 30)"
  type: long
  inputBinding:
    prefix: --wiggle
- id: in_bt_two_exe
  doc: "Path to Bowtie 2 aligner exe, \"bowtie2\" (default:\nNone)"
  type: File
  inputBinding:
    prefix: --bt2-exe
- id: in_bwa_exe
  doc: 'Path to BWA-MEM aligner exe, "bwa" (default: None)'
  type: File
  inputBinding:
    prefix: --bwa-exe
- id: in_snap_exe
  doc: "Path to SNAP aligner exe, \"snap-aligner\" (default:\nNone)"
  type: File
  inputBinding:
    prefix: --snap-exe
- id: in_aligner
  doc: "Which aligner to use: bowtie2 | bwa-mem | snap\n(default: bowtie2)"
  type: long
  inputBinding:
    prefix: --aligner
- id: in_write_orig_mapq
  doc: "Write original MAPQ as an extra field in output SAM\n(default: False)"
  type: boolean
  inputBinding:
    prefix: --write-orig-mapq
- id: in_write_precise_mapq
  doc: "Write a more precise MAPQ prediction as an extra field\nin output SAM (default:\
    \ False)"
  type: boolean
  inputBinding:
    prefix: --write-precise-mapq
- id: in_orig_mapq_flag
  doc: ":X\nIf --write-orig-mapq is specified, store original MAPQ\nin this extra\
    \ SAM field (default: Zm:Z)"
  type: string
  inputBinding:
    prefix: --orig-mapq-flag
- id: in_precise_mapq_flag
  doc: ":X\nIf --write-precise-mapq is specified, store original\nMAPQ in this extra\
    \ SAM field (default: Zp:Z)"
  type: string
  inputBinding:
    prefix: --precise-mapq-flag
- id: in_keep_z_tz
  doc: "Don't remove ZT:Z field, with aligner-reported feature\ndata, from the final\
    \ output SAM (default: False)"
  type: boolean
  inputBinding:
    prefix: --keep-ztz
- id: in_model_family
  doc: "{RandomForest | ExtraTrees | GradientBoosting}\n(default: RandomForest)"
  type: string
  inputBinding:
    prefix: --model-family
- id: in_num_trees
  doc: ",int,...\nnumber of decision trees to try; relevant for all\nmodel families\
    \ (default: 30)"
  type: long
  inputBinding:
    prefix: --num-trees
- id: in_max_features
  doc: ",float,...\nmaximum number of features to consider at each\ndecision tree\
    \ node; relevant for RandomForest and\nExtraTrees (default: 0.1,0.2,0.25,0.3,0.35,0.4,0.45)"
  type: double
  inputBinding:
    prefix: --max-features
- id: in_max_leaf_nodes
  doc: ",int,...\nmaximum number of leaf nodes to include in a decision\ntree; relevant\
    \ for RandomForest and ExtraTrees\n(default: 35)"
  type: long
  inputBinding:
    prefix: --max-leaf-nodes
- id: in_learning_rate
  doc: ",float,...\nlearning rate to use when fitting; only relevant for\nGradientBoosting\
    \ (default: 0.75,0.8,0.85,0.9,0.95,1.0)"
  type: double
  inputBinding:
    prefix: --learning-rate
- id: in_optimization_tolerance
  doc: "When using hill climbing procedure to optimize\nhyperparamters,stop when OOB\
    \ score can't be improved\nby this relative factor (default: 0.01)"
  type: double
  inputBinding:
    prefix: --optimization-tolerance
- id: in_re_weight_ratio
  doc: "When fitting, reweigh samples so weight of highest-\nmapq alignment has this\
    \ times as much weight as\nlowest-mapq. (default: 1.0)"
  type: double
  inputBinding:
    prefix: --reweight-ratio
- id: in_re_weight_mapq
  doc: "When fitting, reweigh samples according to initially-\npredicted mapq. Higher\
    \ predictions get more weight\n(default: False)"
  type: boolean
  inputBinding:
    prefix: --reweight-mapq
- id: in_re_weight_mapq_offset
  doc: "Add this to every MAPQ before reweighting (default:\n10.0)"
  type: double
  inputBinding:
    prefix: --reweight-mapq-offset
- id: in_collapse
  doc: "Remove redundant rows just before prediction. Usually\nnot a net win. (default:\
    \ False)"
  type: boolean
  inputBinding:
    prefix: --collapse
- id: in_max_rows
  doc: "Maximum number of rows (alignments) to feed at once to\nthe prediction function\
    \ (default: 250000)"
  type: long
  inputBinding:
    prefix: --max-rows
- id: in_no_oob
  doc: "Don't use out-of-bag score when fitting\nhyperparameters -- use cross validation\
    \ instead. No\neffect for models that don't calculate OOB score.\n(default: False)"
  type: boolean
  inputBinding:
    prefix: --no-oob
- id: in_skip_rewrite
  doc: "Skip the final SAM rewriting step; other results,\nincluding any fit and prediction\
    \ assessments\nrequested, are still written. (default: False)"
  type: boolean
  inputBinding:
    prefix: --skip-rewrite
- id: in_profile_memory
  doc: "Use guppy/heapy to profile memory and periodically\nprint heap usage (default:\
    \ False)"
  type: boolean
  inputBinding:
    prefix: --profile-memory
- id: in_predict_for_training
  doc: "Make predictions and produce associated plots/output\nfiles for training (tandem)\
    \ data (default: False)"
  type: boolean
  inputBinding:
    prefix: --predict-for-training
- id: in_try_include_mapq
  doc: "Try both with and without including the tool-predicted\nMAPQ as a feature;\
    \ default: does not include it\n(default: False)"
  type: boolean
  inputBinding:
    prefix: --try-include-mapq
- id: in_subsampling_series
  doc: "Comma separated list of subsampling fractions to try\n(default: 1.0)"
  type: double
  inputBinding:
    prefix: --subsampling-series
- id: in_trials
  doc: "Number of times to repeat fitting/prediction (default:\n1)"
  type: long
  inputBinding:
    prefix: --trials
- id: in_assess_accuracy
  doc: "When correctness can be inferred from simulated read\nnames, assess accuracy\
    \ of old and new MAPQ predictions\n(default: False)"
  type: boolean
  inputBinding:
    prefix: --assess-accuracy
- id: in_assess_limit
  doc: "The maximum number of alignments to assess when\nassessing accuracy (default:\
    \ 100000000)"
  type: long
  inputBinding:
    prefix: --assess-limit
- id: in_temp_directory
  doc: "Write temporary files to this directory; when None:\nuses environment variables\
    \ like TMPDIR, TEMP, etc\n(default: None)"
  type: File
  inputBinding:
    prefix: --temp-directory
- id: in_output_directory
  doc: 'Write outputs to this directory (default: None)'
  type: Directory
  inputBinding:
    prefix: --output-directory
- id: in_vanilla_output
  doc: "Only write final SAM file; suppress all other output\n(default: None)"
  type: File
  inputBinding:
    prefix: --vanilla-output
- id: in_keep_intermediates
  doc: "Keep intermediates in output directory; if False,\nintermediates are written\
    \ to a temporary directory\nthen deleted (default: False)"
  type: Directory
  inputBinding:
    prefix: --keep-intermediates
- id: in_profile
  doc: 'Print profiling info (default: False)'
  type: boolean
  inputBinding:
    prefix: --profile
- id: in_verbose
  doc: 'Be talkative (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: 'Write outputs to this directory (default: None)'
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_directory)
- id: out_vanilla_output
  doc: "Only write final SAM file; suppress all other output\n(default: None)"
  type: File
  outputBinding:
    glob: $(inputs.in_vanilla_output)
- id: out_keep_intermediates
  doc: "Keep intermediates in output directory; if False,\nintermediates are written\
    \ to a temporary directory\nthen deleted (default: False)"
  type: Directory
  outputBinding:
    glob: $(inputs.in_keep_intermediates)
cwlVersion: v1.1
baseCommand:
- qtip
