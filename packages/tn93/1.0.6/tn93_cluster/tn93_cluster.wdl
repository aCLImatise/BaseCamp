version 1.0

task Tn93cluster {
  input {
    File? direct_output_file
    Float? sequences_lie_distance
    String? handle_ambigous_nucleotides
    String? create_clusters_based
    File? output_clusters_following
    Int? only_process_pairs
    String? combination_ambigs_limit
    String? print_progress_updates
  }
  command <<<
    tn93_cluster \
      ~{if defined(direct_output_file) then ("-o " +  '"' + direct_output_file + '"') else ""} \
      ~{if defined(sequences_lie_distance) then ("-t " +  '"' + sequences_lie_distance + '"') else ""} \
      ~{if defined(handle_ambigous_nucleotides) then ("-a " +  '"' + handle_ambigous_nucleotides + '"') else ""} \
      ~{if defined(create_clusters_based) then ("-c " +  '"' + create_clusters_based + '"') else ""} \
      ~{if defined(output_clusters_following) then ("-m " +  '"' + output_clusters_following + '"') else ""} \
      ~{if defined(only_process_pairs) then ("-l " +  '"' + only_process_pairs + '"') else ""} \
      ~{if defined(combination_ambigs_limit) then ("-g " +  '"' + combination_ambigs_limit + '"') else ""} \
      ~{if defined(print_progress_updates) then ("-q " +  '"' + print_progress_updates + '"') else ""}
  >>>
  parameter_meta {
    direct_output_file: "direct the output file with clusters to OUTPUT either\\nJSON or sets of FASTA files representing individual clusters\\n(default=stdout) see also -f"
    sequences_lie_distance: "sequences which lie within this distance will be clustered (>=0, default=0.015)"
    handle_ambigous_nucleotides: "handle ambigous nucleotides using one of the following strategies (default=resolve)\\nresolve: resolve ambiguities to minimize distance (e.g.R matches A);\\naverage: average ambiguities (e.g.R-A is 0.5 A-A and 0.5 G-A);\\nskip:    do not include sites with ambiguous nucleotides in distance calculations;\\ngapmm:   a gap ('-') matched to anything other than another gap is like matching an N (4-fold ambig) to it;\\na string (e.g. RY): any ambiguity in the list is RESOLVED; any ambiguitiy NOT in the list is averaged\\n(LIST-NOT LIST will also be averaged);"
    create_clusters_based: "create clusters based on the following rules (default=all)\\nall:     each sequence in the cluster is within the specified distance threshold\\nof EVERY other sequence; this cluster definition is stable from run to run\\nany:     each sequence in the cluster is within the specified distance threshold\\nof AT LEAST ONE other sequence; this cluster definition need NOT be stable\\nfrom run to run"
    output_clusters_following: "output clusters in the following format (default=json)\\njson:    write a JSON file with individual clusters represented by the 'centroid'\\ni.e. the longest sequence, and the list of all other sequence members\\nfiles:   if OUTPUT is set then write each cluster to as a FASTA file OUTPUT.x where\\nx is the cluster ID; if OUTPUT is stdout, then write each cluster as a FASTA\\nfile separated by a line of ======"
    only_process_pairs: "only process pairs of sequences that overlap over at least OVERLAP nucleotides\\n(an integer >0, default=100)"
    combination_ambigs_limit: "in combination with AMBIGS, works to limit (for resolve and string options to AMBIG)\\nthe maximum tolerated FRACTION of ambiguous characters; sequences whose pairwise comparisons\\ninclude no more than FRACTION [0,1] of sites with resolvable ambiguities will be resolved\\nwhile all others will be AVERAGED (default = 1.0)"
    print_progress_updates: "do not print progress updates to stderr (default is to print)"
  }
  output {
    File out_stdout = stdout()
    File out_direct_output_file = "${in_direct_output_file}"
    File out_output_clusters_following = "${in_output_clusters_following}"
  }
}