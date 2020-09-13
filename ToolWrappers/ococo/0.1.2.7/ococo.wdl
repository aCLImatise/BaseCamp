version 1.0

task Ococo {
  input {
    File? input_sambam_file
    File? fast_a_ref
    File? stats_in
    File? fast_a_cons
    File? stats_out
    File? vcf_cons
    File? pile_up
    Boolean? verbose
    Int? counters
    String? mode
    String? strategy
    Int? min_mq
    Int? min_bq
    Int? ref_weight
    Int? min_cov
    Float? maj_th_res
    String? other
  }
  command <<<
    ococo \
      ~{other} \
      ~{if defined(input_sambam_file) then ("--input " +  '"' + input_sambam_file + '"') else ""} \
      ~{if defined(fast_a_ref) then ("--fasta-ref " +  '"' + fast_a_ref + '"') else ""} \
      ~{if defined(stats_in) then ("--stats-in " +  '"' + stats_in + '"') else ""} \
      ~{if defined(fast_a_cons) then ("--fasta-cons " +  '"' + fast_a_cons + '"') else ""} \
      ~{if defined(stats_out) then ("--stats-out " +  '"' + stats_out + '"') else ""} \
      ~{if defined(vcf_cons) then ("--vcf-cons " +  '"' + vcf_cons + '"') else ""} \
      ~{if defined(pile_up) then ("--pileup " +  '"' + pile_up + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(counters) then ("--counters " +  '"' + counters + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(strategy) then ("--strategy " +  '"' + strategy + '"') else ""} \
      ~{if defined(min_mq) then ("--min-MQ " +  '"' + min_mq + '"') else ""} \
      ~{if defined(min_bq) then ("--min-BQ " +  '"' + min_bq + '"') else ""} \
      ~{if defined(ref_weight) then ("--ref-weight " +  '"' + ref_weight + '"') else ""} \
      ~{if defined(min_cov) then ("--min-cov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(maj_th_res) then ("--maj-thres " +  '"' + maj_th_res + '"') else ""}
  >>>
  parameter_meta {
    input_sambam_file: "input SAM/BAM file (- for standard input)"
    fast_a_ref: "initial FASTA reference (otherwise seq of N's is used)"
    stats_in: "input statistics"
    fast_a_cons: "FASTA file with consensus"
    stats_out: "output statistics"
    vcf_cons: "VCF file with updates of consensus (- for standard output)"
    pile_up: "truncated pileup (- for standard output)"
    verbose: "verbose mode (report every update of a counter)"
    counters: "counter configuration: [ococo16]\\n- ococo16 (3b/counter, 16b/position)\\n- ococo32 (7b/counter, 32b/position)\\n- ococo64 (15b/counter, 64b/position)"
    mode: "mode: [batch]\\n- real-time (updates reported immediately)\\n- batch (updates reported after end of algn stream)"
    strategy: "strategy for updates: [majority]\\n- majority (update to majority base)\\n- stochastic (update to stochastically drawn base)\\n- no-updates (no updates, only counters updated)"
    min_mq: "skip alignments with mapping quality smaller than INT [1]"
    min_bq: "skip bases with base quality smaller than INT [13]"
    ref_weight: "initial counter value for nucleotides from ref [0]"
    min_cov: "minimum coverage required for update [2]"
    maj_th_res: "majority threshold [0.51]"
    other: ""
  }
  output {
    File out_stdout = stdout()
    File out_vcf_cons = "${in_vcf_cons}"
  }
}