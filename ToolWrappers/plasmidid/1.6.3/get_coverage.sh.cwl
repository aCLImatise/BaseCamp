class: CommandLineTool
id: get_coverage.sh.cwl
inputs:
- id: in_file_sorted_bam
  doc: "file in sorted BAM format\n-o output directory (optional)\n-d database to\
    \ extract length. Fasta file used to map against\n-m max depth reported (default\
    \ 500)\n-p reports genome coverage for all positions in BEDGRAPH format includig\
    \ 0 positions.\nDefault option is bedtools genomecov that needs the reference\
    \ genome\n-s sample name\n-g group name (optional). If unset, samples will be\
    \ gathered in NO_GROUP group\n-v version\n-h display usage message"
  type: long
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- get_coverage.sh
