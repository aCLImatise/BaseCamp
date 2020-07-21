class: CommandLineTool
id: ../../../scatter_regions.cwl
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
- id: scatter_size
  doc: 'How large the regions over which to scatter should be. Default: 1000000000.'
  type: string
  inputBinding:
    prefix: --scatter-size
- id: input
  doc: "The input file, either a bed file or a sequence dict. Which format is used\
    \ is detected by the extension: '.bed', '.fai' or '.dict'. This option is mandatory."
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- scatter-regions
