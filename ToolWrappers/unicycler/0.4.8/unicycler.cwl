class: CommandLineTool
id: unicycler.cwl
inputs:
- id: in_help_all
  doc: Show a help message with all program options
  type: boolean
  inputBinding:
    prefix: --help_all
- id: in_short_one
  doc: "FASTQ file of first short reads in each pair\n(required)"
  type: long
  inputBinding:
    prefix: --short1
- id: in_short_two
  doc: "FASTQ file of second short reads in each pair\n(required)"
  type: long
  inputBinding:
    prefix: --short2
- id: in_unpaired
  doc: FASTQ file of unpaired short reads (optional)
  type: File
  inputBinding:
    prefix: --unpaired
- id: in_long
  doc: FASTQ or FASTA file of long reads (optional)
  type: File
  inputBinding:
    prefix: --long
- id: in_out
  doc: Output directory (required)
  type: Directory
  inputBinding:
    prefix: --out
- id: in_verbosity
  doc: "Level of stdout and log file information (default: 1)\n0 = no stdout, 1 =\
    \ basic progress indicators,\n2 = extra info, 3 = debugging info"
  type: File
  inputBinding:
    prefix: --verbosity
- id: in_min_fast_a_length
  doc: "Exclude contigs from the FASTA file which are\nshorter than this length (default:\
    \ 100)"
  type: long
  inputBinding:
    prefix: --min_fasta_length
- id: in_keep
  doc: "Level of file retention (default: 1)\n0 = only keep final files: assembly\
    \ (FASTA,\nGFA and log),\n1 = also save graphs at main checkpoints,\n2 = also\
    \ keep SAM (enables fast rerun in different mode),\n3 = keep all temp files and\
    \ save all graphs (for debugging)"
  type: File
  inputBinding:
    prefix: --keep
- id: in_vcf
  doc: "Produce a VCF by mapping the short reads to the\nfinal assembly (experimental,\
    \ default: do not\nproduce a vcf file)"
  type: boolean
  inputBinding:
    prefix: --vcf
- id: in_threads
  doc: 'Number of threads used (default: 8)'
  type: long
  inputBinding:
    prefix: --threads
- id: in_mode
  doc: "Bridging mode (default: normal)\nconservative = smaller contigs, lowest misassembly\n\
    rate\nnormal = moderate contig size and misassembly rate\nbold = longest contigs,\
    \ higher misassembly rate"
  type: string
  inputBinding:
    prefix: --mode
- id: in_linear_seqs
  doc: "The expected number of linear (i.e. non-circular)\nsequences in the underlying\
    \ sequence (default: 0)\n"
  type: long
  inputBinding:
    prefix: --linear_seqs
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output directory (required)
  type: Directory
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- unicycler
