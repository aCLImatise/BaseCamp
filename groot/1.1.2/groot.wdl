version 1.0

task Groot {
  input {
    String? index_dir
    String? log
    Int? processors
    Boolean? profiling
  }
  command <<<
    groot \
      ~{if defined(index_dir) then ("--indexDir " +  '"' + index_dir + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(processors) then ("--processors " +  '"' + processors + '"') else ""} \
      ~{true="--profiling" false="" profiling}
  >>>
  parameter_meta {
    index_dir: "directory for to write/read the GROOT index files"
    log: "filename for log file (default \"groot.log\")"
    processors: "number of processors to use (default 1)"
    profiling: "create the files needed to profile GROOT using the go tool pprof"
  }
}