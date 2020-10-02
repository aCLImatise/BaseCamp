class: CommandLineTool
id: strling_merge.cwl
inputs:
- id: in_fast_a
  doc: "path to fasta file (required if using CRAM input)\n-w, --window=WINDOW   \
    \     Number of bp within which to search for reads supporting the other side\
    \ of a bound. Estimated from the insert size distribution by default. (default:\
    \ -1)\n-m, --min-support=MIN_SUPPORT\nminimum number of supporting reads for a\
    \ locus to be reported (default: 6)\n-c, --min-clip=MIN_CLIP    minimum number\
    \ of supporting clipped reads for each side of a locus (default: 0)\n-t, --min-clip-total=MIN_CLIP_TOTAL\n\
    minimum total number of supporting clipped reads for a locus (default: 0)\n-q,\
    \ --min-mapq=MIN_MAPQ    minimum mapping quality (does not apply to STR reads)\
    \ (default: 40)\n-l, --bed=BED              Annoated bed file specifying additional\
    \ STR loci to genotype. Format is: chr start stop repeatunit [name]\n-o, --output-prefix=OUTPUT_PREFIX\n\
    prefix for output files. Suffix will be -bounds.txt (default: strling)\n-v, --verbose\n\
    -h, --help                 Show this help\n"
  type: long
  inputBinding:
    prefix: --fasta
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- strling
- merge
