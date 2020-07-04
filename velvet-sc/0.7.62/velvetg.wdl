version 1.0

task Velvetg {
  input {
    String? scaffolding
    Int? max_branch_length
    Float? max_divergence
    Int? max_gap_count
    Int? min_pair_count
    Float? max_coverage
    Int? long_mult_cut_off
    String? unused_reads
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
      ~{if defined(scaffolding) then ("-scaffolding " +  '"' + scaffolding + '"') else ""} \
      ~{if defined(max_branch_length) then ("-max_branch_length " +  '"' + max_branch_length + '"') else ""} \
      ~{if defined(max_divergence) then ("-max_divergence " +  '"' + max_divergence + '"') else ""} \
      ~{if defined(max_gap_count) then ("-max_gap_count " +  '"' + max_gap_count + '"') else ""} \
      ~{if defined(min_pair_count) then ("-min_pair_count " +  '"' + min_pair_count + '"') else ""} \
      ~{if defined(max_coverage) then ("-max_coverage " +  '"' + max_coverage + '"') else ""} \
      ~{if defined(long_mult_cut_off) then ("-long_mult_cutoff " +  '"' + long_mult_cut_off + '"') else ""} \
      ~{if defined(unused_reads) then ("-unused_reads " +  '"' + unused_reads + '"') else ""}
  >>>
  parameter_meta {
    scaffolding: ": scaffolding of contigs used paired end information (default: on)"
    max_branch_length: ": maximum length in base pair of bubble (default: 100)"
    max_divergence: ": maximum divergence rate between two branches in a bubble (default: 0.2)"
    max_gap_count: ": maximum number of gaps allowed in the alignment of the two branches of a bubble (default: 3)"
    min_pair_count: ": minimum number of paired end connections to justify the scaffolding of two long contigs (default: 10)"
    max_coverage: ": removal of high coverage nodes AFTER tour bus (default: no removal)"
    long_mult_cut_off: ": minimum number of long reads required to merge contigs (default: 2)"
    unused_reads: ": export unused reads in UnusedReads.fa file (default: no)"
    directory: ": working directory name"
    directory_slash_contigs_dot_fa: ": fasta file of contigs longer than twice hash length"
    directory_slash_stats_dot_txt: ": stats file (tab-spaced) useful for determining appropriate coverage cutoff"
    directory_slash_last_graph: ": special formatted file with all the information on the final graph"
    directory_slash_velvet_as_mdot_afg: ": (if requested) AMOS compatible assembly file"
  }
}