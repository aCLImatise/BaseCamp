version 1.0

task Velvetg {
  input {
    String? cov_cut_off
    Int? ins_length
    String? read_tr_kg
    Int? min_contig_lgth
    File? amos_file
    String? exp_cov
    Int? ins_length_two
    Int? ins_length_long
    String? scaffolding
    Int? max_branch_length
    Float? max_divergence
    Int? max_gap_count
    Int? min_pair_count
    String? max_coverage
    Int? long_mult_cut_off
    File? unused_reads
    Directory directory
  }
  command <<<
    velvetg \
      ~{directory} \
      ~{if defined(cov_cut_off) then ("-cov_cutoff " +  '"' + cov_cut_off + '"') else ""} \
      ~{if defined(ins_length) then ("-ins_length " +  '"' + ins_length + '"') else ""} \
      ~{if defined(read_tr_kg) then ("-read_trkg " +  '"' + read_tr_kg + '"') else ""} \
      ~{if defined(min_contig_lgth) then ("-min_contig_lgth " +  '"' + min_contig_lgth + '"') else ""} \
      ~{if defined(amos_file) then ("-amos_file " +  '"' + amos_file + '"') else ""} \
      ~{if defined(exp_cov) then ("-exp_cov " +  '"' + exp_cov + '"') else ""} \
      ~{if defined(ins_length_two) then ("-ins_length2 " +  '"' + ins_length_two + '"') else ""} \
      ~{if defined(ins_length_long) then ("-ins_length_long " +  '"' + ins_length_long + '"') else ""} \
      ~{if defined(scaffolding) then ("-scaffolding " +  '"' + scaffolding + '"') else ""} \
      ~{if defined(max_branch_length) then ("-max_branch_length " +  '"' + max_branch_length + '"') else ""} \
      ~{if defined(max_divergence) then ("-max_divergence " +  '"' + max_divergence + '"') else ""} \
      ~{if defined(max_gap_count) then ("-max_gap_count " +  '"' + max_gap_count + '"') else ""} \
      ~{if defined(min_pair_count) then ("-min_pair_count " +  '"' + min_pair_count + '"') else ""} \
      ~{if defined(max_coverage) then ("-max_coverage " +  '"' + max_coverage + '"') else ""} \
      ~{if defined(long_mult_cut_off) then ("-long_mult_cutoff " +  '"' + long_mult_cut_off + '"') else ""} \
      ~{if defined(unused_reads) then ("-unused_reads " +  '"' + unused_reads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cov_cut_off: ": removal of low coverage nodes AFTER tour bus or allow the system to infer it\\n(default: no removal)"
    ins_length: ": expected distance between two paired end reads (default: no read pairing)"
    read_tr_kg: ": tracking of short read positions in assembly (default: no tracking)"
    min_contig_lgth: ": minimum contig length exported to contigs.fa file (default: hash length * 2)"
    amos_file: ": export assembly to AMOS file (default: no export)"
    exp_cov: ": expected coverage of unique regions or allow the system to infer it\\n(default: no long or paired-end read resolution)"
    ins_length_two: ": expected distance between two paired-end reads in the second short-read dataset (default: no read pairing)"
    ins_length_long: ": expected distance between two long paired-end reads (default: no read pairing)"
    scaffolding: ": scaffolding of contigs used paired end information (default: on)"
    max_branch_length: ": maximum length in base pair of bubble (default: 100)"
    max_divergence: ": maximum divergence rate between two branches in a bubble (default: 0.2)"
    max_gap_count: ": maximum number of gaps allowed in the alignment of the two branches of a bubble (default: 3)"
    min_pair_count: ": minimum number of paired end connections to justify the scaffolding of two long contigs (default: 10)"
    max_coverage: ": removal of high coverage nodes AFTER tour bus (default: no removal)"
    long_mult_cut_off: ": minimum number of long reads required to merge contigs (default: 2)"
    unused_reads: ": export unused reads in UnusedReads.fa file (default: no)"
    directory: ": working directory name"
  }
  output {
    File out_stdout = stdout()
  }
}