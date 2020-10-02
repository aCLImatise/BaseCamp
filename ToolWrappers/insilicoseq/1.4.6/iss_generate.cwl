class: CommandLineTool
id: iss_generate.cwl
inputs:
- id: in_quiet
  doc: 'Disable info logging. (default: False).'
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_debug
  doc: 'Enable debug logging. (default: False).'
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_seed
  doc: Seed all the random number generators
  type: long
  inputBinding:
    prefix: --seed
- id: in_cpus
  doc: 'number of cpus to use. (default: 2).'
  type: long
  inputBinding:
    prefix: --cpus
- id: in_genomes
  doc: "[<genomes.fasta> ...], -g <genomes.fasta> [<genomes.fasta> ...]\nInput genome(s)\
    \ from where the reads will originate"
  type: string
  inputBinding:
    prefix: --genomes
- id: in_draft
  doc: "[<draft.fasta> ...]\nInput draft genome(s) from where the reads will\noriginate"
  type: string
  inputBinding:
    prefix: --draft
- id: in_n_genomes
  doc: "How many genomes will be used for the simulation. is\nset with --genomes/-g\
    \ or/and --draft to take random\ngenomes from the input multifasta"
  type: long
  inputBinding:
    prefix: --n_genomes
- id: in_ncbi
  doc: "[<str> [<str> ...]], -k [<str> [<str> ...]]\nDownload input genomes from NCBI.\
    \ Requires\n--n_genomes/-u option. Can be bacteria, viruses,\narchaea or a combination\
    \ of the three (space-\nseparated)"
  type: boolean
  inputBinding:
    prefix: --ncbi
- id: in_n_genomes_ncbi
  doc: "[<int> [<int> ...]], -U [<int> [<int> ...]]\nHow many genomes will be downloaded\
    \ from NCBI.\nRequired if --ncbi/-k is set. If more than one kingdom\nis set with\
    \ --ncbi, multiple values are necessary\n(space-separated)."
  type: boolean
  inputBinding:
    prefix: --n_genomes_ncbi
- id: in_abundance
  doc: "abundance distribution (default: lognormal). Can be\nuniform, halfnormal,\
    \ exponential, lognormal or zero-\ninflated-lognormal."
  type: string
  inputBinding:
    prefix: --abundance
- id: in_abundance_file
  doc: "abundance file for coverage calculations (default:\nNone)."
  type: File
  inputBinding:
    prefix: --abundance_file
- id: in_coverage
  doc: 'file containing coverage information (default: None).'
  type: File
  inputBinding:
    prefix: --coverage
- id: in_n_reads
  doc: "Number of reads to generate (default: 1000000). Allows\nsuffixes k, K, m,\
    \ M, g and G (ex 0.5M for 500000)."
  type: long
  inputBinding:
    prefix: --n_reads
- id: in_mode
  doc: "Error model. If not specified, using kernel density\nestimation (default:\
    \ kde). Can be kde, basic or\nperfect"
  type: string
  inputBinding:
    prefix: --mode
- id: in_model
  doc: "Error model file. (default: None). Use HiSeq, NovaSeq\nor MiSeq for a pre-computed\
    \ error model provided with\nthe software, or a file generated with iss model.\
    \ If\nyou do not wish to use a model, use --mode basic or\n--mode perfect. The\
    \ name of the built-in models are\ncase insensitive."
  type: File
  inputBinding:
    prefix: --model
- id: in_gc_bias
  doc: "If set, may fail to sequence reads with abnormal GC\ncontent. (default: False)"
  type: boolean
  inputBinding:
    prefix: --gc_bias
- id: in_compress
  doc: 'Compress the output in gzip format (default: False).'
  type: boolean
  inputBinding:
    prefix: --compress
- id: in_output
  doc: "Output file prefix (Required)\n"
  type: File
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output file prefix (Required)\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- iss
- generate
