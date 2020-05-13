class: CommandLineTool
id: callstate.cwl
inputs:
- id: bed
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bam
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: threads
  doc: 'Number of BAM decompression threads [default: 4]'
  type: string
  inputBinding:
    prefix: --threads
- id: output
  doc: The output BED file
  type: string
  inputBinding:
    prefix: --output
- id: base_depth_output
  doc: If a file name is given, per-base depth will be written to this file
  type: string
  inputBinding:
    prefix: --base-depth-output
- id: min_base_qual
  doc: 'The minimum base quality for a base to contribute to QC depth [default: 10]'
  type: string
  inputBinding:
    prefix: --min-base-qual
- id: min_mapq
  doc: 'The minimum mapping quality of reads to count as QC depth [default: 10]'
  type: string
  inputBinding:
    prefix: --min-mapq
- id: min_depth
  doc: 'The minimum QC read depth before a read is considered callable [default: 20]'
  type: string
  inputBinding:
    prefix: --min-depth
- id: max_low_mapq
  doc: 'The maximum value of MAPQ before a read is considered as problematic mapped
    read. [default: 1]'
  type: string
  inputBinding:
    prefix: --max-low-mapq
- id: max_depth
  doc: 'The maximum read depth before a locus is considered high coverage [default:
    -1]'
  type: string
  inputBinding:
    prefix: --max-depth
- id: min_depth_low_mapq
  doc: 'Minimum read depth before a locus is considered candidate for poorly mapped
    [default: 10]'
  type: string
  inputBinding:
    prefix: --min-depth-low-mapq
- id: low_mapq_frac
  doc: 'If the fraction of low mapping reads exceeds this value, the site is considered
    poorly mapped [default: 0.5]'
  type: string
  inputBinding:
    prefix: --low-mapq-frac
- id: flag
  doc: 'exclude reads with any of the bits in FLAG set [default: 1796]'
  type: string
  inputBinding:
    prefix: --flag
outputs: []
cwlVersion: v1.1
baseCommand:
- callstate
