version 1.0

task PickTestTargetspy {
  input {
    Int? pm
    Int? gm
    Boolean? do_not_allow_gu_pairing
    Int? min_seq_len_to_consider
    Int? min_target_len
    Int? min_frac_to_cover_with_rep_seqs
    Int? max_cluster_distance
    Int? num_representative_targets
    Boolean? debug
    Boolean? verbose
    String design_tsv
    String alignment_fast_a
    String out_tsv
    String testing
  }
  command <<<
    pick_test_targets_py \
      ~{design_tsv} \
      ~{alignment_fast_a} \
      ~{out_tsv} \
      ~{testing} \
      ~{if defined(pm) then ("-pm " +  '"' + pm + '"') else ""} \
      ~{if defined(gm) then ("-gm " +  '"' + gm + '"') else ""} \
      ~{if (do_not_allow_gu_pairing) then "--do-not-allow-gu-pairing" else ""} \
      ~{if defined(min_seq_len_to_consider) then ("--min-seq-len-to-consider " +  '"' + min_seq_len_to_consider + '"') else ""} \
      ~{if defined(min_target_len) then ("--min-target-len " +  '"' + min_target_len + '"') else ""} \
      ~{if defined(min_frac_to_cover_with_rep_seqs) then ("--min-frac-to-cover-with-rep-seqs " +  '"' + min_frac_to_cover_with_rep_seqs + '"') else ""} \
      ~{if defined(max_cluster_distance) then ("--max-cluster-distance " +  '"' + max_cluster_distance + '"') else ""} \
      ~{if defined(num_representative_targets) then ("--num-representative-targets " +  '"' + num_representative_targets + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/adapt:1.2.0--py_0"
  }
  parameter_meta {
    pm: "Number of mismatches to tolerate when determining\\nwhether primer binds to a region of target sequence"
    gm: "Number of mismatches to tolerate when determining\\nwhether guide binds to a region of target sequence"
    do_not_allow_gu_pairing: "When determining whether a guide binds to a region of\\ntarget sequence, do not count G-U (wobble) base pairs\\nas matching."
    min_seq_len_to_consider: "Do not consider, when identifying representative\\nsequences, target sequences that are shorter than this\\nlength. These can occur due to gaps in the alignment\\n(e.g., a target sequence can have length 0 if it is\\nall '-' in the amplicon."
    min_target_len: "Minimum length of a target region; if the region in a\\ndesign bound by primers is less than this, sequence\\nwill be added on both sides of the primer to reach\\nthis length. Note that this is in the alignment; the\\nactual sequence could be shorter if there are gaps in\\nthe alignment"
    min_frac_to_cover_with_rep_seqs: "For representative sequences, use medoids of clusters\\nsuch that the clusters account for at least this\\nfraction of all sequences. This allows ignoring\\noutlier clusters (whose sequence(s) may have not been\\ncovered by the design."
    max_cluster_distance: "Maximum inter-cluster distance to merge clusters\\n(measured as 1-ANI). Higher values result in fewer\\nrepresentative targets."
    num_representative_targets: "Maximum number of clusters (equivalent to maximum\\nnumber of representative targets). If set, then --max-\\ncluster-distance is ignored. Note that fewer may be\\nreported if --min-frac-to-cover-with-rep-seqs is <1.0;\\nset it to 1.0 to report all."
    debug: "Debug output"
    verbose: "Verbose output"
    design_tsv: "Path to TSV with design options, as output by\\ndesign.py. Alternatively, it can be a custom-made TSV,\\nwith one row per design option, containing the\\nfollowing columns: 'target-start' (5' end of a\\ntargeted genomic region, e.g., an amplicon); 'target-\\nend' (3' end); 'guide-target-sequences' (space-\\nseparated list of guide sequences); 'left-primer-\\ntarget-sequences' (space-separated list of forward\\nprimer sequences); 'right-primer-target-sequences'\\n(space-separated list of reverse primer sequences)"
    alignment_fast_a: "Path to alignment (FASTA) from which to extract\\ntargets. Target positions in DESIGN_TSV must\\ncorrespond to positions in this alignment. If\\nDESIGN_TSV is the output of design.py, then this can\\nbe the output of `design.py --write-input-aln`."
    out_tsv: "Path to output TSV with recommended targets for"
    testing: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}