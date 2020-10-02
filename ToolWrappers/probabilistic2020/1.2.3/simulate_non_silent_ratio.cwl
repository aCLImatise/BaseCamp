class: CommandLineTool
id: simulate_non_silent_ratio.cwl
inputs:
- id: in_log_level
  doc: "Write a log file (--log-level=DEBUG for debug mode,\n--log-level=INFO for\
    \ info mode)"
  type: File
  inputBinding:
    prefix: --log-level
- id: in_log
  doc: Path to log file. (accepts "stdout")
  type: File
  inputBinding:
    prefix: --log
- id: in_input
  doc: gene FASTA file from extract_gene_seq.py script
  type: File
  inputBinding:
    prefix: --input
- id: in_mutations
  doc: DNA mutations file
  type: File
  inputBinding:
    prefix: --mutations
- id: in_bed
  doc: BED file annotation of genes
  type: File
  inputBinding:
    prefix: --bed
- id: in_processes
  doc: "Number of processes to use. 0 indicates using a single\nprocess without using\
    \ a multiprocessing pool (more\nmeans Faster, default: 0)."
  type: long
  inputBinding:
    prefix: --processes
- id: in_num_permutations
  doc: "Number of permutations for null model. p-value\nprecision increases with more\
    \ permutations (Default:\n10000)."
  type: long
  inputBinding:
    prefix: --num-permutations
- id: in_context
  doc: "Number of DNA bases to use as context. 0 indicates no\ncontext. 1 indicates\
    \ only use the mutated base. 1.5\nindicates using the base context used in CHASM\
    \ (http:/\n/wiki.chasmsoftware.org/index.php/CHASM_Overview). 2\nindicates using\
    \ the mutated base and the upstream\nbase. 3 indicates using the mutated base\
    \ and both the\nupstream and downstream bases. (Default: 1.5)"
  type: long
  inputBinding:
    prefix: --context
- id: in_score_dir
  doc: "Directory containing score information in pickle files\n(Default: None)."
  type: Directory
  inputBinding:
    prefix: --score-dir
- id: in_by_sample
  doc: "Report counts for observed mutations stratified by the\ntumor sample"
  type: boolean
  inputBinding:
    prefix: --by-sample
- id: in_use_unmapped
  doc: "Use mutations that are not mapped to the the single\nreference transcript\
    \ for a gene specified in the bed\nfile indicated by the -b option."
  type: boolean
  inputBinding:
    prefix: --use-unmapped
- id: in_genome
  doc: "Path to the genome fasta file. Required if --use-\nunmapped flag is used.\
    \ (Default: None)"
  type: File
  inputBinding:
    prefix: --genome
- id: in_observed_output
  doc: Output text file of observed results (optional).
  type: File
  inputBinding:
    prefix: --observed-output
- id: in_output
  doc: "Output text file of simulation results\n"
  type: File
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_observed_output
  doc: Output text file of observed results (optional).
  type: File
  outputBinding:
    glob: $(inputs.in_observed_output)
- id: out_output
  doc: "Output text file of simulation results\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- simulate_non_silent_ratio
