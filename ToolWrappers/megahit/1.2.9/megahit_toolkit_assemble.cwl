class: CommandLineTool
id: megahit_toolkit_assemble.cwl
inputs:
- id: in_s_dbg_name
  doc: succinct de Bruijn graph name
  type: string
  inputBinding:
    prefix: --sdbg_name
- id: in_output_prefix
  doc: (=out)         output prefix
  type: string
  inputBinding:
    prefix: --output_prefix
- id: in_num_cpu_threads
  doc: (=0)         number of cpu threads
  type: long
  inputBinding:
    prefix: --num_cpu_threads
- id: in_max_tip_len
  doc: (=-1)            max length for tips to be removed. -1 for 2k
  type: long
  inputBinding:
    prefix: --max_tip_len
- id: in_min_standalone
  doc: (=200)        min length of a standalone contig to output to final.contigs.fa
  type: long
  inputBinding:
    prefix: --min_standalone
- id: in_bubble_level
  doc: (=2)            bubbles level 0-3
  type: long
  inputBinding:
    prefix: --bubble_level
- id: in_merge_len
  doc: (=20)              merge complex bubbles of length <= merge_len * k
  type: long
  inputBinding:
    prefix: --merge_len
- id: in_merge_similar
  doc: (=0.98)        min similarity of complex bubble merging
  type: long
  inputBinding:
    prefix: --merge_similar
- id: in_prune_level
  doc: (=2)             strength of low local depth contig pruning (0-3)
  type: long
  inputBinding:
    prefix: --prune_level
- id: in_disconnect_ratio
  doc: (=0.1)      ratio threshold for disconnecting contigs
  type: double
  inputBinding:
    prefix: --disconnect_ratio
- id: in_low_local_ratio
  doc: (=0.2)       ratio to define low depth contigs
  type: double
  inputBinding:
    prefix: --low_local_ratio
- id: in_cleaning_rounds
  doc: (=5)         number of rounds of graphs cleaning
  type: long
  inputBinding:
    prefix: --cleaning_rounds
- id: in_min_depth
  doc: (=-1)              if prune_level >= 2, permanently remove low local coverage
    unitigs under this threshold
  type: long
  inputBinding:
    prefix: --min_depth
- id: in_is_final_round
  doc: this is the last iteration
  type: boolean
  inputBinding:
    prefix: --is_final_round
- id: in_output_standalone
  doc: output standalone contigs to *.final.contigs.fa
  type: boolean
  inputBinding:
    prefix: --output_standalone
- id: in_careful_bubble
  doc: remove bubble carefully
  type: boolean
  inputBinding:
    prefix: --careful_bubble
- id: in_assemble
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- megahit_toolkit
- assemble
