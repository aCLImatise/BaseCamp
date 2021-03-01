class: CommandLineTool
id: mut_annotate.cwl
inputs:
- id: in_log_level
  doc: "Write a log file (--log-level=DEBUG for debug mode,\n--log-level=INFO for\
    \ info mode)"
  type: File?
  inputBinding:
    prefix: --log-level
- id: in_log
  doc: Path to log file. (accepts "stdout")
  type: File?
  inputBinding:
    prefix: --log
- id: in_verbose
  doc: Flag for more verbose log output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_input
  doc: gene FASTA file from extract_gene_seq script
  type: File?
  inputBinding:
    prefix: --input
- id: in_mutations
  doc: DNA mutations file (MAF file)
  type: File?
  inputBinding:
    prefix: --mutations
- id: in_bed
  doc: BED file annotation of genes
  type: File?
  inputBinding:
    prefix: --bed
- id: in_score_dir
  doc: "Directory containing pre-compute score information in\nfor VEST and evolutionary\
    \ conservation in pickle\nformat (Default: None)."
  type: Directory?
  inputBinding:
    prefix: --score-dir
- id: in_processes
  doc: "Number of processes to use. 0 indicates using a single\nprocess without using\
    \ a multiprocessing pool (more\nmeans Faster, default: 0)."
  type: long?
  inputBinding:
    prefix: --processes
- id: in_num_iterations
  doc: "Number of iterations for null model simulations. If\nzero is specified then\
    \ output represents a result from\nactually observed mutations (provided by -m\n\
    parameter), otherwise results will be from simulated\nmutations. (Default: 0)."
  type: long?
  inputBinding:
    prefix: --num-iterations
- id: in_context
  doc: "Number of DNA bases to use as context. 0 indicates no\ncontext. 1 indicates\
    \ only use the mutated base. 1.5\nindicates using the base context used in CHASM\
    \ (http:/\n/wiki.chasmsoftware.org/index.php/CHASM_Overview). 2\nindicates using\
    \ the mutated base and the upstream\nbase. 3 indicates using the mutated base\
    \ and both the\nupstream and downstream bases. (Default: 1.5)"
  type: long?
  inputBinding:
    prefix: --context
- id: in_summary
  doc: "Flag for saving results as summarized features used\n(Default: True)."
  type: boolean?
  inputBinding:
    prefix: --summary
- id: in_maf
  doc: "Flag for saving results in MAF format (Default:\nFalse)."
  type: boolean?
  inputBinding:
    prefix: --maf
- id: in_use_unmapped
  doc: "Use mutations that are not mapped to the the single\nreference transcript\
    \ for a gene specified in the bed\nfile indicated by the -b option."
  type: boolean?
  inputBinding:
    prefix: --use-unmapped
- id: in_genome
  doc: "Path to the genome fasta file. Required if --use-\nunmapped flag is used.\
    \ (Default: None)"
  type: File?
  inputBinding:
    prefix: --genome
- id: in_recurrent
  doc: "Minimum number of mutations at a position for it to be\nconsidered a recurrently\
    \ mutated position (Default:\n3)."
  type: long?
  inputBinding:
    prefix: --recurrent
- id: in_fraction
  doc: "Fraction of total mutations in a gene. This define the\nminimumm number of\
    \ mutations for a position to be\ndefined as recurrently mutated (Default: .02)."
  type: long?
  inputBinding:
    prefix: --fraction
- id: in_unique
  doc: "Only keep unique mutations for each tumor\nsample.Mutations reproted from\
    \ heterogeneous sources\nmay contain duplicates, e.g. a tumor sample was\nsequenced\
    \ twice."
  type: boolean?
  inputBinding:
    prefix: --unique
- id: in_drop_silent
  doc: "Drop silent mutations in simulations. Useful if\nprovided mutations don't\
    \ include silent mutations"
  type: boolean?
  inputBinding:
    prefix: --drop-silent
- id: in_restrict_genes
  doc: "Important option for gene panels. Restrict simulated\nindels to only occur\
    \ within the same set of genes as\nprovied in the mutation file."
  type: boolean?
  inputBinding:
    prefix: --restrict-genes
- id: in_seed
  doc: "Specify the seed for the pseudo random number\ngenerator. By default, the\
    \ seed is randomly chosen\nbased. The seed will be used for the monte carlo\n\
    simulations (Default: 101)."
  type: long?
  inputBinding:
    prefix: --seed
- id: in_output
  doc: "Output text file of results\n"
  type: File?
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output text file of results\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- mut_annotate
