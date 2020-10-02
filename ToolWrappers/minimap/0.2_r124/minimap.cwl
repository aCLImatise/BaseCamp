class: CommandLineTool
id: minimap.cwl
inputs:
- id: in_kmer_size
  doc: k-mer size [15]
  type: long
  inputBinding:
    prefix: -k
- id: in_minizer_window_size
  doc: minizer window size [{-k}*2/3]
  type: long
  inputBinding:
    prefix: -w
- id: in_split_index_num
  doc: split index for every ~NUM input bases [4G]
  type: long
  inputBinding:
    prefix: -I
- id: in_dump_index_file
  doc: dump index to FILE []
  type: File
  inputBinding:
    prefix: -d
- id: in_st_argument_index
  doc: the 1st argument is a index file (overriding -k, -w and -I)
  type: boolean
  inputBinding:
    prefix: -l
- id: in_filter_top_fraction
  doc: filter out top FLOAT fraction of repetitive minimizers [0.001]
  type: double
  inputBinding:
    prefix: -f
- id: in_bandwidth
  doc: bandwidth [500]
  type: long
  inputBinding:
    prefix: -r
- id: in_merge_two_chains
  doc: merge two chains if FLOAT fraction of minimizers are shared [0.50]
  type: double
  inputBinding:
    prefix: -m
- id: in_retain_mapping_consists
  doc: retain a mapping if it consists of >=INT minimizers [4]
  type: long
  inputBinding:
    prefix: -c
- id: in_min_matching_length
  doc: min matching length [40]
  type: long
  inputBinding:
    prefix: -L
- id: in_split_mapping_there
  doc: split a mapping if there is a gap longer than INT [10000]
  type: long
  inputBinding:
    prefix: -g
- id: in_sdust_threshold_disable
  doc: SDUST threshold; 0 to disable SDUST [0]
  type: long
  inputBinding:
    prefix: -T
- id: in_skip_self_mappings
  doc: skip self and dual mappings
  type: boolean
  inputBinding:
    prefix: -S
- id: in_drop_isolated_hits
  doc: drop isolated hits before chaining (EXPERIMENTAL)
  type: boolean
  inputBinding:
    prefix: -O
- id: in_filtering_potential_repeats
  doc: filtering potential repeats after mapping (EXPERIMENTAL)
  type: boolean
  inputBinding:
    prefix: -P
- id: in_preset_recommended_applied
  doc: "preset (recommended to be applied before other options) []\nava10k: -Sw5 -L100\
    \ -m0 (PacBio/ONT all-vs-all read mapping)"
  type: long
  inputBinding:
    prefix: -x
- id: in_number_of_threads
  doc: number of threads [3]
  type: long
  inputBinding:
    prefix: -t
- id: in_show_version_number
  doc: show version number
  type: boolean
  inputBinding:
    prefix: -V
- id: in_target_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_query_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- minimap
