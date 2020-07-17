class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/minimap.cwl
inputs:
- id: kmer_size
  doc: k-mer size [15]
  type: long
  inputBinding:
    prefix: -k
- id: minizer_window_size
  doc: minizer window size [{-k}*2/3]
  type: long
  inputBinding:
    prefix: -w
- id: split_index_num
  doc: split index for every ~NUM input bases [4G]
  type: string
  inputBinding:
    prefix: -I
- id: dump_index_file
  doc: dump index to FILE []
  type: File
  inputBinding:
    prefix: -d
- id: st_argument_index
  doc: the 1st argument is a index file (overriding -k, -w and -I)
  type: boolean
  inputBinding:
    prefix: -l
- id: filter_top_fraction
  doc: filter out top FLOAT fraction of repetitive minimizers [0.001]
  type: double
  inputBinding:
    prefix: -f
- id: bandwidth
  doc: bandwidth [500]
  type: long
  inputBinding:
    prefix: -r
- id: merge_two_chains
  doc: merge two chains if FLOAT fraction of minimizers are shared [0.50]
  type: double
  inputBinding:
    prefix: -m
- id: retain_mapping_consists
  doc: retain a mapping if it consists of >=INT minimizers [4]
  type: long
  inputBinding:
    prefix: -c
- id: min_matching_length
  doc: min matching length [40]
  type: long
  inputBinding:
    prefix: -L
- id: split_mapping_there
  doc: split a mapping if there is a gap longer than INT [10000]
  type: long
  inputBinding:
    prefix: -g
- id: sdust_threshold_disable
  doc: SDUST threshold; 0 to disable SDUST [0]
  type: long
  inputBinding:
    prefix: -T
- id: skip_self_mappings
  doc: skip self and dual mappings
  type: boolean
  inputBinding:
    prefix: -S
- id: drop_isolated_hits
  doc: drop isolated hits before chaining (EXPERIMENTAL)
  type: boolean
  inputBinding:
    prefix: -O
- id: filtering_potential_repeats
  doc: filtering potential repeats after mapping (EXPERIMENTAL)
  type: boolean
  inputBinding:
    prefix: -P
- id: preset_recommended_applied
  doc: 'preset (recommended to be applied before other options) [] ava10k: -Sw5 -L100
    -m0 (PacBio/ONT all-vs-all read mapping)'
  type: string
  inputBinding:
    prefix: -x
- id: number_of_threads
  doc: number of threads [3]
  type: long
  inputBinding:
    prefix: -t
- id: show_version_number
  doc: show version number
  type: boolean
  inputBinding:
    prefix: -V
- id: target_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: query_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- minimap
