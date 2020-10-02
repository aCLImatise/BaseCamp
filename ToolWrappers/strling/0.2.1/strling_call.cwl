class: CommandLineTool
id: strling_call.cwl
inputs:
- id: in_fast_a
  doc: "path to fasta file\n-m, --min-support=MIN_SUPPORT\nminimum number of supporting\
    \ reads for a locus to be reported (default: 6)\n-c, --min-clip=MIN_CLIP    minimum\
    \ number of supporting clipped reads for each side of a locus (default: 0)\n-t,\
    \ --min-clip-total=MIN_CLIP_TOTAL\nminimum total number of supporting clipped\
    \ reads for a locus (default: 0)\n-q, --min-mapq=MIN_MAPQ    minimum mapping quality\
    \ (does not apply to STR reads) (default: 40)\n-l, --loci=LOCI            Annoated\
    \ bed file specifying additional STR loci to genotype. Format is: chr start stop\
    \ repeatunit [name]\n-b, --bounds=BOUNDS        STRling -bounds.txt file (usually\
    \ produced by strling merge) specifying additional STR loci to genotype.\n-o,\
    \ --output-prefix=OUTPUT_PREFIX\nprefix for output files (default: strling)\n\
    -v, --verbose\n-h, --help                 Show this help\n"
  type: long
  inputBinding:
    prefix: --fasta
- id: in_bam
  doc: path to bam file
  type: string
  inputBinding:
    position: 0
- id: in_bin
  doc: bin file previously created by `strling extract`
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
- call
