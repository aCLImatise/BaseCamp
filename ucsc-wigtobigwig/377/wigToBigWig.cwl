class: CommandLineTool
id: ../../../wigToBigWig.cwl
inputs:
- id: block_size
  doc: '- Number of items to bundle in r-tree.  Default 256'
  type: string
  inputBinding:
    prefix: -blockSize
- id: items_per_slot
  doc: '- Number of data points bundled at lowest level. Default 1024'
  type: string
  inputBinding:
    prefix: -itemsPerSlot
- id: clip
  doc: '- If set just issue warning messages rather than dying if wig file contains
    items off end of chromosome or chromosomes that are not in the chrom.sizes file.'
  type: boolean
  inputBinding:
    prefix: -clip
- id: unc
  doc: '- If set, do not use compression.'
  type: boolean
  inputBinding:
    prefix: -unc
- id: fixed_summaries
  doc: '- If set, use a predefined sequence of summary levels.'
  type: boolean
  inputBinding:
    prefix: -fixedSummaries
- id: keep_all_chromosomes
  doc: '- If set, store all chromosomes in b-tree.'
  type: boolean
  inputBinding:
    prefix: -keepAllChromosomes
- id: in_do_twig
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: chrom_dot_sizes
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_dot_bw
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- wigToBigWig
