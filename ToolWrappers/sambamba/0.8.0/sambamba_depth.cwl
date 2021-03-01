class: CommandLineTool
id: sambamba_depth.cwl
inputs:
- id: in_filter
  doc: "set custom filter for alignments; the default value is\n'mapping_quality >\
    \ 0 and not duplicate and not failed_quality_control'"
  type: long?
  inputBinding:
    prefix: --filter
- id: in_output_file
  doc: output filename (by default /dev/stdout)
  type: File?
  inputBinding:
    prefix: --output-file
- id: in_n_threads
  doc: maximum number of threads to use
  type: long?
  inputBinding:
    prefix: --nthreads
- id: in_min_coverage
  doc: 'minimum mean coverage for output (default: 0 for region/window, 1 for base)'
  type: long?
  inputBinding:
    prefix: --min-coverage
- id: in_max_coverage
  doc: maximum mean coverage for output
  type: long?
  inputBinding:
    prefix: --max-coverage
- id: in_min_base_quality
  doc: don't count bases with lower base quality
  type: long?
  inputBinding:
    prefix: --min-base-quality
- id: in_combined
  doc: output combined statistics for all samples
  type: boolean?
  inputBinding:
    prefix: --combined
- id: in_annotate
  doc: "add additional column of y/n instead of\nskipping records not satisfying the\
    \ criteria"
  type: boolean?
  inputBinding:
    prefix: --annotate
- id: in_fix_mate_overlaps
  doc: detect overlaps of mate reads and handle them on per-base basis
  type: boolean?
  inputBinding:
    prefix: --fix-mate-overlaps
- id: in_regions
  doc: "|REGION\nlist or regions of interest or a single region in form chr:beg-end\
    \ (optional)"
  type: File?
  inputBinding:
    prefix: --regions
- id: in_report_zero_coverage
  doc: "(DEPRECATED, use --min-coverage=0 instead)\ndon't skip zero coverage bases"
  type: boolean?
  inputBinding:
    prefix: --report-zero-coverage
- id: in_cov_threshold
  doc: "multiple thresholds can be provided,\nfor each one an extra column will be\
    \ added,\nthe percentage of bases in the region\nwhere coverage is more than this\
    \ value"
  type: string?
  inputBinding:
    prefix: --cov-threshold
- id: in_window_size
  doc: breadth of the window, in bp (required)
  type: long?
  inputBinding:
    prefix: --window-size
- id: in_overlap
  doc: overlap of successive windows, in bp (default is 0)
  type: long?
  inputBinding:
    prefix: --overlap
- id: in_samba_mba_depth
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_region_vertical_line_window_vertical_line_base
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_input_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: output filename (by default /dev/stdout)
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/sambamba:0.8.0--h984e79f_0
cwlVersion: v1.1
baseCommand:
- sambamba
- depth
