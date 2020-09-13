version 1.0

task Velvetg {
  input {
    String? cov_cut_off
    Int? ins_length
    String? read_tr_kg
    Int? min_contig_lgth
    File? amos_file
    String? exp_cov
    String? long_cov_cut_off
    Int? ins_length_long
    String? scaffolding
    Int? max_branch_length
    Float? max_divergence
    Int? max_gap_count
    Int? min_pair_count
    String? max_coverage
    Int? coverage_mask
    Int? long_mult_cut_off
    File? unused_reads
    String? alignments
    String? export_filtered
    String? clean
    String? very_clean
    Float? paired_exp_fraction
    Boolean? short_mate_paired
    String? conserve_long
    Directory directory
    Directory directory_slash_contigs_dot_fa
    Directory directory_slash_stats_dot_txt
    Directory directory_slash_last_graph
    Directory directory_slash_velvet_as_mdot_afg
  }
  command <<<
    velvetg \
      ~{directory} \
      ~{directory_slash_contigs_dot_fa} \
      ~{directory_slash_stats_dot_txt} \
      ~{directory_slash_last_graph} \
      ~{directory_slash_velvet_as_mdot_afg} \
      ~{if defined(cov_cut_off) then ("-cov_cutoff " +  '"' + cov_cut_off + '"') else ""} \
      ~{if defined(ins_length) then ("-ins_length " +  '"' + ins_length + '"') else ""} \
      ~{if defined(read_tr_kg) then ("-read_trkg " +  '"' + read_tr_kg + '"') else ""} \
      ~{if defined(min_contig_lgth) then ("-min_contig_lgth " +  '"' + min_contig_lgth + '"') else ""} \
      ~{if defined(amos_file) then ("-amos_file " +  '"' + amos_file + '"') else ""} \
      ~{if defined(exp_cov) then ("-exp_cov " +  '"' + exp_cov + '"') else ""} \
      ~{if defined(long_cov_cut_off) then ("-long_cov_cutoff " +  '"' + long_cov_cut_off + '"') else ""} \
      ~{if defined(ins_length_long) then ("-ins_length_long " +  '"' + ins_length_long + '"') else ""} \
      ~{if defined(scaffolding) then ("-scaffolding " +  '"' + scaffolding + '"') else ""} \
      ~{if defined(max_branch_length) then ("-max_branch_length " +  '"' + max_branch_length + '"') else ""} \
      ~{if defined(max_divergence) then ("-max_divergence " +  '"' + max_divergence + '"') else ""} \
      ~{if defined(max_gap_count) then ("-max_gap_count " +  '"' + max_gap_count + '"') else ""} \
      ~{if defined(min_pair_count) then ("-min_pair_count " +  '"' + min_pair_count + '"') else ""} \
      ~{if defined(max_coverage) then ("-max_coverage " +  '"' + max_coverage + '"') else ""} \
      ~{if defined(coverage_mask) then ("-coverage_mask " +  '"' + coverage_mask + '"') else ""} \
      ~{if defined(long_mult_cut_off) then ("-long_mult_cutoff " +  '"' + long_mult_cut_off + '"') else ""} \
      ~{if defined(unused_reads) then ("-unused_reads " +  '"' + unused_reads + '"') else ""} \
      ~{if defined(alignments) then ("-alignments " +  '"' + alignments + '"') else ""} \
      ~{if defined(export_filtered) then ("-exportFiltered " +  '"' + export_filtered + '"') else ""} \
      ~{if defined(clean) then ("-clean " +  '"' + clean + '"') else ""} \
      ~{if defined(very_clean) then ("-very_clean " +  '"' + very_clean + '"') else ""} \
      ~{if defined(paired_exp_fraction) then ("-paired_exp_fraction " +  '"' + paired_exp_fraction + '"') else ""} \
      ~{if (short_mate_paired) then "-shortMatePaired" else ""} \
      ~{if defined(conserve_long) then ("-conserveLong " +  '"' + conserve_long + '"') else ""}
  >>>
  parameter_meta {
    cov_cut_off: ": removal of low coverage nodes AFTER tour bus or allow the system to infer it\\n(default: no removal)"
    ins_length: ": expected distance between two paired end reads (default: no read pairing)"
    read_tr_kg: ": tracking of short read positions in assembly (default: no tracking)"
    min_contig_lgth: ": minimum contig length exported to contigs.fa file (default: hash length * 2)"
    amos_file: ": export assembly to AMOS file (default: no export)"
    exp_cov: ": expected coverage of unique regions or allow the system to infer it\\n(default: no long or paired-end read resolution)"
    long_cov_cut_off: ": removal of nodes with low long-read coverage AFTER tour bus\\n(default: no removal)"
    ins_length_long: ": expected distance between two long paired-end reads (default: no read pairing)"
    scaffolding: ": scaffolding of contigs used paired end information (default: on)"
    max_branch_length: ": maximum length in base pair of bubble (default: 100)"
    max_divergence: ": maximum divergence rate between two branches in a bubble (default: 0.2)"
    max_gap_count: ": maximum number of gaps allowed in the alignment of the two branches of a bubble (default: 3)"
    min_pair_count: ": minimum number of paired end connections to justify the scaffolding of two long contigs (default: 5)"
    max_coverage: ": removal of high coverage nodes AFTER tour bus (default: no removal)"
    coverage_mask: ": minimum coverage required for confident regions of contigs (default: 1)"
    long_mult_cut_off: ": minimum number of long reads required to merge contigs (default: 2)"
    unused_reads: ": export unused reads in UnusedReads.fa file (default: no)"
    alignments: ": export a summary of contig alignment to the reference sequences (default: no)"
    export_filtered: ": export the long nodes which were eliminated by the coverage filters (default: no)"
    clean: ": remove all the intermediary files which are useless for recalculation (default : no)"
    very_clean: ": remove all the intermediary files (no recalculation possible) (default: no)"
    paired_exp_fraction: ": remove all the paired end connections which less than the specified fraction of the expected count (default: 0.1)"
    short_mate_paired: "* <yes|no>      : for mate-pair libraries, indicate that the library might be contaminated with paired-end reads (default no)"
    conserve_long: ": preserve sequences with long reads in them (default no)"
    directory: ": working directory name"
    directory_slash_contigs_dot_fa: ": fasta file of contigs longer than twice hash length"
    directory_slash_stats_dot_txt: ": stats file (tab-spaced) useful for determining appropriate coverage cutoff"
    directory_slash_last_graph: ": special formatted file with all the information on the final graph"
    directory_slash_velvet_as_mdot_afg: ": (if requested) AMOS compatible assembly file"
  }
  output {
    File out_stdout = stdout()
  }
}