class: CommandLineTool
id: unicycler.cwl
inputs:
- id: help_all
  doc: Show a help message with all program options
  type: boolean
  inputBinding:
    prefix: --help_all
- id: unpaired
  doc: FASTQ file of unpaired short reads (optional)
  type: string
  inputBinding:
    prefix: --unpaired
- id: long
  doc: FASTQ or FASTA file of long reads (optional)
  type: string
  inputBinding:
    prefix: --long
- id: out
  doc: Output directory (required)
  type: string
  inputBinding:
    prefix: --out
- id: verbosity
  doc: 'Level of stdout and log file information (default: 1) 0 = no stdout, 1 = basic
    progress indicators, 2 = extra info, 3 = debugging info'
  type: string
  inputBinding:
    prefix: --verbosity
- id: min_fast_a_length
  doc: 'Exclude contigs from the FASTA file which are shorter than this length (default:
    100)'
  type: long
  inputBinding:
    prefix: --min_fasta_length
- id: keep
  doc: 'Level of file retention (default: 1) 0 = only keep final files: assembly (FASTA,
    GFA and log), 1 = also save graphs at main checkpoints, 2 = also keep SAM (enables
    fast rerun in different mode), 3 = keep all temp files and save all graphs (for
    debugging)'
  type: string
  inputBinding:
    prefix: --keep
- id: vcf
  doc: 'Produce a VCF by mapping the short reads to the final assembly (experimental,
    default: do not produce a vcf file)'
  type: boolean
  inputBinding:
    prefix: --vcf
- id: threads
  doc: 'Number of threads used (default: 8)'
  type: string
  inputBinding:
    prefix: --threads
- id: mode
  doc: 'Bridging mode (default: normal) conservative = smaller contigs, lowest misassembly
    rate normal = moderate contig size and misassembly rate bold = longest contigs,
    higher misassembly rate'
  type: string
  inputBinding:
    prefix: --mode
- id: linear_seqs
  doc: 'The expected number of linear (i.e. non-circular) sequences in the underlying
    sequence (default: 0)'
  type: string
  inputBinding:
    prefix: --linear_seqs
outputs: []
cwlVersion: v1.1
baseCommand:
- unicycler
