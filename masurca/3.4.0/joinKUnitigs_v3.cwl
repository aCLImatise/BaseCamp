#!/usr/bin/env cwl-runner

baseCommand:
- joinKUnitigs_v3
class: CommandLineTool
cwlVersion: v1.0
id: joinkunitigs_v3
inputs:
- doc: '*Minimum length of an overlap between unitigs'
  id: min_overlap_length
  inputBinding:
    prefix: --min-overlap-length
  type: long
- doc: '*File containing the mean and stdev for each prefix library.'
  id: mean_and_stdev_by_prefix_file
  inputBinding:
    prefix: --mean-and-stdev-by-prefix-file
  type: File
- doc: Number of standard deviations the join length can be from the mean when trying
    to join a mate pair. (5)
  id: num_stdev_s_allowed
  inputBinding:
    prefix: --num-stdevs-allowed
  type: long
- doc: '*File containing the length of the unitigs.'
  id: unit_ig_lengths_file
  inputBinding:
    prefix: --unitig-lengths-file
  type: File
- doc: File containing map from original unitigs to new (longer) unitigs.
  id: k_unit_igs_translation_file
  inputBinding:
    prefix: --kunitigs-translation-file
  type: File
- doc: '*Celera-style overlap file between unitigs in binary format.'
  id: overlaps_file
  inputBinding:
    prefix: --overlaps-file
  type: File
- doc: '*File containing the number of k-unitigs.'
  id: num_k_unit_igs_file
  inputBinding:
    prefix: --num-kunitigs-file
  type: File
- doc: Max records allowed when trying to join a mate pair. (4000)
  id: max_nodes_allowed
  inputBinding:
    prefix: --max-nodes-allowed
  type: long
- doc: Report a join even if it is not unique. (0)
  id: join_aggressive
  inputBinding:
    prefix: --join-aggressive
  type: long
- doc: Output file (super_reads_output)
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: Number of threads (1)
  id: threads
  inputBinding:
    prefix: --threads
  type: long
