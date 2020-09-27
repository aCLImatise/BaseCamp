class: CommandLineTool
id: mosdepth.cwl
inputs:
- id: in_threads
  doc: 'number of BAM decompression threads [default: 0]'
  type: long
  inputBinding:
    prefix: --threads
- id: in_chrom
  doc: chromosome to restrict depth calculation.
  type: string
  inputBinding:
    prefix: --chrom
- id: in_by
  doc: optional BED file or (integer) window-sizes.
  type: long
  inputBinding:
    prefix: --by
- id: in_no_per_base
  doc: "dont output per-base depth. skipping this output will speed execution\nsubstantially.\
    \ prefer quantized or thresholded values if possible."
  type: boolean
  inputBinding:
    prefix: --no-per-base
- id: in_fast_a
  doc: 'fasta file for use with CRAM files [default: ].'
  type: File
  inputBinding:
    prefix: --fasta
- id: in_flag
  doc: 'exclude reads with any of the bits in FLAG set [default: 1796]'
  type: long
  inputBinding:
    prefix: --flag
- id: in_include_flag
  doc: 'only include reads with any of the bits in FLAG set. default is unset. [default:
    0]'
  type: long
  inputBinding:
    prefix: --include-flag
- id: in_fast_mode
  doc: dont look at internal cigar operations or correct mate overlaps (recommended
    for most use-cases).
  type: boolean
  inputBinding:
    prefix: --fast-mode
- id: in_quantize
  doc: write quantized output see docs for description.
  type: string
  inputBinding:
    prefix: --quantize
- id: in_mapq
  doc: 'mapping quality threshold. reads with a quality less than this value are ignored
    [default: 0]'
  type: long
  inputBinding:
    prefix: --mapq
- id: in_thresholds
  doc: "for each interval in --by, write number of bases covered by at\nleast threshold\
    \ bases. Specify multiple integer values separated\nby ','."
  type: long
  inputBinding:
    prefix: --thresholds
- id: in_use_median
  doc: output median of each region (in --by) instead of mean.
  type: boolean
  inputBinding:
    prefix: --use-median
- id: in_read_groups
  doc: only calculate depth for these comma-separated read groups IDs.
  type: string
  inputBinding:
    prefix: --read-groups
- id: in_prefix
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_bam_or_cram
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
- mosdepth
