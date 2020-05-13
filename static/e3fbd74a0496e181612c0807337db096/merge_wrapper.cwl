class: CommandLineTool
id: merge_wrapper.py.cwl
inputs:
- id: hybrid_assembly_fast_a
  doc: the output of a hybrid assembly program such as DBG2OLC
  type: string
  inputBinding:
    position: 0
- id: self_assembly_fast_a
  doc: the output of a self assembly program such as PBcR
  type: string
  inputBinding:
    position: 1
- id: prefix
  doc: the prefix for all output files
  type: string
  inputBinding:
    prefix: --prefix
- id: hco
  doc: the quickmerge hco parameter (default=5.0)
  type: string
  inputBinding:
    prefix: --hco
- id: c
  doc: the quickmerge c parameter (default=1.5)
  type: string
  inputBinding:
    prefix: --c
- id: length_cut_off
  doc: minimum seed contig length to be merged (default=0)
  type: long
  inputBinding:
    prefix: --length_cutoff
- id: no_nuc_mer
  doc: skip the nucmer step
  type: boolean
  inputBinding:
    prefix: --no_nucmer
- id: no_delta
  doc: skip the nucmer and delta-filter steps
  type: boolean
  inputBinding:
    prefix: --no_delta
- id: stop_after_nuc_mer
  doc: do not perform the delta-filter and merger steps
  type: boolean
  inputBinding:
    prefix: --stop_after_nucmer
- id: stop_after_df
  doc: do not perform the merger step
  type: boolean
  inputBinding:
    prefix: --stop_after_df
- id: merging_length_cut_off
  doc: set the merging length cutoff necessary for use in quickmerge (default 5000)
  type: string
  inputBinding:
    prefix: --merging_length_cutoff
- id: clean_only
  doc: generate safe FASTA files for merging, but do not merge
  type: boolean
  inputBinding:
    prefix: --clean_only
outputs: []
cwlVersion: v1.1
baseCommand:
- merge_wrapper.py
