class: CommandLineTool
id: joinKUnitigs_v3.cwl
inputs:
- id: in_min_overlap_length
  doc: '*Minimum length of an overlap between unitigs'
  type: long?
  inputBinding:
    prefix: --min-overlap-length
- id: in_mean_and_stdev_by_prefix_file
  doc: '*File containing the mean and stdev for each prefix library.'
  type: File?
  inputBinding:
    prefix: --mean-and-stdev-by-prefix-file
- id: in_num_stdev_s_allowed
  doc: Number of standard deviations the join length can be from the mean when trying
    to join a mate pair. (5)
  type: long?
  inputBinding:
    prefix: --num-stdevs-allowed
- id: in_unit_ig_lengths_file
  doc: '*File containing the length of the unitigs.'
  type: File?
  inputBinding:
    prefix: --unitig-lengths-file
- id: in_k_unit_igs_translation_file
  doc: File containing map from original unitigs to new (longer) unitigs.
  type: File?
  inputBinding:
    prefix: --kunitigs-translation-file
- id: in_overlaps_file
  doc: '*Celera-style overlap file between unitigs in binary format.'
  type: File?
  inputBinding:
    prefix: --overlaps-file
- id: in_num_k_unit_igs_file
  doc: '*File containing the number of k-unitigs.'
  type: File?
  inputBinding:
    prefix: --num-kunitigs-file
- id: in_max_nodes_allowed
  doc: Max records allowed when trying to join a mate pair. (4000)
  type: long?
  inputBinding:
    prefix: --max-nodes-allowed
- id: in_join_aggressive
  doc: Report a join even if it is not unique. (0)
  type: long?
  inputBinding:
    prefix: --join-aggressive
- id: in_output
  doc: Output file (super_reads_output)
  type: File?
  inputBinding:
    prefix: --output
- id: in_threads
  doc: Number of threads (1)
  type: long?
  inputBinding:
    prefix: --threads
- id: in_cmdline_parse
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output file (super_reads_output)
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- joinKUnitigs_v3
