version 1.0

task SgaIndex {
  input {
    Boolean? verbose
    String? algorithm
    String? disk
    String? threads
    Boolean? check
    String? prefix
    Boolean? no_reverse
    Boolean? no_forward
    Boolean? no_sai
    String? gap_array
    String? option
  }
  command <<<
    sga index \
      ~{option} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(algorithm) then ("--algorithm " +  '"' + algorithm + '"') else ""} \
      ~{if defined(disk) then ("--disk " +  '"' + disk + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--check" false="" check} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{true="--no-reverse" false="" no_reverse} \
      ~{true="--no-forward" false="" no_forward} \
      ~{true="--no-sai" false="" no_sai} \
      ~{if defined(gap_array) then ("--gap-array " +  '"' + gap_array + '"') else ""}
  >>>
  parameter_meta {
    verbose: "display verbose output"
    algorithm: "BWT construction algorithm. STR can be: sais - induced sort algorithm, slower but works for very long sequences (default) ropebwt - very fast and memory efficient. use this for short (<200bp) reads"
    disk: "use disk-based BWT construction algorithm. The suffix array/BWT will be constructed for batchs of NUM reads at a time. To construct the suffix array of 200 megabases of sequence requires ~2GB of memory, set this parameter accordingly."
    threads: "use NUM threads to construct the index (default: 1)"
    check: "validate that the suffix array/bwt is correct"
    prefix: "write index to file using PREFIX instead of prefix of READSFILE"
    no_reverse: "suppress construction of the reverse BWT. Use this option when building the index for reads that will be error corrected using the k-mer corrector, which only needs the forward index"
    no_forward: "suppress construction of the forward BWT. Use this option when building the forward and reverse index separately"
    no_sai: "suppress construction of the SAI file. This option only applies to -a ropebwt"
    gap_array: "use N bits of storage for each element of the gap array. Acceptable values are 4,8,16 or 32. Lower values can substantially reduce the amount of memory required at the cost of less predictable memory usage. When this value is set to 32, the memory requirement is essentially deterministic and requires ~5N bytes where N is the size of the FM-index of READS2. The default value is 8."
    option: ""
  }
}