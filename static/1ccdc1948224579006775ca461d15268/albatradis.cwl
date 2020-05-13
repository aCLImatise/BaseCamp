class: CommandLineTool
id: albatradis.cwl
inputs:
- id: embl_file
  doc: Annotation file in EMBL format
  type: string
  inputBinding:
    position: 0
- id: plot_files
  doc: Input plot files (optionally gzipped). There must be an equal number of condition
    and control files
  type: string
  inputBinding:
    position: 1
- id: span_gaps
  doc: 'Span a gap if it is this multiple of a window size (default: 1)'
  type: string
  inputBinding:
    prefix: --span_gaps
- id: iterations
  doc: 'No. of times to rescan (default: 1)'
  type: string
  inputBinding:
    prefix: --iterations
- id: minimum_block
  doc: 'Minimum number of reads which must be in 1 block in comparison (default: 100)'
  type: long
  inputBinding:
    prefix: --minimum_block
- id: minimum_log_fc
  doc: 'Minimum log fold change +/- (default: 1)'
  type: long
  inputBinding:
    prefix: --minimum_logfc
- id: minimum_log_cpm
  doc: 'Minimum log counts per million +/- (default: 8.0)'
  type: long
  inputBinding:
    prefix: --minimum_logcpm
- id: minimum_threshold
  doc: 'Only include insert sites with this number or greater insertions (default:
    5)'
  type: long
  inputBinding:
    prefix: --minimum_threshold
- id: minimum_proportion_insertions
  doc: 'If the proportion of insertions is too low compared to control, dont call
    decreased insertions below this level (default: 0.1)'
  type: long
  inputBinding:
    prefix: --minimum_proportion_insertions
- id: dont_normalise_plots
  doc: 'Dont normalise input plots (default: False)'
  type: boolean
  inputBinding:
    prefix: --dont_normalise_plots
- id: prefix
  doc: 'Output directory prefix (default: output)'
  type: string
  inputBinding:
    prefix: --prefix
- id: p_value
  doc: 'Dont report anything above this p-value (default: 0.05)'
  type: string
  inputBinding:
    prefix: --pvalue
- id: q_value
  doc: 'Dont report anything above this q-value (default: 0.05)'
  type: string
  inputBinding:
    prefix: --qvalue
- id: strict_signal
  doc: 'A result must be present in the combined plots to be returned (default: False)'
  type: boolean
  inputBinding:
    prefix: --strict_signal
- id: use_annotation
  doc: 'Use the reference annotation rather than a sliding window (default: False)'
  type: boolean
  inputBinding:
    prefix: --use_annotation
- id: prime_feature_size
  doc: 'Feature size when adding 5/3 prime block when --use_annotation (default: 198)'
  type: string
  inputBinding:
    prefix: --prime_feature_size
- id: window_interval
  doc: 'Window interval (default: 25)'
  type: string
  inputBinding:
    prefix: --window_interval
- id: window_size
  doc: 'Window size (default: 100)'
  type: string
  inputBinding:
    prefix: --window_size
- id: verbose
  doc: 'Print out more information about the analysis while it runs (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: debug
  doc: 'Turn on debugging (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- albatradis
