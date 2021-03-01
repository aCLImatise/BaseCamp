class: CommandLineTool
id: scatter_regions.cwl
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
- id: in_scatter_size
  doc: "The maximum size for the regions over which to\nscatter. If contigs are not\
    \ split, and a contig is\nbigger than the maximum size, the contig will be\nplaced\
    \ in its own file. Default: 1000000000.\n"
  type: long?
  inputBinding:
    prefix: --scatter-size
- id: in_input
  doc: "The input file. The format is detected by the\nextension. Supported extensions\
    \ are: '.bed', '.dict',\n'.fai', '.vcf', '.vcf.gz', '.bcf'."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- scatter-regions
