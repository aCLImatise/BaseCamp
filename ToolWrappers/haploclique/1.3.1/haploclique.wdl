version 1.0

task Haploclique {
  input {
    Int? edge_quasi_cut_off_cliques
    Int? edge_quasi_cut_off_mixed
    Int? edge_quasi_cut_off_single
    Int? random_overlap_quality
    Boolean? frame_shift_merge
    Int? min_overlap_cliques
    Int? min_overlap_single
    File? all_el_frequencies
    Int? iterations
    Int? filter
    Boolean? no_singletons
    Int? significance
    File? log
    Int? doc_haplotypes
    Boolean? no_prob_zero
    File? gff
    File? bam
    Int? max_cliques
    Int? limit_clique_size
    String clever
    String bronk_er_bosch
    String yet_dot
  }
  command <<<
    haploclique \
      ~{clever} \
      ~{bronk_er_bosch} \
      ~{yet_dot} \
      ~{if defined(edge_quasi_cut_off_cliques) then ("--edge_quasi_cutoff_cliques " +  '"' + edge_quasi_cut_off_cliques + '"') else ""} \
      ~{if defined(edge_quasi_cut_off_mixed) then ("--edge_quasi_cutoff_mixed " +  '"' + edge_quasi_cut_off_mixed + '"') else ""} \
      ~{if defined(edge_quasi_cut_off_single) then ("--edge_quasi_cutoff_single " +  '"' + edge_quasi_cut_off_single + '"') else ""} \
      ~{if defined(random_overlap_quality) then ("--random_overlap_quality " +  '"' + random_overlap_quality + '"') else ""} \
      ~{if (frame_shift_merge) then "--frame_shift_merge" else ""} \
      ~{if defined(min_overlap_cliques) then ("--min_overlap_cliques " +  '"' + min_overlap_cliques + '"') else ""} \
      ~{if defined(min_overlap_single) then ("--min_overlap_single " +  '"' + min_overlap_single + '"') else ""} \
      ~{if defined(all_el_frequencies) then ("--allel_frequencies " +  '"' + all_el_frequencies + '"') else ""} \
      ~{if defined(iterations) then ("--iterations " +  '"' + iterations + '"') else ""} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""} \
      ~{if (no_singletons) then "--no_singletons" else ""} \
      ~{if defined(significance) then ("--significance " +  '"' + significance + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(doc_haplotypes) then ("--doc_haplotypes " +  '"' + doc_haplotypes + '"') else ""} \
      ~{if (no_prob_zero) then "--no_prob0" else ""} \
      ~{if (gff) then "--gff" else ""} \
      ~{if (bam) then "--bam" else ""} \
      ~{if defined(max_cliques) then ("--max_cliques " +  '"' + max_cliques + '"') else ""} \
      ~{if defined(limit_clique_size) then ("--limit_clique_size " +  '"' + limit_clique_size + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    edge_quasi_cut_off_cliques: "edge calculator option\\n[default: 0.99]"
    edge_quasi_cut_off_mixed: "edge calculator option\\n[default: 0.97]"
    edge_quasi_cut_off_single: "edge calculator option\\n[default: 0.95]"
    random_overlap_quality: "edge calculator option\\n[default: 0.9]"
    frame_shift_merge: "Reads will be clustered with\\nsingle nucleotide insertions or\\ndeletions. Use for PacBio data."
    min_overlap_cliques: "edge calculator option\\n[default: 0.9]"
    min_overlap_single: "edge calculator option\\n[default: 0.6]"
    all_el_frequencies: "variant calling is not supported"
    iterations: "Number of iterations.\\nhaploclique will stop if the\\nsuperreads converge.\\n[default: -1]"
    filter: "Filter out reads with low\\nfrequency at the end.\\n[default: 0.0]"
    no_singletons: "Filter out single read cliques\\nafter first iteration."
    significance: "Filter out reads witch are below\\n<num> standard deviations.\\n[default: 3.0]"
    log: "Write log to <file>."
    doc_haplotypes: "Used in simulation studies with known\\nhaplotypes to document which reads\\ncontributed to which final cliques (3 or 5)."
    no_prob_zero: "ignore the tail probabilites during edge\\ncalculation in <output>."
    gff: "Option to create GFF File from output. <output> is used as prefix."
    bam: "Option to create BAM File from output. <output> is used as prefix."
    max_cliques: "Set a threshold for the maximal number of cliques which\\nshould be considered in the next iteration."
    limit_clique_size: "Set a threshold to limit the size of cliques."
    clever: "use the original clever clique finder"
    bronk_er_bosch: "use the Bron-Kerbosch based clique finder"
    yet_dot: "-M FILE --mean_and_sd_filename=FILE     Required for option -I"
  }
  output {
    File out_stdout = stdout()
    File out_gff = "${in_gff}"
    File out_bam = "${in_bam}"
  }
}