version 1.0

task SgaOverlap {
  input {
    Boolean? verbose
    Int? threads
    Boolean? error_rate
    Int? min_overlap
    File? prefix
    File? target_file
    Boolean? exhaustive
    Boolean? exact
    Int? seed_length
    Int? seed_stride
    Int? sample_rate
  }
  command <<<
    sga overlap \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (error_rate) then "--error-rate" else ""} \
      ~{if defined(min_overlap) then ("--min-overlap " +  '"' + min_overlap + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(target_file) then ("--target-file " +  '"' + target_file + '"') else ""} \
      ~{if (exhaustive) then "--exhaustive" else ""} \
      ~{if (exact) then "--exact" else ""} \
      ~{if defined(seed_length) then ("--seed-length " +  '"' + seed_length + '"') else ""} \
      ~{if defined(seed_stride) then ("--seed-stride " +  '"' + seed_stride + '"') else ""} \
      ~{if defined(sample_rate) then ("--sample-rate " +  '"' + sample_rate + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "display verbose output"
    threads: "use NUM worker threads to compute the overlaps (default: no threading)"
    error_rate: "the maximum error rate allowed to consider two sequences aligned (default: exact matches only)"
    min_overlap: "minimum overlap required between two reads (default: 45)"
    prefix: "use PREFIX for the names of the index files (default: prefix of the input file)"
    target_file: "perform the overlap queries against the reads in FILE"
    exhaustive: "output all overlaps, including transitive edges"
    exact: "force the use of the exact-mode irreducible block algorithm. This is faster\\nbut requires that no substrings are present in the input set."
    seed_length: "force the seed length to be LEN. By default, the seed length in the overlap step\\nis calculated to guarantee all overlaps with --error-rate differences are found.\\nThis option removes the guarantee but will be (much) faster. As SGA can tolerate some\\nmissing edges, this option may be preferable for some data sets."
    seed_stride: "force the seed stride to be LEN. This parameter will be ignored unless --seed-length\\nis specified (see above). This parameter defaults to the same value as --seed-length"
    sample_rate: "sample the symbol counts every N symbols in the FM-index. Higher values use significantly\\nless memory at the cost of higher runtime. This value must be a power of 2 (default: 128)"
  }
  output {
    File out_stdout = stdout()
  }
}