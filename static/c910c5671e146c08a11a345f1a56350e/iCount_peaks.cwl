class: CommandLineTool
id: iCount_peaks.cwl
inputs:
- id: in_scores
  doc: "File name for \"scores\" output. File reports all cross-link events,\nindependent\
    \ from their FDR score It should have .tsv, .csv, .txt or .gz\nextension (default:\
    \ None)"
  type: File?
  inputBinding:
    prefix: --scores
- id: in_features
  doc: "[ ...]    Features from annotation to consider. If None, ['gene'] is used.\n\
    Sometimes, it is advised to use ['gene', 'intergenic'] (default: None)"
  type: boolean?
  inputBinding:
    prefix: --features
- id: in_group_by
  doc: 'Attribute by which cross-link positions are grouped (default: gene_id)'
  type: boolean?
  inputBinding:
    prefix: --group_by
- id: in_merge_features
  doc: "Treat all features as one when grouping. Has no effect when only one\nfeature\
    \ is given in features parameter (default: False)"
  type: boolean?
  inputBinding:
    prefix: --merge_features
- id: in_half_window
  doc: 'Half-window size (default: 3)'
  type: boolean?
  inputBinding:
    prefix: --half_window
- id: in_fdr
  doc: 'FDR threshold (default: 0.05)'
  type: boolean?
  inputBinding:
    prefix: --fdr
- id: in_perms
  doc: 'Number of permutations when calculating random distribution (default: 100)'
  type: boolean?
  inputBinding:
    prefix: --perms
- id: in_rnd_seed
  doc: 'Seed for random generator (default: 42)'
  type: boolean?
  inputBinding:
    prefix: --rnd_seed
- id: in_report_progress
  doc: 'Report analysis progress (default: False)'
  type: boolean?
  inputBinding:
    prefix: --report_progress
- id: in_stdout_log
  doc: Threshold value (0-50) for logging to stdout. If 0, logging to stdout if turned
    OFF.
  type: boolean?
  inputBinding:
    prefix: --stdout_log
- id: in_file_log
  doc: Threshold value (0-50) for logging to file. If 0, logging to file if turned
    OFF.
  type: boolean?
  inputBinding:
    prefix: --file_log
- id: in_file_log_path
  doc: Path to log file.
  type: boolean?
  inputBinding:
    prefix: --file_logpath
- id: in_results_file
  doc: File into which to store Metrics.
  type: boolean?
  inputBinding:
    prefix: --results_file
- id: in_annotation
  doc: Annotation file in GTF format, obtained from "iCount segment" command
  type: string
  inputBinding:
    position: 0
- id: in_sites
  doc: File with cross-links in BED6 format
  type: string
  inputBinding:
    position: 1
- id: in_peaks
  doc: "File name for \"peaks\" output. File reports positions with significant\n\
    number of cross-link events. It should have .bed or .bed.gz extension"
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_scores
  doc: "File name for \"scores\" output. File reports all cross-link events,\nindependent\
    \ from their FDR score It should have .tsv, .csv, .txt or .gz\nextension (default:\
    \ None)"
  type: File?
  outputBinding:
    glob: $(inputs.in_scores)
hints: []
cwlVersion: v1.1
baseCommand:
- iCount
- peaks
