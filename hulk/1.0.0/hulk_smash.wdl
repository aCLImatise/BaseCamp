version 1.0

task HulkSmash {
  input {
    String? algorithm
    Boolean? banner_matrix
    String? metric
    Boolean? recursive
    String? sketch_dir
    String? km_er_size
    String? log
    String? outfile
    Int? processors
    Boolean? profiling
    String? flags
  }
  command <<<
    hulk smash \
      ~{flags} \
      ~{if defined(algorithm) then ("--algorithm " +  '"' + algorithm + '"') else ""} \
      ~{true="--bannerMatrix" false="" banner_matrix} \
      ~{if defined(metric) then ("--metric " +  '"' + metric + '"') else ""} \
      ~{true="--recursive" false="" recursive} \
      ~{if defined(sketch_dir) then ("--sketchDir " +  '"' + sketch_dir + '"') else ""} \
      ~{if defined(km_er_size) then ("--kmerSize " +  '"' + km_er_size + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(outfile) then ("--outFile " +  '"' + outfile + '"') else ""} \
      ~{if defined(processors) then ("--processors " +  '"' + processors + '"') else ""} \
      ~{true="--profiling" false="" profiling}
  >>>
  parameter_meta {
    algorithm: "tells HULK which sketching algorithm to use [histosketch kmv khf] (default \"histosketch\")"
    banner_matrix: "write a matrix file for banner"
    metric: "tells HULK which distance metric to use [jaccard weightedjaccard] (default \"jaccard\")"
    recursive: "recursively search the supplied sketch directory (-d)"
    sketch_dir: "the directory containing the sketches to smash (compare)... (default \"./\")"
    km_er_size: "minimizer k-mer length (default 21)"
    log: "filename for log file, if omitted then STDOUT used by default"
    outfile: "directory and basename for saving the outfile(s) (default \"./hulk-20200619041003\")"
    processors: "number of processors to use (default 1)"
    profiling: "create the files needed to profile HULK using the go tool pprof"
    flags: ""
  }
}