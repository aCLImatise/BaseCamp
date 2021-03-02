version 1.0

task CentrifugeEvaluatepy {
  input {
    String? index_base_for_read
    Int? num_fragment
    Boolean? paired
    Float? error_rate
    String? rank_list
    String? program_list
    Boolean? runtime_only
    Boolean? no_sql
    Boolean? verbose
    Boolean? debug
    String index_base
  }
  command <<<
    centrifuge_evaluate_py \
      ~{index_base} \
      ~{if defined(index_base_for_read) then ("--index-base-for-read " +  '"' + index_base_for_read + '"') else ""} \
      ~{if defined(num_fragment) then ("--num-fragment " +  '"' + num_fragment + '"') else ""} \
      ~{if (paired) then "--paired" else ""} \
      ~{if defined(error_rate) then ("--error-rate " +  '"' + error_rate + '"') else ""} \
      ~{if defined(rank_list) then ("--rank-list " +  '"' + rank_list + '"') else ""} \
      ~{if defined(program_list) then ("--program-list " +  '"' + program_list + '"') else ""} \
      ~{if (runtime_only) then "--runtime-only" else ""} \
      ~{if (no_sql) then "--no-sql" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    index_base_for_read: "index base for read (default same as index base)"
    num_fragment: "Number of fragments in millions (default: 1)"
    paired: "Paired-end reads"
    error_rate: "per-base sequencing error rate (%) (default: 0.0)"
    rank_list: "A comma-separated list of ranks (default:\\nstrain,species,genus,family,order,class,phylum)"
    program_list: "A comma-separated list of aligners (default:\\ncentrifuge)"
    runtime_only: "Just check runtime without evaluation"
    no_sql: "Do not write results into a sqlite database"
    verbose: "also print some statistics to stderr"
    debug: "Debug"
    index_base: "Centrifuge index"
  }
  output {
    File out_stdout = stdout()
  }
}