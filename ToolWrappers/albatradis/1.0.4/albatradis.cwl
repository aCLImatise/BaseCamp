class: CommandLineTool
id: albatradis.cwl
inputs:
- id: in_span_gaps
  doc: "Span a gap if it is this multiple of a window size\n(default: 1)"
  type: long
  inputBinding:
    prefix: --span_gaps
- id: in_iterations
  doc: 'No. of times to rescan (default: 1)'
  type: long
  inputBinding:
    prefix: --iterations
- id: in_minimum_block
  doc: "Minimum number of reads which must be in 1 block in\ncomparison (default:\
    \ 100)"
  type: long
  inputBinding:
    prefix: --minimum_block
- id: in_minimum_log_fc
  doc: 'Minimum log fold change +/- (default: 1)'
  type: long
  inputBinding:
    prefix: --minimum_logfc
- id: in_minimum_log_cpm
  doc: 'Minimum log counts per million +/- (default: 8.0)'
  type: double
  inputBinding:
    prefix: --minimum_logcpm
- id: in_minimum_threshold
  doc: "Only include insert sites with this number or greater\ninsertions (default:\
    \ 5)"
  type: long
  inputBinding:
    prefix: --minimum_threshold
- id: in_minimum_proportion_insertions
  doc: "If the proportion of insertions is too low compared to\ncontrol, dont call\
    \ decreased insertions below this\nlevel (default: 0.1)"
  type: double
  inputBinding:
    prefix: --minimum_proportion_insertions
- id: in_dont_normalise_plots
  doc: 'Dont normalise input plots (default: False)'
  type: boolean
  inputBinding:
    prefix: --dont_normalise_plots
- id: in_prefix
  doc: 'Output directory prefix (default: output)'
  type: Directory
  inputBinding:
    prefix: --prefix
- id: in_p_value
  doc: "Dont report anything above this p-value (default:\n0.05)"
  type: double
  inputBinding:
    prefix: --pvalue
- id: in_q_value
  doc: "Dont report anything above this q-value (default:\n0.05)"
  type: double
  inputBinding:
    prefix: --qvalue
- id: in_strict_signal
  doc: "A result must be present in the combined plots to be\nreturned (default: False)"
  type: boolean
  inputBinding:
    prefix: --strict_signal
- id: in_use_annotation
  doc: "Use the reference annotation rather than a sliding\nwindow (default: False)"
  type: boolean
  inputBinding:
    prefix: --use_annotation
- id: in_prime_feature_size
  doc: "Feature size when adding 5/3 prime block when\n--use_annotation (default:\
    \ 198)"
  type: long
  inputBinding:
    prefix: --prime_feature_size
- id: in_window_interval
  doc: 'Window interval (default: 25)'
  type: long
  inputBinding:
    prefix: --window_interval
- id: in_window_size
  doc: 'Window size (default: 100)'
  type: long
  inputBinding:
    prefix: --window_size
- id: in_verbose
  doc: "Print out more information about the analysis while it\nruns (default: False)"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_debug
  doc: 'Turn on debugging (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_embl_file
  doc: Annotation file in EMBL format
  type: string
  inputBinding:
    position: 0
- id: in_plot_files
  doc: "Input plot files (optionally gzipped). There must be\nan equal number of condition\
    \ and control files"
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_prefix
  doc: 'Output directory prefix (default: output)'
  type: Directory
  outputBinding:
    glob: $(inputs.in_prefix)
cwlVersion: v1.1
baseCommand:
- albatradis
