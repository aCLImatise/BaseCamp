class: CommandLineTool
id: ../../../aggregate_align_metrics.py.cwl
inputs:
- id: in_min_seq_num
  doc: ''
  type: long
  inputBinding:
    prefix: --min-seq-num
- id: in_exclude_spurious_structs
  doc: ''
  type: boolean
  inputBinding:
    prefix: --exclude-spurious-structs
- id: in_spurious_sci
  doc: ''
  type: string
  inputBinding:
    prefix: --spurious-SCI
- id: in_rna_z_prob_threshold
  doc: ''
  type: string
  inputBinding:
    prefix: --RNAz-prob-threshold
- id: in_rs_cape_bp_threshold
  doc: ''
  type: string
  inputBinding:
    prefix: --rscape-bp-threshold
- id: in_clusters_tsv_pattern
  doc: ''
  type: string
  inputBinding:
    prefix: --clusters-tsv-pattern
- id: in_filtered_tsv_out
  doc: ''
  type: string
  inputBinding:
    prefix: --filtered-tsv-out
- id: in_bed_out
  doc: ''
  type: string
  inputBinding:
    prefix: --bed-out
- id: in_all_columns
  doc: ''
  type: boolean
  inputBinding:
    prefix: --all-columns
- id: in_exclude_paralog_clusters
  doc: ''
  type: boolean
  inputBinding:
    prefix: --exclude-paralog-clusters
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- aggregate_align_metrics.py
