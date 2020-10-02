class: CommandLineTool
id: cactus_reference.cwl
inputs:
- id: in_loglevel
  doc: ': Set the log level'
  type: boolean
  inputBinding:
    prefix: --logLevel
- id: in_cactus_disk
  doc: ': The location of the flower disk directory'
  type: boolean
  inputBinding:
    prefix: --cactusDisk
- id: in_matching_algorithm
  doc: ": Name of matching algorithm, either 'greedy', 'maxWeight', 'maxCardinality',\
    \ 'blossom5'"
  type: boolean
  inputBinding:
    prefix: --matchingAlgorithm
- id: in_reference_event_string
  doc: ': String identifying the reference event.'
  type: boolean
  inputBinding:
    prefix: --referenceEventString
- id: in_permutations
  doc: ': Number of permutations of gibss sampling, integer >= 0'
  type: boolean
  inputBinding:
    prefix: --permutations
- id: in_use_simulated_annealing
  doc: ': Use a cooling schedule'
  type: boolean
  inputBinding:
    prefix: --useSimulatedAnnealing
- id: in_theta
  doc: ': The value of theta, higher values are more tolerant of rearrangement.'
  type: boolean
  inputBinding:
    prefix: --theta
- id: in_phi
  doc: ': The value of phi, value is proportional to exponential decline in support
    by phylogenetic distance'
  type: boolean
  inputBinding:
    prefix: --phi
- id: in_max_walk_for_calculating_z
  doc: ': The max number segments along a thread before stopping calculating z-scores'
  type: boolean
  inputBinding:
    prefix: --maxWalkForCalculatingZ
- id: in_ignored_unaligned_gaps
  doc: ": Don't consider unaligned sequence (gaps) when calculating the score function."
  type: boolean
  inputBinding:
    prefix: --ignoredUnalignedGaps
- id: in_wiggle
  doc: ': As the chains are being added to the reference greedily, wiggle is the proportion
    of next best possible insertion score the actual insertion has.'
  type: boolean
  inputBinding:
    prefix: --wiggle
- id: in_number_of_ns
  doc: ': The number of N characters to place in a scaffold gap. Default=10. Must
    be >=1'
  type: boolean
  inputBinding:
    prefix: --numberOfNs
- id: in_min_number_of_sequences_to_support_adjacency
  doc: ': Min number of sequences to support an ancestral adjacency call. Default=1.
    Must be >=0'
  type: boolean
  inputBinding:
    prefix: --minNumberOfSequencesToSupportAdjacency
- id: in_make_scaffolds
  doc: ': Scaffold across regions of adjacency uncertainty.'
  type: boolean
  inputBinding:
    prefix: --makeScaffolds
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cactus_reference
