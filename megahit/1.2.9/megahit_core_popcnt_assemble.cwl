class: CommandLineTool
id: megahit_core_popcnt_assemble.cwl
inputs:
- id: assemble
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: s_dbg_name
  doc: succinct de Bruijn graph name
  type: string
  inputBinding:
    prefix: --sdbg_name
- id: output_prefix
  doc: (=out)         output prefix
  type: string
  inputBinding:
    prefix: --output_prefix
- id: num_cpu_threads
  doc: (=0)         number of cpu threads
  type: string
  inputBinding:
    prefix: --num_cpu_threads
- id: max_tip_len
  doc: (=-1)            max length for tips to be removed. -1 for 2k
  type: string
  inputBinding:
    prefix: --max_tip_len
- id: min_standalone
  doc: (=200)        min length of a standalone contig to output to final.contigs.fa
  type: string
  inputBinding:
    prefix: --min_standalone
- id: bubble_level
  doc: (=2)            bubbles level 0-3
  type: string
  inputBinding:
    prefix: --bubble_level
- id: merge_len
  doc: (=20)              merge complex bubbles of length <= merge_len * k
  type: string
  inputBinding:
    prefix: --merge_len
- id: merge_similar
  doc: (=0.98)        min similarity of complex bubble merging
  type: string
  inputBinding:
    prefix: --merge_similar
- id: prune_level
  doc: (=2)             strength of low local depth contig pruning (0-3)
  type: string
  inputBinding:
    prefix: --prune_level
- id: disconnect_ratio
  doc: (=0.1)      ratio threshold for disconnecting contigs
  type: string
  inputBinding:
    prefix: --disconnect_ratio
- id: low_local_ratio
  doc: (=0.2)       ratio to define low depth contigs
  type: string
  inputBinding:
    prefix: --low_local_ratio
- id: cleaning_rounds
  doc: (=5)         number of rounds of graphs cleaning
  type: string
  inputBinding:
    prefix: --cleaning_rounds
- id: min_depth
  doc: (=-1)              if prune_level >= 2, permanently remove low local coverage
    unitigs under this threshold
  type: string
  inputBinding:
    prefix: --min_depth
- id: is_final_round
  doc: this is the last iteration
  type: boolean
  inputBinding:
    prefix: --is_final_round
- id: output_standalone
  doc: output standalone contigs to *.final.contigs.fa
  type: boolean
  inputBinding:
    prefix: --output_standalone
- id: careful_bubble
  doc: remove bubble carefully
  type: boolean
  inputBinding:
    prefix: --careful_bubble
outputs: []
cwlVersion: v1.1
baseCommand:
- megahit_core_popcnt
- assemble
