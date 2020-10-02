class: CommandLineTool
id: castats.cwl
inputs:
- id: in_min_qual
  doc: "<n>   Minimum quality value threshhold to report as bad\nquality (default\
    \ 20)"
  type: boolean
  inputBinding:
    prefix: -minqual
- id: in_min_contig
  doc: "Minimum contig size to report as a big contig\n(default 10000)"
  type: long
  inputBinding:
    prefix: -mincontig
- id: in_genome_size_used
  doc: "Genome size used in the calculation of N50 numbers\n(default: TotalBasesInContigs)"
  type: long
  inputBinding:
    prefix: -g
- id: in_ca_stats
  doc: <prefix>.asm  [options]
  type: string
  inputBinding:
    position: 0
- id: in_prefix_dot_asm
  doc: The Celera .asm file
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- castats
