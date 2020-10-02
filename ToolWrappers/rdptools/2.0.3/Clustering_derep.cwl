class: CommandLineTool
id: Clustering_derep.cwl
inputs:
- id: in_aligned
  doc: Dereplicate aligned sequences
  type: boolean
  inputBinding:
    prefix: --aligned
- id: in_formatted
  doc: "Dereplicate formated (uppercase/- = comparable,\nlowercase/. = non-comparable)\
    \ aligned sequences"
  type: boolean
  inputBinding:
    prefix: --formatted
- id: in_keep_common_gaps
  doc: Don't remove common gaps in output sequences
  type: boolean
  inputBinding:
    prefix: --keep-common-gaps
- id: in_model_only
  doc: Dereplicate aligned sequences using mask sequence
  type: string
  inputBinding:
    prefix: --model-only
- id: in_out
  doc: Write sequences to this file
  type: File
  inputBinding:
    prefix: --out
- id: in_qual_out
  doc: Write quality sequences to this file
  type: File
  inputBinding:
    prefix: --qual-out
- id: in_sorted
  doc: Sort sequence by number of members represented
  type: boolean
  inputBinding:
    prefix: --sorted
- id: in_unaligned
  doc: Dereplicate unaligned sequences
  type: boolean
  inputBinding:
    prefix: --unaligned
- id: in_de_replicator
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_id_mapping_out
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_sample_mapping_out
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- Clustering
- derep
