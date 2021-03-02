version 1.0

task SgaFmmerge {
  input {
    Boolean? verbose
    File? prefix
    Int? threads
    Int? min_overlap
    File? outfile
  }
  command <<<
    sga fm_merge \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(min_overlap) then ("--min-overlap " +  '"' + min_overlap + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "display verbose output"
    prefix: "use PREFIX for the names of the index files (default: prefix of the input file)"
    threads: "use NUM worker threads (default: no threading)"
    min_overlap: "minimum overlap required between two reads to merge (default: 45)"
    outfile: "write the merged sequences to FILE (default: basename.merged.fa)"
  }
  output {
    File out_stdout = stdout()
  }
}