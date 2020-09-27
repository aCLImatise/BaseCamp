class: CommandLineTool
id: aggregate_align_metrics.py.cwl
inputs:
- id: in_min_seq_num
  doc: "[--clusters-tsv-pattern CLUSTERS_TSV_PATTERN]\n[--filtered-tsv-out FILTERED_TSV_OUT]\n\
    [--bed-out BED_OUT] [--all-columns]\n[--exclude-paralog-clusters]"
  type: long
  inputBinding:
    prefix: --min-seq-num
- id: in_exclude_spurious_structs
  doc: ''
  type: boolean
  inputBinding:
    prefix: --exclude-spurious-structs
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- aggregate_align_metrics.py
