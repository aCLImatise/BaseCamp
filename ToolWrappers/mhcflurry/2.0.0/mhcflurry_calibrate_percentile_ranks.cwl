class: CommandLineTool
id: mhcflurry_calibrate_percentile_ranks.cwl
inputs:
- id: in_predictor_kind
  doc: Type of predictor to calibrate
  type: string
  inputBinding:
    prefix: --predictor-kind
- id: in_models_dir
  doc: Directory to read and write models
  type: Directory
  inputBinding:
    prefix: --models-dir
- id: in_alleles_calibrate_percentile
  doc: "Alleles to calibrate percentile ranks for. If not\nspecified all alleles are\
    \ used"
  type: string[]
  inputBinding:
    prefix: --allele
- id: in_match_amino_acid_distribution_data
  doc: "Sample random peptides from the amino acid\ndistribution of the peptides listed\
    \ in the supplied\nCSV file, which must have a 'peptide' column. If not\nspecified\
    \ a uniform distribution is used."
  type: File
  inputBinding:
    prefix: --match-amino-acid-distribution-data
- id: in_alleles_file
  doc: "Use alleles in supplied CSV file, which must have an\n'allele' column."
  type: File
  inputBinding:
    prefix: --alleles-file
- id: in_num_peptides_per_length
  doc: "Number of peptides per length to use to calibrate\npercent ranks. Default:\
    \ 100000."
  type: long
  inputBinding:
    prefix: --num-peptides-per-length
- id: in_num_genotypes
  doc: "Used when calibrrating a presentation predictor.\nNumber of genotypesto sample"
  type: long
  inputBinding:
    prefix: --num-genotypes
- id: in_alleles_per_genotype
  doc: "Used when calibrating a presentation predictor. Number\nof alleles per genotype.\
    \ Use 1 to calibrate for single\nalleles. Default: 6"
  type: long
  inputBinding:
    prefix: --alleles-per-genotype
- id: in_motif_summary
  doc: Calculate motifs and length preferences for each
  type: boolean
  inputBinding:
    prefix: --motif-summary
- id: in_length_range
  doc: "LENGTH_RANGE\nMin and max peptide length to calibrate, inclusive.\nDefault:\
    \ (8, 15)"
  type: long
  inputBinding:
    prefix: --length-range
- id: in_prediction_batch_size
  doc: Keras batch size for predictions
  type: long
  inputBinding:
    prefix: --prediction-batch-size
- id: in_alleles_per_work_chunk
  doc: 'Number of alleles per work chunk. Default: 1.'
  type: long
  inputBinding:
    prefix: --alleles-per-work-chunk
- id: in_verbosity
  doc: 'Keras verbosity. Default: 0'
  type: long
  inputBinding:
    prefix: --verbosity
- id: in_num_jobs
  doc: "Number of local processes to parallelize training\nover. Set to 0 for serial\
    \ run. Default: 0."
  type: long
  inputBinding:
    prefix: --num-jobs
- id: in_backend
  doc: "Keras backend. If not specified will use system\ndefault."
  type: string
  inputBinding:
    prefix: --backend
- id: in_gpus
  doc: "Number of GPUs to attempt to parallelize across.\nRequires running in parallel."
  type: long
  inputBinding:
    prefix: --gpus
- id: in_max_workers_per_gpu
  doc: "Maximum number of workers to assign to a GPU.\nAdditional tasks will run on\
    \ CPU."
  type: long
  inputBinding:
    prefix: --max-workers-per-gpu
- id: in_max_tasks_per_worker
  doc: "Restart workers after N tasks. Workaround for\ntensorflow memory leaks. Requires\
    \ Python >=3.2."
  type: long
  inputBinding:
    prefix: --max-tasks-per-worker
- id: in_worker_log_dir
  doc: "Write worker stdout and stderr logs to given\ndirectory."
  type: Directory
  inputBinding:
    prefix: --worker-log-dir
- id: in__summarytoppeptidefraction_x
  doc: --summary-top-peptide-fraction X [X ...]
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mhcflurry-calibrate-percentile-ranks
