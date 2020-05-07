class: CommandLineTool
id: mut_annotate.cwl
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
- id: verbose
  doc: Flag for more verbose log output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: input
  doc: gene FASTA file from extract_gene_seq script
  type: string
  inputBinding:
    prefix: --input
- id: mutations
  doc: DNA mutations file (MAF file)
  type: string
  inputBinding:
    prefix: --mutations
- id: bed
  doc: BED file annotation of genes
  type: string
  inputBinding:
    prefix: --bed
- id: score_dir
  doc: 'Directory containing pre-compute score information in for VEST and evolutionary
    conservation in pickle format (Default: None).'
  type: string
  inputBinding:
    prefix: --score-dir
- id: processes
  doc: 'Number of processes to use. 0 indicates using a single process without using
    a multiprocessing pool (more means Faster, default: 0).'
  type: string
  inputBinding:
    prefix: --processes
- id: num_iterations
  doc: 'Number of iterations for null model simulations. If zero is specified then
    output represents a result from actually observed mutations (provided by -m parameter),
    otherwise results will be from simulated mutations. (Default: 0).'
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
- id: summary
  doc: 'Flag for saving results as summarized features used (Default: True).'
  type: boolean
  inputBinding:
    prefix: --summary
- id: maf
  doc: 'Flag for saving results in MAF format (Default: False).'
  type: boolean
  inputBinding:
    prefix: --maf
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
- id: recurrent
  doc: 'Minimum number of mutations at a position for it to be considered a recurrently
    mutated position (Default: 3).'
  type: string
  inputBinding:
    prefix: --recurrent
- id: fraction
  doc: 'Fraction of total mutations in a gene. This define the minimumm number of
    mutations for a position to be defined as recurrently mutated (Default: .02).'
  type: string
  inputBinding:
    prefix: --fraction
- id: unique
  doc: Only keep unique mutations for each tumor sample.Mutations reproted from heterogeneous
    sources may contain duplicates, e.g. a tumor sample was sequenced twice.
  type: boolean
  inputBinding:
    prefix: --unique
- id: drop_silent
  doc: Drop silent mutations in simulations. Useful if provided mutations don't include
    silent mutations
  type: boolean
  inputBinding:
    prefix: --drop-silent
- id: restrict_genes
  doc: Important option for gene panels. Restrict simulated indels to only occur within
    the same set of genes as provied in the mutation file.
  type: boolean
  inputBinding:
    prefix: --restrict-genes
- id: seed
  doc: 'Specify the seed for the pseudo random number generator. By default, the seed
    is randomly chosen based. The seed will be used for the monte carlo simulations
    (Default: 101).'
  type: string
  inputBinding:
    prefix: --seed
- id: output
  doc: Output text file of results
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- mut_annotate
