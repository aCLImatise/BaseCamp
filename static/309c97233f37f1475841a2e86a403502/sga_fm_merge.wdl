version 1.0

task SgaFmMerge {
  input {
    Boolean? verbose
    String? prefix
    String? threads
    String? min_overlap
    File? outfile
    String? option
  }
  command <<<
    sga fm-merge \
      ~{option} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(min_overlap) then ("--min-overlap " +  '"' + min_overlap + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""}
  >>>
  parameter_meta {
    verbose: "display verbose output"
    prefix: "use PREFIX for the names of the index files (default: prefix of the input file)"
    threads: "use NUM worker threads (default: no threading)"
    min_overlap: "minimum overlap required between two reads to merge (default: 45)"
    outfile: "write the merged sequences to FILE (default: basename.merged.fa)"
    option: ""
  }
}