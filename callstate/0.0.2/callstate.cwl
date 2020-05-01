#!/usr/bin/env cwl-runner

baseCommand:
- callstate
class: CommandLineTool
cwlVersion: v1.0
id: callstate
inputs:
- doc: ''
  id: bed
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: bam
  inputBinding:
    position: 1
  type: string
- doc: 'Number of BAM decompression threads [default: 4]'
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: The output BED file
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: If a file name is given, per-base depth will be written to this file
  id: base_depth_output
  inputBinding:
    prefix: --base-depth-output
  type: string
- doc: 'The minimum base quality for a base to contribute to QC depth [default: 10]'
  id: min_base_qual
  inputBinding:
    prefix: --min-base-qual
  type: string
- doc: 'The minimum mapping quality of reads to count as QC depth [default: 10]'
  id: min_mapq
  inputBinding:
    prefix: --min-mapq
  type: string
- doc: 'The minimum QC read depth before a read is considered callable [default: 20]'
  id: min_depth
  inputBinding:
    prefix: --min-depth
  type: string
- doc: 'The maximum value of MAPQ before a read is considered as problematic mapped
    read. [default: 1]'
  id: max_low_mapq
  inputBinding:
    prefix: --max-low-mapq
  type: string
- doc: 'The maximum read depth before a locus is considered high coverage [default:
    -1]'
  id: max_depth
  inputBinding:
    prefix: --max-depth
  type: string
- doc: 'Minimum read depth before a locus is considered candidate for poorly mapped
    [default: 10]'
  id: min_depth_low_mapq
  inputBinding:
    prefix: --min-depth-low-mapq
  type: string
- doc: 'If the fraction of low mapping reads exceeds this value, the site is considered
    poorly mapped [default: 0.5]'
  id: low_mapq_frac
  inputBinding:
    prefix: --low-mapq-frac
  type: string
- doc: 'exclude reads with any of the bits in FLAG set [default: 1796]'
  id: flag
  inputBinding:
    prefix: --flag
  type: string
