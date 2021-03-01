class: CommandLineTool
id: chunked_scatter.cwl
inputs:
- id: in_prefix
  doc: "The prefix of the ouput files. Output will be named\nlike: <PREFIX><N>.bed,\
    \ in which N is an incrementing\nnumber. Default 'scatter-'."
  type: long?
  inputBinding:
    prefix: --prefix
- id: in_split_contigs
  doc: "If set, contigs are allowed to be split up over\nmultiple files."
  type: boolean?
  inputBinding:
    prefix: --split-contigs
- id: in_print_paths
  doc: "If set prints paths of the output files to STDOUT.\nThis makes the program\
    \ usable in scripts and\nworfklows."
  type: boolean?
  inputBinding:
    prefix: --print-paths
- id: in_chunk_size
  doc: "The size of the chunks. The first chunk in a region or\ncontig will be exactly\
    \ length SIZE, subsequent chunks\nwill SIZE + OVERLAP and the final chunk may\
    \ be\nanywhere from 0.5 to 1.5 times SIZE plus overlap. If a\nregion (or contig)\
    \ is smaller than SIZE the original\nregions will be returned. Defaults to 1e6"
  type: long?
  inputBinding:
    prefix: --chunk-size
- id: in_minimum_bp_per_file
  doc: "The minimum number of bases represented within a\nsingle output bed file.\
    \ If an input contig or region\nis smaller than this MINIMUM_BP_PER_FILE, then\
    \ the\nnext contigs/regions will be placed in the same file\nuntill this minimum\
    \ is met. Defaults to 45e6."
  type: File?
  inputBinding:
    prefix: --minimum-bp-per-file
- id: in_overlap
  doc: "The number of bases which each chunk should overlap\nwith the preceding one.\
    \ Defaults to 150.\n"
  type: long?
  inputBinding:
    prefix: --overlap
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- chunked-scatter
