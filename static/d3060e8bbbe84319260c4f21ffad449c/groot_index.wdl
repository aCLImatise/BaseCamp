version 1.0

task GrootIndex {
  input {
    Int? km_er_size
    Int? max_k
    Int? max_sketch_span
    Directory? msa_dir
    Int? num_part
    Int? sketch_size
    Int? window_size
    Directory? index_dir
    File? log
    Int? processors
    Boolean? profiling
  }
  command <<<
    groot index \
      ~{if defined(km_er_size) then ("--kmerSize " +  '"' + km_er_size + '"') else ""} \
      ~{if defined(max_k) then ("--maxK " +  '"' + max_k + '"') else ""} \
      ~{if defined(max_sketch_span) then ("--maxSketchSpan " +  '"' + max_sketch_span + '"') else ""} \
      ~{if defined(msa_dir) then ("--msaDir " +  '"' + msa_dir + '"') else ""} \
      ~{if defined(num_part) then ("--numPart " +  '"' + num_part + '"') else ""} \
      ~{if defined(sketch_size) then ("--sketchSize " +  '"' + sketch_size + '"') else ""} \
      ~{if defined(window_size) then ("--windowSize " +  '"' + window_size + '"') else ""} \
      ~{if defined(index_dir) then ("--indexDir " +  '"' + index_dir + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(processors) then ("--processors " +  '"' + processors + '"') else ""} \
      ~{if (profiling) then "--profiling" else ""}
  >>>
  parameter_meta {
    km_er_size: "size of k-mer (default 31)"
    max_k: "maxK in the LSH Ensemble (default 4)"
    max_sketch_span: "max number of identical neighbouring sketches permitted in any graph traversal (default 30)"
    msa_dir: "directory containing the clustered references (MSA files) - required"
    num_part: "number of partitions in the LSH Ensemble (default 8)"
    sketch_size: "size of MinHash sketch (default 21)"
    window_size: "size of window to sketch graph traversals with (default 100)"
    index_dir: "directory for to write/read the GROOT index files"
    log: "filename for log file (default \\\"groot.log\\\")"
    processors: "number of processors to use (default 1)"
    profiling: "create the files needed to profile GROOT using the go tool pprof"
  }
  output {
    File out_stdout = stdout()
  }
}