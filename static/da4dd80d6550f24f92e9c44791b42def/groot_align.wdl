version 1.0

task GrootAlign {
  input {
    Float? cont_thresh
    Boolean? fast_a
    File? fast_q
    Directory? graph_dir
    Float? mink_merco_v
    Boolean? no_align
    Directory? index_dir
    File? log
    Int? processors
    Boolean? profiling
  }
  command <<<
    groot align \
      ~{if defined(cont_thresh) then ("--contThresh " +  '"' + cont_thresh + '"') else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if defined(fast_q) then ("--fastq " +  '"' + fast_q + '"') else ""} \
      ~{if defined(graph_dir) then ("--graphDir " +  '"' + graph_dir + '"') else ""} \
      ~{if defined(mink_merco_v) then ("--minKmerCov " +  '"' + mink_merco_v + '"') else ""} \
      ~{if (no_align) then "--noAlign" else ""} \
      ~{if defined(index_dir) then ("--indexDir " +  '"' + index_dir + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(processors) then ("--processors " +  '"' + processors + '"') else ""} \
      ~{if (profiling) then "--profiling" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cont_thresh: "containment threshold for the LSH ensemble (default 0.99)"
    fast_a: "if set, the input will be treated as fasta sequence(s) (experimental feature)"
    fast_q: "FASTQ file(s) to align"
    graph_dir: "directory to save variation graphs to (default \\\"./groot-graphs-20200909213621\\\")"
    mink_merco_v: "minimum number of k-mers covering each base of a graph segment (default 1)"
    no_align: "if set, no exact alignment will be performed - graphs will be weighted using approximate read mappings"
    index_dir: "directory for to write/read the GROOT index files"
    log: "filename for log file (default \\\"groot.log\\\")"
    processors: "number of processors to use (default 1)"
    profiling: "create the files needed to profile GROOT using the go tool pprof"
  }
  output {
    File out_stdout = stdout()
  }
}