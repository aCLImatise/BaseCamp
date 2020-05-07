class: CommandLineTool
id: simulate_non_silent_ratio.cwl
inputs:
- id: log_level
  doc: Write a log file (--log-level=DEBUG for debug mode, --log-level=INFO for info
    mode)
  type: string
  inputBinding:
    prefix: --log-level
- id: log
  doc: Path to log file. (accepts "stdout")
  type: string
  inputBinding:
    prefix: --log
- id: input
  doc: gene FASTA file from extract_gene_seq.py script
  type: string
  inputBinding:
    prefix: --input
- id: mutations
  doc: DNA mutations file
  type: string
  inputBinding:
    prefix: --mutations
- id: bed
  doc: BED file annotation of genes
  type: string
  inputBinding:
    prefix: --bed
- id: processes
  doc: 'Number of processes to use. 0 indicates using a single process without using
    a multiprocessing pool (more means Faster, default: 0).'
  type: string
  inputBinding:
    prefix: --processes
- id: num_permutations
  doc: 'Number of permutations for null model. p-value precision increases with more
    permutations (Default: 10000).'
  type: string
  inputBinding:
    prefix: --num-permutations
- id: context
  doc: 'Number of DNA bases to use as context. 0 indicates no context. 1 indicates
    only use the mutated base. 1.5 indicates using the base context used in CHASM
    (http:/ /wiki.chasmsoftware.org/index.php/CHASM_Overview). 2 indicates using the
    mutated base and the upstream base. 3 indicates using the mutated base and both
    the upstream and downstream bases. (Default: 1.5)'
  type: string
  inputBinding:
    prefix: --context
- id: score_dir
  doc: 'Directory containing score information in pickle files (Default: None).'
  type: string
  inputBinding:
    prefix: --score-dir
- id: by_sample
  doc: Report counts for observed mutations stratified by the tumor sample
  type: boolean
  inputBinding:
    prefix: --by-sample
- id: use_unmapped
  doc: Use mutations that are not mapped to the the single reference transcript for
    a gene specified in the bed file indicated by the -b option.
  type: boolean
  inputBinding:
    prefix: --use-unmapped
- id: genome
  doc: 'Path to the genome fasta file. Required if --use- unmapped flag is used. (Default:
    None)'
  type: string
  inputBinding:
    prefix: --genome
- id: observed_output
  doc: Output text file of observed results (optional).
  type: string
  inputBinding:
    prefix: --observed-output
- id: output
  doc: Output text file of simulation results
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- simulate_non_silent_ratio
