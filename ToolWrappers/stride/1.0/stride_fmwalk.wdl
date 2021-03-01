version 1.0

task StrideFmwalk {
  input {
    Boolean? verbose
    File? prefix
    File? outfile
    Int? threads
    String? algorithm
    Int? km_er_size
    Int? km_er_threshold
    Int? max_leaves
    Int? max_insert_size
    Int? min_overlap
    Int? max_overlap
    String stride
    String fm_index_walk
  }
  command <<<
    stride fmwalk \
      ~{stride} \
      ~{fm_index_walk} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(algorithm) then ("--algorithm " +  '"' + algorithm + '"') else ""} \
      ~{if defined(km_er_size) then ("--kmer-size " +  '"' + km_er_size + '"') else ""} \
      ~{if defined(km_er_threshold) then ("--kmer-threshold " +  '"' + km_er_threshold + '"') else ""} \
      ~{if defined(max_leaves) then ("--max-leaves " +  '"' + max_leaves + '"') else ""} \
      ~{if defined(max_insert_size) then ("--max-insertsize " +  '"' + max_insert_size + '"') else ""} \
      ~{if defined(min_overlap) then ("--min-overlap " +  '"' + min_overlap + '"') else ""} \
      ~{if defined(max_overlap) then ("--max-overlap " +  '"' + max_overlap + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "display verbose output"
    prefix: "use PREFIX for the names of the index files (default: prefix of the input file)"
    outfile: "write the corrected reads to FILE (default: READSFILE.ec.fa)"
    threads: "use NUM threads for the computation (default: 1)"
    algorithm: "specify the walking algorithm. STR must be hybrid (merge and kmerize) or merge. (default: hybrid)"
    km_er_size: "The length of the kmer to use. (default: 31)"
    km_er_threshold: "Attempt to correct kmers that are seen less than N times. (default: 3)"
    max_leaves: "Number of maximum leaves in the search tree (default: 32)"
    max_insert_size: "the maximum insert size (i.e. search depth) (deault: 400)"
    min_overlap: "the min overlap (default: 81)"
    max_overlap: "the max overlap (default: avg read length*0.9)"
    stride: ""
    fm_index_walk: ""
  }
  output {
    File out_stdout = stdout()
  }
}