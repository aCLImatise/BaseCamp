version 1.0

task CactusReference {
  input {
    Boolean? loglevel
    Boolean? cactus_disk
    Boolean? matching_algorithm
    Boolean? reference_event_string
    Boolean? permutations
    Boolean? use_simulated_annealing
    Boolean? theta
    Boolean? phi
    Boolean? max_walk_for_calculating_z
    Boolean? ignored_unaligned_gaps
    Boolean? wiggle
    Boolean? number_of_ns
    Boolean? min_number_of_sequences_to_support_adjacency
    Boolean? make_scaffolds
  }
  command <<<
    cactus_reference \
      ~{if (loglevel) then "--logLevel" else ""} \
      ~{if (cactus_disk) then "--cactusDisk" else ""} \
      ~{if (matching_algorithm) then "--matchingAlgorithm" else ""} \
      ~{if (reference_event_string) then "--referenceEventString" else ""} \
      ~{if (permutations) then "--permutations" else ""} \
      ~{if (use_simulated_annealing) then "--useSimulatedAnnealing" else ""} \
      ~{if (theta) then "--theta" else ""} \
      ~{if (phi) then "--phi" else ""} \
      ~{if (max_walk_for_calculating_z) then "--maxWalkForCalculatingZ" else ""} \
      ~{if (ignored_unaligned_gaps) then "--ignoredUnalignedGaps" else ""} \
      ~{if (wiggle) then "--wiggle" else ""} \
      ~{if (number_of_ns) then "--numberOfNs" else ""} \
      ~{if (min_number_of_sequences_to_support_adjacency) then "--minNumberOfSequencesToSupportAdjacency" else ""} \
      ~{if (make_scaffolds) then "--makeScaffolds" else ""}
  >>>
  parameter_meta {
    loglevel: ": Set the log level"
    cactus_disk: ": The location of the flower disk directory"
    matching_algorithm: ": Name of matching algorithm, either 'greedy', 'maxWeight', 'maxCardinality', 'blossom5'"
    reference_event_string: ": String identifying the reference event."
    permutations: ": Number of permutations of gibss sampling, integer >= 0"
    use_simulated_annealing: ": Use a cooling schedule"
    theta: ": The value of theta, higher values are more tolerant of rearrangement."
    phi: ": The value of phi, value is proportional to exponential decline in support by phylogenetic distance"
    max_walk_for_calculating_z: ": The max number segments along a thread before stopping calculating z-scores"
    ignored_unaligned_gaps: ": Don't consider unaligned sequence (gaps) when calculating the score function."
    wiggle: ": As the chains are being added to the reference greedily, wiggle is the proportion of next best possible insertion score the actual insertion has."
    number_of_ns: ": The number of N characters to place in a scaffold gap. Default=10. Must be >=1"
    min_number_of_sequences_to_support_adjacency: ": Min number of sequences to support an ancestral adjacency call. Default=1. Must be >=0"
    make_scaffolds: ": Scaffold across regions of adjacency uncertainty."
  }
  output {
    File out_stdout = stdout()
  }
}