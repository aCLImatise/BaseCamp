class: CommandLineTool
id: strainest_est.cwl
inputs:
- id: in_quality_thr
  doc: 'base quality threshold  [default: 20]'
  type: long
  inputBinding:
    prefix: --quality-thr
- id: in_min_depth_percentile
  doc: "discard positions where the depth of\ncoverage is lower than the\nMIN_DEPTH_PERCENTILE\
    \ percentile  [default:\n10]"
  type: double
  inputBinding:
    prefix: --min-depth-percentile
- id: in_max_depth_percentile
  doc: "discard positions where the depth of\ncoverage is higher than the\nMAX_DEPTH_PERCENTILE\
    \ percentile  [default:\n90]"
  type: double
  inputBinding:
    prefix: --max-depth-percentile
- id: in_min_depth_absolute
  doc: "discard positions where the depth of\ncoverage is lower than the\nMIN_DEPTH_ABSOLUTE\
    \  [default: 6]"
  type: long
  inputBinding:
    prefix: --min-depth-absolute
- id: in_min_depth_base
  doc: "filter base counts (set to 0) where they are\nlower then MIN_DEPTH_BASE x\
    \ DoC (applied\nindependently for each allelic position)\n[default: 0.01]"
  type: double
  inputBinding:
    prefix: --min-depth-base
- id: in_max_ident_thr
  doc: "discard genomes with less than MAX_IDENT_THR\nmaximum identity  [default:\
    \ 0.95]"
  type: double
  inputBinding:
    prefix: --max-ident-thr
- id: in_threads
  doc: "number of threads to use in model selection\n[default: 1]"
  type: long
  inputBinding:
    prefix: --threads
- id: in_indexed_dot
  doc: "EXAMPLES\nstrainest est snp.dgrp align.bam align -t 4"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- strainest
- est
