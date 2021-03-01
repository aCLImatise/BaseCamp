class: CommandLineTool
id: probabilistic2020_oncogene.cwl
inputs:
- id: in_input
  doc: gene FASTA file from extract_gene_seq.py script
  type: File?
  inputBinding:
    prefix: --input
- id: in_mutations
  doc: "DNA mutations file (MAF file). Columns can be in any\norder, but should contain\
    \ the correct column header\nnames."
  type: File?
  inputBinding:
    prefix: --mutations
- id: in_bed
  doc: BED file annotation of genes
  type: File?
  inputBinding:
    prefix: --bed
- id: in_processes
  doc: "Number of processes to use for parallelization. 0\nindicates using a single\
    \ process without using a\nmultiprocessing pool (more means Faster, default: 0)."
  type: long?
  inputBinding:
    prefix: --processes
- id: in_num_iterations
  doc: "Number of iterations for null model. p-value precision\nincreases with more\
    \ iterations, however this will also\nincrease the run time (Default: 100,000)."
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
- id: in_score_dir
  doc: "Directory containing VEST score information in pickle\nfiles (Default: None)."
  type: Directory?
  inputBinding:
    prefix: --score-dir
- id: in_output_text_file
  doc: Output text file of probabilistic 20/20 results
  type: File?
  inputBinding:
    prefix: --output
- id: in_stop_criteria
  doc: "Number of iterations more significant then the\nobserved statistic to stop\
    \ further computations. This\ndecreases compute time spent in resolving p-values\
    \ for\nnon-significant genes. (Default: 1000)."
  type: long?
  inputBinding:
    prefix: --stop-criteria
- id: in_recurrent
  doc: "Minimum number of mutations at a position for it to be\nconsidered a recurrently\
    \ mutated position (Default:\n3)."
  type: long?
  inputBinding:
    prefix: --recurrent
- id: in_fraction
  doc: "Fraction of total mutations in a gene. This define the\nminimumm number of\
    \ mutations for a position to be\ndefined as recurrently mutated (Defaul: .02)."
  type: long?
  inputBinding:
    prefix: --fraction
- id: in_unique
  doc: "Only keep unique mutations for each tumor sample.\nMutations reported from\
    \ heterogeneous sources may\ncontain duplicates, e.g. a tumor sample was sequenced\n\
    twice."
  type: boolean?
  inputBinding:
    prefix: --unique
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
- id: in_seed
  doc: "Specify the seed for the pseudo random number\ngenerator. By default, the\
    \ seed is randomly chosen.\nThe seed will be used for the monte carlo simulations\n\
    (Default: 101).\n"
  type: long?
  inputBinding:
    prefix: --seed
- id: in_find_evaluates_clustering
  doc: Find statsitically significant oncogene-like genes. Evaluates clustering of
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_text_file
  doc: Output text file of probabilistic 20/20 results
  type: File?
  outputBinding:
    glob: $(inputs.in_output_text_file)
hints: []
cwlVersion: v1.1
baseCommand:
- probabilistic2020
- oncogene
