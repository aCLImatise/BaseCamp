version 1.0

task Hulk {
  input {
    Int? km_er_size
    File? log
    Directory? outfile
    Int? processors
    Boolean? profiling
  }
  command <<<
    hulk \
      ~{if defined(km_er_size) then ("--kmerSize " +  '"' + km_er_size + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(outfile) then ("--outFile " +  '"' + outfile + '"') else ""} \
      ~{if defined(processors) then ("--processors " +  '"' + processors + '"') else ""} \
      ~{if (profiling) then "--profiling" else ""}
  >>>
  parameter_meta {
    km_er_size: "minimizer k-mer length (default 21)"
    log: "filename for log file, if omitted then STDOUT used by default"
    outfile: "directory and basename for saving the outfile(s) (default \\\"./hulk-20200909212820\\\")"
    processors: "number of processors to use (default 1)"
    profiling: "create the files needed to profile HULK using the go tool pprof"
  }
  output {
    File out_stdout = stdout()
  }
}