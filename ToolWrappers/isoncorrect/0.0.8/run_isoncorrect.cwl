class: CommandLineTool
id: run_isoncorrect.cwl
inputs:
- id: in_fast_q_folder
  doc: "Path to input fastq folder with reads in clusters\n(default: False)"
  type: Directory?
  inputBinding:
    prefix: --fastq_folder
- id: in_number_cores_allocated
  doc: 'Number of cores allocated for clustering (default: 8)'
  type: long?
  inputBinding:
    prefix: --t
- id: in_kmer_size_default
  doc: 'Kmer size (default: 9)'
  type: long?
  inputBinding:
    prefix: --k
- id: in_window_size_default
  doc: 'Window size (default: 20)'
  type: long?
  inputBinding:
    prefix: --w
- id: in_xmin
  doc: 'Lower interval length (default: 18)'
  type: long?
  inputBinding:
    prefix: --xmin
- id: in_xmax
  doc: 'Upper interval length (default: 80)'
  type: long?
  inputBinding:
    prefix: --xmax
- id: in_minimum_fraction_keeping
  doc: 'Minimum fraction keeping substitution (default: 0.1)'
  type: double?
  inputBinding:
    prefix: --T
- id: in_exact_instance_limit
  doc: "Do exact correction for clusters under this threshold\n(default: 50)"
  type: long?
  inputBinding:
    prefix: --exact_instance_limit
- id: in_keep_old
  doc: "Do not recompute previous results if\ncorrected_reads.fq is found and has\
    \ the smae number of\nreads as input file (i.e., is complete). (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --keep_old
- id: in_set_w_dynamically
  doc: "Set w = k + max(2*k, floor(cluster_size/1000)).\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --set_w_dynamically
- id: in_max_seqs
  doc: "Maximum number of seqs to correct at a time (in case\nof large clusters).\
    \ (default: 2000)"
  type: long?
  inputBinding:
    prefix: --max_seqs
- id: in_use_rac_on
  doc: "Use racon to polish consensus after spoa (more time\nconsuming but higher\
    \ accuracy). (default: False)"
  type: boolean?
  inputBinding:
    prefix: --use_racon
- id: in_split_mod
  doc: "Splits cluster ids in n (default=1) partitions by\ncomputing residual of cluster_id\
    \ divided by n. this\nparameter needs to be combined with --residual to take\n\
    effect. (default: 1)"
  type: long?
  inputBinding:
    prefix: --split_mod
- id: in_residual
  doc: "Run isONcorrect on cluster ids with residual (default\n0) of cluster_id divided\
    \ by --split_mod. (default: 0)"
  type: long?
  inputBinding:
    prefix: --residual
- id: in_split_wrt_batches
  doc: "Process reads per batch (of max_seqs sequences)\ninstead of per cluster. Significantly\
    \ decrease runtime\nwhen few very large clusters are less than the number\nof\
    \ cores used. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --split_wrt_batches
- id: in_out_folder
  doc: 'Outfolder with all corrected reads. (default: None)'
  type: Directory?
  inputBinding:
    prefix: --outfolder
- id: in_rand_strobes
  doc: "EXPERIMENTAL PARAMETER: IsONcorrect uses paired\nminimizers (described in\
    \ isONcorrect paper). This\nexperimental option uses randstrobes instead of paired\n\
    minimizers to find shared regions. Randstrobes reduces\nmemory footprint substantially\
    \ (and runtime) with only\nslight increase in post correction quality. (default:\n\
    False)"
  type: boolean?
  inputBinding:
    prefix: --randstrobes
- id: in_layers
  doc: "EXPERIMENTAL PARAMETER: Active when --randstrobes\nspecified. How many \"\
    layers\" with randstrobes we want\nper sequence to sample. More layers gives more\n\
    accureate results but is more memory consuming and\nslower. It is not reccomended\
    \ to specify more than 5."
  type: long?
  inputBinding:
    prefix: --layers
- id: in_set_layers_manually
  doc: "EXPERIMENTAL PARAMETER: By default isONcorrect sets\nlayers = 1 if nr seqs\
    \ in batch to be corrected is >=\n1000, else layers = 2. This command will manually\
    \ pick\nthe number of layers specified with the --layers\nparameter. (default:\
    \ False)\n"
  type: boolean?
  inputBinding:
    prefix: --set_layers_manually
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_folder
  doc: 'Outfolder with all corrected reads. (default: None)'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out_folder)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/isoncorrect:0.0.8--py_0
cwlVersion: v1.1
baseCommand:
- run_isoncorrect
