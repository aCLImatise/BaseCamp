class: CommandLineTool
id: ../../../strainest_est.cwl
inputs:
- id: quality_thr
  doc: 'base quality threshold  [default: 20]'
  type: long
  inputBinding:
    prefix: --quality-thr
- id: min_depth_percentile
  doc: 'discard positions where the depth of coverage is lower than the MIN_DEPTH_PERCENTILE
    percentile  [default: 10]'
  type: double
  inputBinding:
    prefix: --min-depth-percentile
- id: max_depth_percentile
  doc: 'discard positions where the depth of coverage is higher than the MAX_DEPTH_PERCENTILE
    percentile  [default: 90]'
  type: double
  inputBinding:
    prefix: --max-depth-percentile
- id: min_depth_absolute
  doc: 'discard positions where the depth of coverage is lower than the MIN_DEPTH_ABSOLUTE  [default:
    6]'
  type: long
  inputBinding:
    prefix: --min-depth-absolute
- id: min_depth_base
  doc: 'filter base counts (set to 0) where they are lower then MIN_DEPTH_BASE x DoC
    (applied independently for each allelic position) [default: 0.01]'
  type: double
  inputBinding:
    prefix: --min-depth-base
- id: max_ident_thr
  doc: 'discard genomes with less than MAX_IDENT_THR maximum identity  [default: 0.95]'
  type: double
  inputBinding:
    prefix: --max-ident-thr
- id: threads
  doc: 'number of threads to use in model selection [default: 1]'
  type: long
  inputBinding:
    prefix: --threads
- id: examples
  doc: strainest est snp.dgrp align.bam align -t 4
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- strainest
- est
