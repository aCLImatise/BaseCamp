class: CommandLineTool
id: wigToBigWig.cwl
inputs:
- id: in_wig
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: chrom_sizes
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_bw
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: block_size
  doc: items to bundle in r-tree.  Default 256
  type: string
  inputBinding:
    prefix: -blockSize
- id: items_per_slot
  doc: data points bundled at lowest level. Default 1024
  type: string
  inputBinding:
    prefix: -itemsPerSlot
- id: clip
  doc: just issue warning messages rather than dying if wig file contains items off
    end of chromosome or chromosomes that are not in the chrom.sizes file.
  type: string
  inputBinding:
    prefix: -clip
- id: unc
  doc: ', do not use compression.'
  type: string
  inputBinding:
    prefix: -unc
- id: fixed_summaries
  doc: ', use a predefined sequence of summary levels.'
  type: string
  inputBinding:
    prefix: -fixedSummaries
- id: keep_all_chromosomes
  doc: ', store all chromosomes in b-tree.'
  type: string
  inputBinding:
    prefix: -keepAllChromosomes
outputs: []
cwlVersion: v1.1
baseCommand:
- wigToBigWig
