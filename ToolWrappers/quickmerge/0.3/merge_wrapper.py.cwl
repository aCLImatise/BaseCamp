class: CommandLineTool
id: merge_wrapper.py.cwl
inputs:
- id: in_prefix
  doc: the prefix for all output files
  type: string
  inputBinding:
    prefix: --prefix
- id: in_hco
  doc: the quickmerge hco parameter (default=5.0)
  type: double
  inputBinding:
    prefix: --hco
- id: in_quickmerge_c_parameter
  doc: the quickmerge c parameter (default=1.5)
  type: double
  inputBinding:
    prefix: --c
- id: in_length_cut_off
  doc: minimum seed contig length to be merged (default=0)
  type: long
  inputBinding:
    prefix: --length_cutoff
- id: in_no_nuc_mer
  doc: skip the nucmer step
  type: boolean
  inputBinding:
    prefix: --no_nucmer
- id: in_no_delta
  doc: skip the nucmer and delta-filter steps
  type: boolean
  inputBinding:
    prefix: --no_delta
- id: in_stop_after_nuc_mer
  doc: do not perform the delta-filter and merger steps
  type: boolean
  inputBinding:
    prefix: --stop_after_nucmer
- id: in_stop_after_df
  doc: do not perform the merger step
  type: boolean
  inputBinding:
    prefix: --stop_after_df
- id: in_merging_length_cut_off
  doc: "set the merging length cutoff necessary for use in\nquickmerge (default 5000)"
  type: long
  inputBinding:
    prefix: --merging_length_cutoff
- id: in_clean_only
  doc: "generate safe FASTA files for merging, but do not\nmerge\n"
  type: boolean
  inputBinding:
    prefix: --clean_only
- id: in_hybrid_assembly_fast_a
  doc: the output of a hybrid assembly program such as
  type: string
  inputBinding:
    position: 0
- id: in_dbgt_wool_c
  doc: self_assembly_fasta   the output of a self assembly program such as PBcR
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- merge_wrapper.py
