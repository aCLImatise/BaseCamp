class: CommandLineTool
id: wigToBigWig.cwl
inputs:
- id: in_block_size
  doc: '- Number of items to bundle in r-tree.  Default 256'
  type: long
  inputBinding:
    prefix: -blockSize
- id: in_items_per_slot
  doc: '- Number of data points bundled at lowest level. Default 1024'
  type: long
  inputBinding:
    prefix: -itemsPerSlot
- id: in_clip
  doc: "- If set just issue warning messages rather than dying if wig\nfile contains\
    \ items off end of chromosome or chromosomes\nthat are not in the chrom.sizes\
    \ file."
  type: boolean
  inputBinding:
    prefix: -clip
- id: in_unc
  doc: '- If set, do not use compression.'
  type: boolean
  inputBinding:
    prefix: -unc
- id: in_fixed_summaries
  doc: '- If set, use a predefined sequence of summary levels.'
  type: boolean
  inputBinding:
    prefix: -fixedSummaries
- id: in_keep_all_chromosomes
  doc: '- If set, store all chromosomes in b-tree.'
  type: boolean
  inputBinding:
    prefix: -keepAllChromosomes
- id: in_in_do_twig
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_chrom_dot_sizes
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- wigToBigWig
