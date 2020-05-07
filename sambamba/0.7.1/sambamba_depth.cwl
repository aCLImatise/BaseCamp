class: CommandLineTool
id: sambamba_depth.cwl
inputs:
- id: filter
  doc: set custom filter for alignments; the default value is 'mapping_quality > 0
    and not duplicate and not failed_quality_control'
  type: string
  inputBinding:
    prefix: --filter
- id: output_file
  doc: output filename (by default /dev/stdout)
  type: File
  inputBinding:
    prefix: --output-file
- id: n_threads
  doc: maximum number of threads to use
  type: string
  inputBinding:
    prefix: --nthreads
- id: min_coverage
  doc: 'minimum mean coverage for output (default: 0 for region/window, 1 for base)'
  type: long
  inputBinding:
    prefix: --min-coverage
- id: max_coverage
  doc: maximum mean coverage for output
  type: long
  inputBinding:
    prefix: --max-coverage
- id: min_base_quality
  doc: don't count bases with lower base quality
  type: string
  inputBinding:
    prefix: --min-base-quality
- id: combined
  doc: output combined statistics for all samples
  type: boolean
  inputBinding:
    prefix: --combined
- id: annotate
  doc: add additional column of y/n instead of skipping records not satisfying the
    criteria
  type: boolean
  inputBinding:
    prefix: --annotate
- id: fix_mate_overlaps
  doc: detect overlaps of mate reads and handle them on per-base basis
  type: boolean
  inputBinding:
    prefix: --fix-mate-overlaps
- id: cov_threshold
  doc: multiple thresholds can be provided, for each one an extra column will be added,
    the percentage of bases in the region where coverage is more than this value
  type: string
  inputBinding:
    prefix: --cov-threshold
- id: window_size
  doc: breadth of the window, in bp (required)
  type: string
  inputBinding:
    prefix: --window-size
- id: overlap
  doc: overlap of successive windows, in bp (default is 0)
  type: string
  inputBinding:
    prefix: --overlap
- id: cov_threshold
  doc: same meaning as in 'region' subcommand
  type: string
  inputBinding:
    prefix: --cov-threshold
outputs: []
cwlVersion: v1.1
baseCommand:
- sambamba
- depth
