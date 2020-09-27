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
    String clever
    String bronk_er_bosch
  }
  command <<<
    haploclique \
      ~{clever} \
      ~{bronk_er_bosch} \
      ~{if defined(edge_quasi_cut_off_cliques) then ("--edge_quasi_cutoff_cliques " +  '"' + edge_quasi_cut_off_cliques + '"') else ""} \
      ~{if defined(edge_quasi_cut_off_mixed) then ("--edge_quasi_cutoff_mixed " +  '"' + edge_quasi_cut_off_mixed + '"') else ""} \
      ~{if defined(edge_quasi_cut_off_single) then ("--edge_quasi_cutoff_single " +  '"' + edge_quasi_cut_off_single + '"') else ""} \
      ~{if defined(random_overlap_quality) then ("--random_overlap_quality " +  '"' + random_overlap_quality + '"') else ""} \
      ~{if (frame_shift_merge) then "--frame_shift_merge" else ""} \
      ~{if defined(min_overlap_cliques) then ("--min_overlap_cliques " +  '"' + min_overlap_cliques + '"') else ""} \
      ~{if defined(min_overlap_single) then ("--min_overlap_single " +  '"' + min_overlap_single + '"') else ""} \
      ~{if defined(all_el_frequencies) then ("--allel_frequencies " +  '"' + all_el_frequencies + '"') else ""}
  >>>
  parameter_meta {
    edge_quasi_cut_off_cliques: "edge calculator option\\n[default: 0.99]"
    edge_quasi_cut_off_mixed: "edge calculator option\\n[default: 0.97]"
    edge_quasi_cut_off_single: "edge calculator option\\n[default: 0.95]"
    random_overlap_quality: "edge calculator option\\n[default: 0.9]"
    frame_shift_merge: "Reads will be clustered with\\nsingle nucleotide insertions or\\ndeletions. Use for PacBio data."
    min_overlap_cliques: "edge calculator option\\n[default: 0.9]"
    min_overlap_single: "edge calculator option\\n[default: 0.6]"
    all_el_frequencies: "-I FILE --call_indels=FILE              variant calling is not supported\\nyet.\\n-M FILE --mean_and_sd_filename=FILE     Required for option -I\\n-p NUM --indel_edge_sig_level=NUM       [default: 0.2]\\n-i NUM --iterations=NUM                 Number of iterations.\\nhaploclique will stop if the\\nsuperreads converge.\\n[default: -1]\\n-f NUM --filter=NUM                     Filter out reads with low\\nfrequency at the end.\\n[default: 0.0]\\n-n --no_singletons                          Filter out single read cliques\\nafter first iteration.\\n-s NUM --significance=NUM               Filter out reads witch are below\\n<num> standard deviations.\\n[default: 3.0]\\n-L FILE --log=FILE                       Write log to <file>.\\n-d NUM --doc_haplotypes=NUM              Used in simulation studies with known\\nhaplotypes to document which reads\\ncontributed to which final cliques (3 or 5).\\n-p0 --no_prob0                            ignore the tail probabilites during edge\\ncalculation in <output>.\\n-gff --gff                               Option to create GFF File from output. <output> is used as prefix.\\n-bam --bam                               Option to create BAM File from output. <output> is used as prefix.\\n-mc NUM --max_cliques=NUM                Set a threshold for the maximal number of cliques which\\nshould be considered in the next iteration.\\n-lc NUM --limit_clique_size=NUM          Set a threshold to limit the size of cliques.\\n-h --help                                Display this help text\\n-v --version                             Display version\\n"
    clever: "use the original clever clique finder"
    bronk_er_bosch: "use the Bron-Kerbosch based clique finder"
  }
  output {
    File out_stdout = stdout()
  }
}