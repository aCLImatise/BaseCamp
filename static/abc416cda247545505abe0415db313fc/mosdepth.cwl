class: CommandLineTool
id: mosdepth.cwl
inputs:
- id: prefix
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bam_or_cram
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: threads
  doc: 'number of BAM decompression threads [default: 0]'
  type: string
  inputBinding:
    prefix: --threads
- id: chrom
  doc: chromosome to restrict depth calculation.
  type: string
  inputBinding:
    prefix: --chrom
- id: by
  doc: '<bed|window>       optional BED file or (integer) window-sizes. '
  type: boolean
  inputBinding:
    prefix: --by
- id: no_per_base
  doc: dont output per-base depth. skipping this output will speed execution substantially.
    prefer quantized or thresholded values if possible.
  type: boolean
  inputBinding:
    prefix: --no-per-base
- id: fast_a
  doc: 'fasta file for use with CRAM files [default: ].'
  type: string
  inputBinding:
    prefix: --fasta
- id: flag
  doc: 'exclude reads with any of the bits in FLAG set [default: 1796]'
  type: string
  inputBinding:
    prefix: --flag
- id: include_flag
  doc: 'only include reads with any of the bits in FLAG set. default is unset. [default:
    0]'
  type: string
  inputBinding:
    prefix: --include-flag
- id: fast_mode
  doc: dont look at internal cigar operations or correct mate overlaps (recommended
    for most use-cases).
  type: boolean
  inputBinding:
    prefix: --fast-mode
- id: quantize
  doc: write quantized output see docs for description.
  type: string
  inputBinding:
    prefix: --quantize
- id: mapq
  doc: 'mapping quality threshold. reads with a quality less than this value are ignored
    [default: 0]'
  type: string
  inputBinding:
    prefix: --mapq
- id: thresholds
  doc: for each interval in --by, write number of bases covered by at least threshold
    bases. Specify multiple integer values separated by ','.
  type: string
  inputBinding:
    prefix: --thresholds
- id: use_median
  doc: output median of each region (in --by) instead of mean.
  type: boolean
  inputBinding:
    prefix: --use-median
- id: read_groups
  doc: only calculate depth for these comma-separated read groups IDs.
  type: string
  inputBinding:
    prefix: --read-groups
outputs: []
cwlVersion: v1.1
baseCommand:
- mosdepth
