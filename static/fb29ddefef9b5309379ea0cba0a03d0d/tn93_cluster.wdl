version 1.0

task Tn93Cluster {
  input {
    String? direct_output_file
    String? sequences_lie_distance
    String? handle_ambigous_nucleotides
    String? create_clusters_based
    String? output_clusters_json
    String? only_process_pairs
    String? combination_ambigs_works
    String? print_progress_updates
  }
  command <<<
    tn93-cluster \
      ~{if defined(direct_output_file) then ("-o " +  '"' + direct_output_file + '"') else ""} \
      ~{if defined(sequences_lie_distance) then ("-t " +  '"' + sequences_lie_distance + '"') else ""} \
      ~{if defined(handle_ambigous_nucleotides) then ("-a " +  '"' + handle_ambigous_nucleotides + '"') else ""} \
      ~{if defined(create_clusters_based) then ("-c " +  '"' + create_clusters_based + '"') else ""} \
      ~{if defined(output_clusters_json) then ("-m " +  '"' + output_clusters_json + '"') else ""} \
      ~{if defined(only_process_pairs) then ("-l " +  '"' + only_process_pairs + '"') else ""} \
      ~{if defined(combination_ambigs_works) then ("-g " +  '"' + combination_ambigs_works + '"') else ""} \
      ~{if defined(print_progress_updates) then ("-q " +  '"' + print_progress_updates + '"') else ""}
  >>>
  parameter_meta {
    direct_output_file: "direct the output file with clusters to OUTPUT either  JSON or sets of FASTA files representing individual clusters (default=stdout) see also -f"
    sequences_lie_distance: "sequences which lie within this distance will be clustered (>=0, default=0.015)"
    handle_ambigous_nucleotides: "handle ambigous nucleotides using one of the following strategies (default=resolve) resolve: resolve ambiguities to minimize distance (e.g.R matches A); average: average ambiguities (e.g.R-A is 0.5 A-A and 0.5 G-A); skip:    do not include sites with ambiguous nucleotides in distance calculations; gapmm:   a gap ('-') matched to anything other than another gap is like matching an N (4-fold ambig) to it; a string (e.g. RY): any ambiguity in the list is RESOLVED; any ambiguitiy NOT in the list is averaged  (LIST-NOT LIST will also be averaged);"
    create_clusters_based: "create clusters based on the following rules (default=all) all:     each sequence in the cluster is within the specified distance threshold  of EVERY other sequence; this cluster definition is stable from run to run any:     each sequence in the cluster is within the specified distance threshold  of AT LEAST ONE other sequence; this cluster definition need NOT be stable  from run to run"
    output_clusters_json: "output clusters in the following format (default=json) json:    write a JSON file with individual clusters represented by the 'centroid'  i.e. the longest sequence, and the list of all other sequence members files:   if OUTPUT is set then write each cluster to as a FASTA file OUTPUT.x where x is the cluster ID; if OUTPUT is stdout, then write each cluster as a FASTA file separated by a line of ======"
    only_process_pairs: "only process pairs of sequences that overlap over at least OVERLAP nucleotides  (an integer >0, default=100)"
    combination_ambigs_works: "in combination with AMBIGS, works to limit (for resolve and string options to AMBIG) the maximum tolerated FRACTION of ambiguous characters; sequences whose pairwise comparisons include no more than FRACTION [0,1] of sites with resolvable ambiguities will be resolved while all others will be AVERAGED (default = 1.0)"
    print_progress_updates: "do not print progress updates to stderr (default is to print)"
  }
}