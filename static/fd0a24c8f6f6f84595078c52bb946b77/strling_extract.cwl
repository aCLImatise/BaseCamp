class: CommandLineTool
id: strling_extract.cwl
inputs:
- id: in_fast_a
  doc: "path to fasta file (required for CRAM)\n-g, --genome-repeats=GENOME_REPEATS\n\
    optional path to genome repeats file. if it does not exist, it will be created\n\
    -p, --proportion-repeat=PROPORTION_REPEAT\nproportion of read that is repetitive\
    \ to be considered as STR (default: 0.8)\n-q, --min-mapq=MIN_MAPQ    minimum mapping\
    \ quality (does not apply to STR reads) (default: 40)\n-v, --verbose\n-h, --help\
    \                 Show this help\n"
  type: long
  inputBinding:
    prefix: --fasta
- id: in_bam
  doc: path to bam file
  type: string
  inputBinding:
    position: 0
- id: in_bin
  doc: path bin to output bin file to be created
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- strling
- extract
