class: CommandLineTool
id: probabilistic2020_oncogene.cwl
inputs:
- id: input
  doc: gene FASTA file from extract_gene_seq.py script
  type: string
  inputBinding:
    prefix: --input
- id: mutations
  doc: DNA mutations file (MAF file). Columns can be in any order, but should contain
    the correct column header names.
  type: string
  inputBinding:
    prefix: --mutations
- id: bed
  doc: BED file annotation of genes
  type: string
  inputBinding:
    prefix: --bed
- id: processes
  doc: 'Number of processes to use for parallelization. 0 indicates using a single
    process without using a multiprocessing pool (more means Faster, default: 0).'
  type: string
  inputBinding:
    prefix: --processes
- id: num_iterations
  doc: 'Number of iterations for null model. p-value precision increases with more
    iterations, however this will also increase the run time (Default: 100,000).'
  type: string
  inputBinding:
    prefix: --num-iterations
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
  doc: 'Directory containing VEST score information in pickle files (Default: None).'
  type: string
  inputBinding:
    prefix: --score-dir
- id: output
  doc: Output text file of probabilistic 20/20 results
  type: string
  inputBinding:
    prefix: --output
- id: stop_criteria
  doc: 'Number of iterations more significant then the observed statistic to stop
    further computations. This decreases compute time spent in resolving p-values
    for non-significant genes. (Default: 1000).'
  type: string
  inputBinding:
    prefix: --stop-criteria
- id: recurrent
  doc: 'Minimum number of mutations at a position for it to be considered a recurrently
    mutated position (Default: 3).'
  type: string
  inputBinding:
    prefix: --recurrent
- id: fraction
  doc: 'Fraction of total mutations in a gene. This define the minimumm number of
    mutations for a position to be defined as recurrently mutated (Defaul: .02).'
  type: string
  inputBinding:
    prefix: --fraction
- id: unique
  doc: Only keep unique mutations for each tumor sample. Mutations reported from heterogeneous
    sources may contain duplicates, e.g. a tumor sample was sequenced twice.
  type: boolean
  inputBinding:
    prefix: --unique
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
- id: seed
  doc: 'Specify the seed for the pseudo random number generator. By default, the seed
    is randomly chosen. The seed will be used for the monte carlo simulations (Default:
    101).'
  type: string
  inputBinding:
    prefix: --seed
outputs: []
cwlVersion: v1.1
baseCommand:
- probabilistic2020
- oncogene
