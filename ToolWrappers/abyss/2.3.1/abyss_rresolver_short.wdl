version 1.0

task Abyssrresolvershort {
  input {
    Int? bloom_size
    File? graph
    File? contigs
    Int? threads
    Int? km_er
    String? hist
    File? threshold
    Int? extract
    Int? min_tests
    Int? max_tests
    Int? branching
    Int? r_mer
    Boolean? approx_factor
    Int? quality_threshold
    Boolean? error_correction
    File? supported
    File? unsupported
    Boolean? adj
    Boolean? as_qg
    Boolean? dot
    Boolean? gfa
    Boolean? gfa_one
    Boolean? gfa_two
    Boolean? gv
    Boolean? sam
    Boolean? verbose
  }
  command <<<
    abyss_rresolver_short \
      ~{if defined(bloom_size) then ("--bloom-size " +  '"' + bloom_size + '"') else ""} \
      ~{if defined(graph) then ("--graph " +  '"' + graph + '"') else ""} \
      ~{if defined(contigs) then ("--contigs " +  '"' + contigs + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(hist) then ("--hist " +  '"' + hist + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(extract) then ("--extract " +  '"' + extract + '"') else ""} \
      ~{if defined(min_tests) then ("--min-tests " +  '"' + min_tests + '"') else ""} \
      ~{if defined(max_tests) then ("--max-tests " +  '"' + max_tests + '"') else ""} \
      ~{if defined(branching) then ("--branching " +  '"' + branching + '"') else ""} \
      ~{if defined(r_mer) then ("--rmer " +  '"' + r_mer + '"') else ""} \
      ~{if (approx_factor) then "--approx-factor" else ""} \
      ~{if defined(quality_threshold) then ("--quality--threshold " +  '"' + quality_threshold + '"') else ""} \
      ~{if (error_correction) then "--error-correction" else ""} \
      ~{if defined(supported) then ("--supported " +  '"' + supported + '"') else ""} \
      ~{if defined(unsupported) then ("--unsupported " +  '"' + unsupported + '"') else ""} \
      ~{if (adj) then "--adj" else ""} \
      ~{if (as_qg) then "--asqg" else ""} \
      ~{if (dot) then "--dot" else ""} \
      ~{if (gfa) then "--gfa" else ""} \
      ~{if (gfa_one) then "--gfa1" else ""} \
      ~{if (gfa_two) then "--gfa2" else ""} \
      ~{if (gv) then "--gv" else ""} \
      ~{if (sam) then "--sam" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/abyss:2.3.1--hd403d74_0"
  }
  parameter_meta {
    bloom_size: "read Bloom filter size. Unit suffixes 'K' (kilobytes), 'M' (megabytes), or 'G' (gigabytes) may be used. [required]"
    graph: "write the contig adjacency graph to FILE. [required]"
    contigs: "write the contigs to FILE. [required]"
    threads: "use N parallel threads [1]"
    km_er: "assembly k-mer size"
    hist: "write the algorithm histograms with the given prefix. Histograms are omitted if no prefix is given."
    threshold: "set path support threshold to N. [4]"
    extract: "extract N r-mers per read. [4]"
    min_tests: "set minimum number of sliding window moves to N. Cannot be higher than 127. [20]"
    max_tests: "set maximum number of sliding window moves to N. Cannot be higher than 127. [36]"
    branching: "set maximum number of branching paths to N. [75]"
    r_mer: "explicitly set r value (k value used by rresolver). The number of set r values should be equal to the number of read sizes."
    approx_factor: "explicitly set coverage approximation factor."
    quality_threshold: "minimum quality all bases in rmers should have, on average. [35] (UNUSED)"
    error_correction: "enable correction of a 1bp error in kmers. [false]"
    supported: "write supported paths to FILE."
    unsupported: "write unsupported paths to FILE.\\nUsed for path sequence quality check."
    adj: "output the graph in ADJ format [default]"
    as_qg: "output the graph in ASQG format"
    dot: "output the graph in GraphViz format"
    gfa: "output the graph in GFA1 format"
    gfa_one: "output the graph in GFA1 format"
    gfa_two: "output the graph in GFA2 format"
    gv: "output the graph in GraphViz format"
    sam: "output the graph in SAM format"
    verbose: "display verbose output"
  }
  output {
    File out_stdout = stdout()
  }
}