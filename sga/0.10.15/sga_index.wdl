version 1.0

task SgaIndex {
  input {
    Boolean? verbose
    String? algorithm
    Int? disk
    Int? threads
    Boolean? check
    File? prefix
    Boolean? no_reverse
    Boolean? no_forward
    Boolean? no_sai
    Int? gap_array
  }
  command <<<
    sga index \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(algorithm) then ("--algorithm " +  '"' + algorithm + '"') else ""} \
      ~{if defined(disk) then ("--disk " +  '"' + disk + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (check) then "--check" else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if (no_reverse) then "--no-reverse" else ""} \
      ~{if (no_forward) then "--no-forward" else ""} \
      ~{if (no_sai) then "--no-sai" else ""} \
      ~{if defined(gap_array) then ("--gap-array " +  '"' + gap_array + '"') else ""}
  >>>
  parameter_meta {
    verbose: "display verbose output"
    algorithm: "BWT construction algorithm. STR can be:\\nsais - induced sort algorithm, slower but works for very long sequences (default)\\nropebwt - very fast and memory efficient. use this for short (<200bp) reads"
    disk: "use disk-based BWT construction algorithm. The suffix array/BWT will be constructed\\nfor batchs of NUM reads at a time. To construct the suffix array of 200 megabases of sequence\\nrequires ~2GB of memory, set this parameter accordingly."
    threads: "use NUM threads to construct the index (default: 1)"
    check: "validate that the suffix array/bwt is correct"
    prefix: "write index to file using PREFIX instead of prefix of READSFILE"
    no_reverse: "suppress construction of the reverse BWT. Use this option when building the index\\nfor reads that will be error corrected using the k-mer corrector, which only needs the forward index"
    no_forward: "suppress construction of the forward BWT. Use this option when building the forward and reverse index separately"
    no_sai: "suppress construction of the SAI file. This option only applies to -a ropebwt"
    gap_array: "use N bits of storage for each element of the gap array. Acceptable values are 4,8,16 or 32. Lower\\nvalues can substantially reduce the amount of memory required at the cost of less predictable memory usage.\\nWhen this value is set to 32, the memory requirement is essentially deterministic and requires ~5N bytes where\\nN is the size of the FM-index of READS2.\\nThe default value is 8."
  }
  output {
    File out_stdout = stdout()
  }
}