class: CommandLineTool
id: unitigger.cwl
inputs:
- id: in_specifies_target_number
  doc: Specifies the target number of fragments per partition.
  type: long
  inputBinding:
    prefix: -B
- id: in_fragment_store_name
  doc: The fragment store name.
  type: Directory
  inputBinding:
    prefix: -F
- id: in_chimeras_file
  doc: chimeras file.
  type: File
  inputBinding:
    prefix: -H
- id: in_read_ovl_store
  doc: Read the OVL store.
  type: Directory
  inputBinding:
    prefix: -I
- id: in_input_overlapfragmesgs_asmofg
  doc: The input OverlapFragMesgs; asm.ofg.
  type: File
  inputBinding:
    prefix: -L
- id: in_spurs_file
  doc: Spurs file.
  type: File
  inputBinding:
    prefix: -S
- id: in_find_bubble_smoothing
  doc: Find bubble smoothing overlaps.
  type: boolean
  inputBinding:
    prefix: -U
- id: in_limit_path_length
  doc: Limit in path length for graph walking.
  type: long
  inputBinding:
    prefix: -W
- id: in_count_chimera_fragments
  doc: Do not count chimera fragments.
  type: boolean
  inputBinding:
    prefix: -Y
- id: in_enabledisable_fragment_overlap
  doc: Enable/Disable de-chording of the fragment overlap graph.
  type: long
  inputBinding:
    prefix: -d
- id: in_overlaps_error_rate
  doc: "Overlaps with error rate about this are ignored on input.\nAn integer value\
    \ is in parts per thousand."
  type: long
  inputBinding:
    prefix: -e
- id: in_unique_unitig_cutoff
  doc: Unique unitig cut-off
  type: long
  inputBinding:
    prefix: -j
- id: in_recalibrate_global_rate
  doc: Recalibrate the global arrival rate to be the max unique local arrival rate
  type: boolean
  inputBinding:
    prefix: -k
- id: in_specify_length_genome
  doc: Specify length of the genome.
  type: long
  inputBinding:
    prefix: -l
- id: in_m
  doc: Pre-allocate memory
  type: string
  inputBinding:
    prefix: -m
- id: in_n
  doc: Pre-allocate memory
  type: string
  inputBinding:
    prefix: -n
- id: in_output_to_prefix
  doc: output to this prefix.
  type: string
  inputBinding:
    prefix: -o
- id: in_disable_early_spur
  doc: Disable early spur fragment removal.
  type: boolean
  inputBinding:
    prefix: -s
- id: in_create_ovl_dump
  doc: Create a OVL compatible dump of the graph.
  type: File
  inputBinding:
    prefix: -u
- id: in_work_limit_candidate
  doc: The work limit per candidate edge for de-chording.
  type: long
  inputBinding:
    prefix: -w
- id: in_dovetail_outgoing_degree
  doc: Dovetail outgoing degree threshold per fragment-end.
  type: long
  inputBinding:
    prefix: -x
- id: in_ignore_nonblessed_overlap
  doc: Ignore non-blessed overlap edges to blessed fragment ends.
  type: long
  inputBinding:
    prefix: -y
- id: in_containment_outgoing_degree
  doc: Containment outgoing degree threshold per fragment-end.
  type: long
  inputBinding:
    prefix: -z
- id: in_option
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
- unitigger
