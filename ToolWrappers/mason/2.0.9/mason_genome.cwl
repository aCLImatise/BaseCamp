class: CommandLineTool
id: mason_genome.cwl
inputs:
- id: in_version_check
  doc: "Turn this option off to disable version update notifications of the\napplication.\
    \ One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO.\nDefault: 1."
  type: boolean
  inputBinding:
    prefix: --version-check
- id: in_quiet
  doc: Set verbosity to a minimum.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: Enable verbose output.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_very_verbose
  doc: Enable very verbose output.
  type: boolean
  inputBinding:
    prefix: --very-verbose
- id: in_contig_length
  doc: "of INTEGER's\nLength of the contig to simulate. Give one -l value for each\
    \ contig\nto simulate. In range [1..inf]."
  type: long
  inputBinding:
    prefix: --contig-length
- id: in_seed
  doc: 'The seed to use for the random number generator. Default: 0.'
  type: long
  inputBinding:
    prefix: --seed
- id: in_out_file
  doc: "Output file. Valid filetypes are: .sam[.*], .raw[.*], .frn[.*],\n.fq[.*],\
    \ .fna[.*], .ffn[.*], .fastq[.*], .fasta[.*], .faa[.*],\n.fa[.*], and .bam, where\
    \ * is any of the following extensions: gz\nand bgzf for transparent (de)compression."
  type: File
  inputBinding:
    prefix: --out-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_file
  doc: "Output file. Valid filetypes are: .sam[.*], .raw[.*], .frn[.*],\n.fq[.*],\
    \ .fna[.*], .ffn[.*], .fastq[.*], .fasta[.*], .faa[.*],\n.fa[.*], and .bam, where\
    \ * is any of the following extensions: gz\nand bgzf for transparent (de)compression."
  type: File
  outputBinding:
    glob: $(inputs.in_out_file)
cwlVersion: v1.1
baseCommand:
- mason_genome
