version 1.0

task GrootAlign {
  input {
    Float? cont_thresh
    Boolean? fast_a
    String? fast_q
    String? graph_dir
    Float? mink_merco_v
    Boolean? no_align
    String? index_dir
    String? log
    Int? processors
    Boolean? profiling
    String? flags
  }
  command <<<
    groot align \
      ~{flags} \
      ~{if defined(cont_thresh) then ("--contThresh " +  '"' + cont_thresh + '"') else ""} \
      ~{true="--fasta" false="" fast_a} \
      ~{if defined(fast_q) then ("--fastq " +  '"' + fast_q + '"') else ""} \
      ~{if defined(graph_dir) then ("--graphDir " +  '"' + graph_dir + '"') else ""} \
      ~{if defined(mink_merco_v) then ("--minKmerCov " +  '"' + mink_merco_v + '"') else ""} \
      ~{true="--noAlign" false="" no_align} \
      ~{if defined(index_dir) then ("--indexDir " +  '"' + index_dir + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(processors) then ("--processors " +  '"' + processors + '"') else ""} \
      ~{true="--profiling" false="" profiling}
  >>>
  parameter_meta {
    cont_thresh: "containment threshold for the LSH ensemble (default 0.99)"
    fast_a: "if set, the input will be treated as fasta sequence(s) (experimental feature)"
    fast_q: "FASTQ file(s) to align"
    graph_dir: "directory to save variation graphs to (default \"./groot-graphs-20200623143644\")"
    mink_merco_v: "minimum number of k-mers covering each base of a graph segment (default 1)"
    no_align: "if set, no exact alignment will be performed - graphs will be weighted using approximate read mappings"
    index_dir: "directory for to write/read the GROOT index files"
    log: "filename for log file (default \"groot.log\")"
    processors: "number of processors to use (default 1)"
    profiling: "create the files needed to profile GROOT using the go tool pprof"
    flags: ""
  }
}