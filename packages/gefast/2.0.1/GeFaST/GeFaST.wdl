version 1.0

task GeFaST {
  input {
    String? alphabet
    File? output_internal
    File? output_otus
    File? output_statistics
    File? output_seeds
    File? output_uc_lust
    String? sep_abundance
    Int? min_length
    Int? max_length
    Int? min_abundance
    Int? max_abundance
    File? mo_thur
    String? quality_encoding
    File? list_file
    String? threshold
    Int? refinement_threshold
    Int? boundary
    Int? break_swarms
    Int? match_reward
    Int? mismatch_penalty
    Int? gap_opening_penalty
    Int? gap_extension_penalty
    String? preprocessor
    String? cluster_er
    String? refiner
    String? output_generator
    String lev
    String cluster_amplicons_based_score
    String q_lev
    String q_as
    String cons
    String de_rep
  }
  command <<<
    GeFaST \
      ~{lev} \
      ~{cluster_amplicons_based_score} \
      ~{q_lev} \
      ~{q_as} \
      ~{cons} \
      ~{de_rep} \
      ~{if defined(alphabet) then ("--alphabet " +  '"' + alphabet + '"') else ""} \
      ~{if defined(output_internal) then ("--output_internal " +  '"' + output_internal + '"') else ""} \
      ~{if defined(output_otus) then ("--output_otus " +  '"' + output_otus + '"') else ""} \
      ~{if defined(output_statistics) then ("--output_statistics " +  '"' + output_statistics + '"') else ""} \
      ~{if defined(output_seeds) then ("--output_seeds " +  '"' + output_seeds + '"') else ""} \
      ~{if defined(output_uc_lust) then ("--output_uclust " +  '"' + output_uc_lust + '"') else ""} \
      ~{if defined(sep_abundance) then ("--sep_abundance " +  '"' + sep_abundance + '"') else ""} \
      ~{if defined(min_length) then ("--min_length " +  '"' + min_length + '"') else ""} \
      ~{if defined(max_length) then ("--max_length " +  '"' + max_length + '"') else ""} \
      ~{if defined(min_abundance) then ("--min_abundance " +  '"' + min_abundance + '"') else ""} \
      ~{if defined(max_abundance) then ("--max_abundance " +  '"' + max_abundance + '"') else ""} \
      ~{if (mo_thur) then "--mothur" else ""} \
      ~{if defined(quality_encoding) then ("--quality_encoding " +  '"' + quality_encoding + '"') else ""} \
      ~{if defined(list_file) then ("--list_file " +  '"' + list_file + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(refinement_threshold) then ("--refinement_threshold " +  '"' + refinement_threshold + '"') else ""} \
      ~{if defined(boundary) then ("--boundary " +  '"' + boundary + '"') else ""} \
      ~{if defined(break_swarms) then ("--break_swarms " +  '"' + break_swarms + '"') else ""} \
      ~{if defined(match_reward) then ("--match_reward " +  '"' + match_reward + '"') else ""} \
      ~{if defined(mismatch_penalty) then ("--mismatch_penalty " +  '"' + mismatch_penalty + '"') else ""} \
      ~{if defined(gap_opening_penalty) then ("--gap_opening_penalty " +  '"' + gap_opening_penalty + '"') else ""} \
      ~{if defined(gap_extension_penalty) then ("--gap_extension_penalty " +  '"' + gap_extension_penalty + '"') else ""} \
      ~{if defined(preprocessor) then ("--preprocessor " +  '"' + preprocessor + '"') else ""} \
      ~{if defined(cluster_er) then ("--clusterer " +  '"' + cluster_er + '"') else ""} \
      ~{if defined(refiner) then ("--refiner " +  '"' + refiner + '"') else ""} \
      ~{if defined(output_generator) then ("--output_generator " +  '"' + output_generator + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gefast:2.0.1--h7d875b9_0"
  }
  parameter_meta {
    alphabet: "discard sequences with other characters (default: ACGT)"
    output_internal: "output links underlying the cluster to file (default: not created)"
    output_otus: "output clusters to file (default: not created)"
    output_statistics: "output statistics to file (defaut: not created)"
    output_seeds: "output seeds to file (default: not created)"
    output_uc_lust: "create UCLUST-like output file (default: not created)"
    sep_abundance: "change separator symbol between identifier and abundance (default: _)"
    min_length: "discard shorter sequences (default: deactivated)"
    max_length: "discard longer sequences (default: deactivated)"
    min_abundance: "discard less abundant sequences (default: deactivated)"
    max_abundance: "discard more abundant sequences (default: deactivated)"
    mo_thur: "output clusters in mothur list file format"
    quality_encoding: "change expected quality encoding (FASTQ inputs, default: sanger)"
    list_file: "consider <input> option as path to file containing list of actual input files (one path per line)"
    threshold: "distance threshold in clustering phase (default: mode-dependent)"
    refinement_threshold: "distance threshold in refinement phase (default: 0, i.e. no refinement)"
    boundary: "mass boundary distinguishing between light and heavy clusters during refinement (default: 3)"
    break_swarms: "do not extend cluster when the new amplicon has a larger abundance than the current subseed (default: 1)"
    match_reward: "reward for nucleotide match during pairwise global alignment computation (default: 5)"
    mismatch_penalty: "penalty for nucleotide mismatch during pairwise global alignment computation (default: -4)"
    gap_opening_penalty: "penalty for opening a gap during pairwise global alignment computation (default: -12)"
    gap_extension_penalty: "penalty for extending a gap during pairwise global alignment computation (default: -4)"
    preprocessor: "use the specified component to perform the preprocessing (default: mode-dependent)"
    cluster_er: "use the specified component to cluster the amplicons (default: mode-dependent)"
    refiner: "use the specified component to refine the clusters (default: mode-dependent)"
    output_generator: "use the specified component to generate the requested outputs (default: mode-dependent)"
    lev: "Cluster amplicons based on the number of edit operations in optimal pairwise alignments."
    cluster_amplicons_based_score: "Cluster amplicons based on the score of optimal pairwise alignments."
    q_lev: "Cluster amplicons based on the number of edit operations in optimal pairwise alignments considering the quality scores associated with the sequences."
    q_as: "Cluster amplicons based on the score of optimal pairwise alignments considering the quality scores associated with the sequences"
    cons: "Cluster amplicons using a notion of consistency considering the quality and abundance of amplicons."
    de_rep: "Group amplicons based on exact sequence equality"
  }
  output {
    File out_stdout = stdout()
    File out_output_internal = "${in_output_internal}"
    File out_output_otus = "${in_output_otus}"
    File out_output_statistics = "${in_output_statistics}"
    File out_output_seeds = "${in_output_seeds}"
    File out_output_uc_lust = "${in_output_uc_lust}"
    File out_mo_thur = "${in_mo_thur}"
  }
}