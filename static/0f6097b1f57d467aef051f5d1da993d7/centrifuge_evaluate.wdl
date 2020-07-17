version 1.0

task CentrifugeEvaluate.py {
  input {
    String? index_base_for_read
    String? num_fragment
    Boolean? paired
    String? error_rate
    String? rank_list
    String? program_list
    Boolean? runtime_only
    Boolean? no_sql
    Boolean? verbose
    Boolean? debug
    String index_base
  }
  command <<<
    centrifuge_evaluate.py \
      ~{index_base} \
      ~{if defined(index_base_for_read) then ("--index-base-for-read " +  '"' + index_base_for_read + '"') else ""} \
      ~{if defined(num_fragment) then ("--num-fragment " +  '"' + num_fragment + '"') else ""} \
      ~{true="--paired" false="" paired} \
      ~{if defined(error_rate) then ("--error-rate " +  '"' + error_rate + '"') else ""} \
      ~{if defined(rank_list) then ("--rank-list " +  '"' + rank_list + '"') else ""} \
      ~{if defined(program_list) then ("--program-list " +  '"' + program_list + '"') else ""} \
      ~{true="--runtime-only" false="" runtime_only} \
      ~{true="--no-sql" false="" no_sql} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    index_base_for_read: "index base for read (default same as index base)"
    num_fragment: "Number of fragments in millions (default: 1)"
    paired: "Paired-end reads"
    error_rate: "per-base sequencing error rate (%) (default: 0.0)"
    rank_list: "A comma-separated list of ranks (default: strain,species,genus,family,order,class,phylum)"
    program_list: "A comma-separated list of aligners (default: centrifuge)"
    runtime_only: "Just check runtime without evaluation"
    no_sql: "Do not write results into a sqlite database"
    verbose: "also print some statistics to stderr"
    debug: "Debug"
    index_base: "Centrifuge index"
  }
}