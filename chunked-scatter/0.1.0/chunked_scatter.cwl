class: CommandLineTool
id: chunked_scatter.cwl
inputs:
- id: prefix
  doc: 'The prefix of the ouput files. Output will be named like: <PREFIX><N>.bed,
    in which N is an incrementing number. This option is mandatory.'
  type: string
  inputBinding:
    prefix: --prefix
- id: input
  doc: "The input file, either a bed file or a sequence dict. Which format is used\
    \ is detected by the extension: '.bed' or '.dict'. This option is mandatory."
  type: string
  inputBinding:
    prefix: --input
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
outputs: []
cwlVersion: v1.1
baseCommand:
- chunked-scatter
