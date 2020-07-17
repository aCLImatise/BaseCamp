version 1.0

task StrideCorrect {
  input {
    Boolean? verbose
    String? prefix
    File? outfile
    String? threads
    Boolean? discard
    String? sample_rate
    String? algorithm
    File? metrics
    String? km_er_size
    String? km_er_threshold
    String? km_er_rounds
    Boolean? learn
    Boolean? error_rate
    String? min_overlap
    Int? conflict
    String? seed_length
    String? seed_stride
    String? branch_cut_off
    String? rounds
    String? option
  }
  command <<<
    stride correct \
      ~{option} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--discard" false="" discard} \
      ~{if defined(sample_rate) then ("--sample-rate " +  '"' + sample_rate + '"') else ""} \
      ~{if defined(algorithm) then ("--algorithm " +  '"' + algorithm + '"') else ""} \
      ~{if defined(metrics) then ("--metrics " +  '"' + metrics + '"') else ""} \
      ~{if defined(km_er_size) then ("--kmer-size " +  '"' + km_er_size + '"') else ""} \
      ~{if defined(km_er_threshold) then ("--kmer-threshold " +  '"' + km_er_threshold + '"') else ""} \
      ~{if defined(km_er_rounds) then ("--kmer-rounds " +  '"' + km_er_rounds + '"') else ""} \
      ~{true="--learn" false="" learn} \
      ~{true="--error-rate" false="" error_rate} \
      ~{if defined(min_overlap) then ("--min-overlap " +  '"' + min_overlap + '"') else ""} \
      ~{if defined(conflict) then ("--conflict " +  '"' + conflict + '"') else ""} \
      ~{if defined(seed_length) then ("--seed-length " +  '"' + seed_length + '"') else ""} \
      ~{if defined(seed_stride) then ("--seed-stride " +  '"' + seed_stride + '"') else ""} \
      ~{if defined(branch_cut_off) then ("--branch-cutoff " +  '"' + branch_cut_off + '"') else ""} \
      ~{if defined(rounds) then ("--rounds " +  '"' + rounds + '"') else ""}
  >>>
  parameter_meta {
    verbose: "display verbose output"
    prefix: "use PREFIX for the names of the index files (default: prefix of the input file)"
    outfile: "write the corrected reads to FILE (default: READSFILE.ec.fa)"
    threads: "use NUM threads for the computation (default: 1)"
    discard: "detect and discard low-quality reads"
    sample_rate: "use occurrence array sample rate of N in the FM-index. Higher values use significantly less memory at the cost of higher runtime. This value must be a power of 2 (default: 128)"
    algorithm: "specify the correction algorithm to use. STR must be one of kmer, hybrid, overlap. (default: kmer)"
    metrics: "collect error correction metrics (error rate by position in read, etc) and write them to FILE"
    km_er_size: "The length of the kmer to use. (default: 31)"
    km_er_threshold: "Attempt to correct kmers that are seen less than N times. (default: 3)"
    km_er_rounds: "Perform N rounds of k-mer correction, correcting up to N bases (default: 10)"
    learn: "Attempt to learn the k-mer correction threshold (experimental). Overrides -x parameter."
    error_rate: "the maximum error rate allowed between two sequences to consider them overlapped (default: 0.04)"
    min_overlap: "minimum overlap required between two reads (default: 45)"
    conflict: "use INT as the threshold to detect a conflicted base in the multi-overlap (default: 5)"
    seed_length: "force the seed length to be LEN. By default, the seed length in the overlap step is calculated to guarantee all overlaps with --error-rate differences are found. This option removes the guarantee but will be (much) faster. As SGA can tolerate some missing edges, this option may be preferable for some data sets."
    seed_stride: "force the seed stride to be LEN. This parameter will be ignored unless --seed-length is specified (see above). This parameter defaults to the same value as --seed-length"
    branch_cut_off: "stop the overlap search at N branches. This parameter is used to control the search time for highly-repetitive reads. If the number of branches exceeds N, the search stops and the read will not be corrected. This is not enabled by default."
    rounds: "iteratively correct reads up to a maximum of NUM rounds (default: 1)"
    option: ""
  }
}