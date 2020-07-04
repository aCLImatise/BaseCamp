class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/chunked_scatter.cwl
inputs:
- id: prefix
  doc: "The prefix of the ouput files. Output will be named like: <PREFIX><N>.bed,\
    \ in which N is an incrementing number. Default 'scatter-'."
  type: string
  inputBinding:
    prefix: --prefix
- id: split_contigs
  doc: If set, contigs are allowed to be split up over multiple files.
  type: boolean
  inputBinding:
    prefix: --split-contigs
- id: print_paths
  doc: If set prints paths of the output files to STDOUT. This makes the program usable
    in scripts and worfklows.
  type: boolean
  inputBinding:
    prefix: --print-paths
- id: chunk_size
  doc: The size of the chunks. The first chunk in a region or contig will be exactly
    length SIZE, subsequent chunks will SIZE + OVERLAP and the final chunk may be
    anywhere from 0.5 to 1.5 times SIZE plus overlap. If a region (or contig) is smaller
    than SIZE the original regions will be returned. Defaults to 1e6
  type: long
  inputBinding:
    prefix: --chunk-size
- id: minimum_bp_per_file
  doc: The minimum number of bases represented within a single output bed file. If
    an input contig or region is smaller than this MINIMUM_BP_PER_FILE, then the next
    contigs/regions will be placed in the same file untill this minimum is met. Defaults
    to 45e6.
  type: long
  inputBinding:
    prefix: --minimum-bp-per-file
- id: overlap
  doc: The number of bases which each chunk should overlap with the preceding one.
    Defaults to 150.
  type: string
  inputBinding:
    prefix: --overlap
- id: input
  doc: "The input file, either a bed file or a sequence dict. Which format is used\
    \ is detected by the extension: '.bed', '.fai' or '.dict'. This option is mandatory."
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- chunked-scatter
