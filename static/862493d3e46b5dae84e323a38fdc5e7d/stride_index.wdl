version 1.0

task StrideIndex {
  input {
    Boolean? verbose
    String? algorithm
    Int? threads
    File? prefix
    Boolean? no_reverse
    Boolean? no_forward
  }
  command <<<
    stride index \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(algorithm) then ("--algorithm " +  '"' + algorithm + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if (no_reverse) then "--no-reverse" else ""} \
      ~{if (no_forward) then "--no-forward" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "display verbose output"
    algorithm: "BWT construction algorithm. STR can be:\\nsais - induced sort algorithm, slower but works for very long sequences\\nropebwt - Li's ropebwt algorithm, suitable for short reads (<200bp)\\nropebwt2 - Li's ropebwt2 algorithm, suitable for short and long reads (default)"
    threads: "use NUM threads to construct the index (default: 1)"
    prefix: "write index to file using PREFIX instead of prefix of READSFILE"
    no_reverse: "suppress construction of the reverse BWT. Use this option when building the index\\nfor reads that will be error corrected using the k-mer corrector, which only needs the forward index"
    no_forward: "suppress construction of the forward BWT. Use this option when building the forward and reverse index separately"
  }
  output {
    File out_stdout = stdout()
  }
}