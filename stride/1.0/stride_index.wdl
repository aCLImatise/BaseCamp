version 1.0

task StrideIndex {
  input {
    Boolean? verbose
    String? algorithm
    String? threads
    String? prefix
    Boolean? no_reverse
    Boolean? no_forward
    String? option
  }
  command <<<
    stride index \
      ~{option} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(algorithm) then ("--algorithm " +  '"' + algorithm + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{true="--no-reverse" false="" no_reverse} \
      ~{true="--no-forward" false="" no_forward}
  >>>
  parameter_meta {
    verbose: "display verbose output"
    algorithm: "BWT construction algorithm. STR can be: sais - induced sort algorithm, slower but works for very long sequences ropebwt - Li's ropebwt algorithm, suitable for short reads (<200bp)  ropebwt2 - Li's ropebwt2 algorithm, suitable for short and long reads (default)"
    threads: "use NUM threads to construct the index (default: 1)"
    prefix: "write index to file using PREFIX instead of prefix of READSFILE"
    no_reverse: "suppress construction of the reverse BWT. Use this option when building the index for reads that will be error corrected using the k-mer corrector, which only needs the forward index"
    no_forward: "suppress construction of the forward BWT. Use this option when building the forward and reverse index separately"
    option: ""
  }
}