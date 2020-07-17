version 1.0

task SecaprReferenceAssembly {
  input {
    String? reads
    String? reference_type
    String? reference
    String? output_directory_safed
    Boolean? keep_duplicates
    Int? min_coverage
    String? cores
    String? part_read_matches
    String? avoid_introducing_gaps
    String? stop_extension_when
    String? trigger_reseeding_longer
    String? discard_match_it
    String? matching_score_acts
    String? mismatch_penalty_accepted
    String? gap_opening_penalty
    String? gap_extension_penalty
    String? clipping_penalty_extension
    String? penalty_unpaired_read
  }
  command <<<
    secapr reference_assembly \
      ~{if defined(reads) then ("--reads " +  '"' + reads + '"') else ""} \
      ~{if defined(reference_type) then ("--reference_type " +  '"' + reference_type + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(output_directory_safed) then ("--output " +  '"' + output_directory_safed + '"') else ""} \
      ~{true="--keep_duplicates" false="" keep_duplicates} \
      ~{if defined(min_coverage) then ("--min_coverage " +  '"' + min_coverage + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(part_read_matches) then ("--k " +  '"' + part_read_matches + '"') else ""} \
      ~{if defined(avoid_introducing_gaps) then ("--w " +  '"' + avoid_introducing_gaps + '"') else ""} \
      ~{if defined(stop_extension_when) then ("--d " +  '"' + stop_extension_when + '"') else ""} \
      ~{if defined(trigger_reseeding_longer) then ("--r " +  '"' + trigger_reseeding_longer + '"') else ""} \
      ~{if defined(discard_match_it) then ("--c " +  '"' + discard_match_it + '"') else ""} \
      ~{if defined(matching_score_acts) then ("--a " +  '"' + matching_score_acts + '"') else ""} \
      ~{if defined(mismatch_penalty_accepted) then ("--b " +  '"' + mismatch_penalty_accepted + '"') else ""} \
      ~{if defined(gap_opening_penalty) then ("--o " +  '"' + gap_opening_penalty + '"') else ""} \
      ~{if defined(gap_extension_penalty) then ("--e " +  '"' + gap_extension_penalty + '"') else ""} \
      ~{if defined(clipping_penalty_extension) then ("--l " +  '"' + clipping_penalty_extension + '"') else ""} \
      ~{if defined(penalty_unpaired_read) then ("--u " +  '"' + penalty_unpaired_read + '"') else ""}
  >>>
  parameter_meta {
    reads: "Call the folder that contains the trimmed reads, organized in a separate subfolder for each sample. The name of the subfolder has to start with the sample name, delimited with an underscore [_] (default output of clean_reads function)."
    reference_type: "Please choose which type of reference you want to map the samples to. \"alignment-consensus\" will create a consensus sequence for each alignment file which will be used as a reference for all samples. This is recommendable when all samples are rather closely related to each other. \"sample-specific\" will extract the sample specific sequences from an alignment and use these as a separate reference for each individual sample. \"user-ref-lib\" enables to input one single fasta file created by the user which will be used as a reference library for all samples."
    reference: "When choosing \"alignment-consensus\" or \"sample- specific\" as reference_type, this flag calls the folder containing the alignment files for your target loci (fasta-format). In case of \"user-ref-lib\" as reference_type, this flag calls one single fasta file that contains a user-prepared reference library which will be applied to all samples."
    output_directory_safed: "The output directory where results will be safed."
    keep_duplicates: "Use this flag if you do not want to discard all duplicate reads with Picard."
    min_coverage: "Set the minimum read coverage. Only positions that are covered by this number of reads will be called in the consensus sequence, otherwise the program will add an ambiguity at this position."
    cores: "Number of computational cores for parallelization of computation."
    part_read_matches: "If the part of the read that sufficiently matches the reference is shorter than this threshold, it will be discarded (minSeedLen)."
    avoid_introducing_gaps: "Avoid introducing gaps in reads that are longer than this threshold."
    stop_extension_when: "Stop extension when the difference between the best and the current extension score is above |i-j|*A+INT, where i and j are the current positions of the query and reference, respectively, and A is the matching score."
    trigger_reseeding_longer: "Trigger re-seeding for a MEM longer than minSeedLen*FLOAT."
    discard_match_it: "Discard a match if it has more than INT occurence in the genome"
    matching_score_acts: "Matching score. Acts as a factor enhancing any match (higher value makes it less conservative = allows reads that have fewer matches, since every match is scored higher)."
    mismatch_penalty_accepted: "Mismatch penalty. The accepted mismatch rate per read on length k is approximately: {.75 * exp[-log(4) * B/A]}"
    gap_opening_penalty: "Gap opening penalty"
    gap_extension_penalty: "Gap extension penalty"
    clipping_penalty_extension: "Clipping penalty. During extension, the algorithm keeps track of the best score reaching the end of query. If this score is larger than the best extension score minus the clipping penalty, clipping will not be applied."
    penalty_unpaired_read: "Penalty for an unpaired read pair. The lower the value, the more unpaired reads will be allowed in the mapping."
  }
}