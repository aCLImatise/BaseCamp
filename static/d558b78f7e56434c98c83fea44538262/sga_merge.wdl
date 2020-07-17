version 1.0

task SgaMerge {
  input {
    Boolean? verbose
    String? threads
    String? prefix
    Boolean? remove
    String? gap_array
    Boolean? no_sequence
    Boolean? no_forward
    Boolean? no_reverse
    String? option
  }
  command <<<
    sga merge \
      ~{option} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{true="--remove" false="" remove} \
      ~{if defined(gap_array) then ("--gap-array " +  '"' + gap_array + '"') else ""} \
      ~{true="--no-sequence" false="" no_sequence} \
      ~{true="--no-forward" false="" no_forward} \
      ~{true="--no-reverse" false="" no_reverse}
  >>>
  parameter_meta {
    verbose: "display verbose output"
    threads: "use NUM threads to merge the indices (default: 1)"
    prefix: "write final index to files starting with PREFIX (the default is to concatenate the input filenames)"
    remove: "remove the original BWT, SAI and reads files after the merge"
    gap_array: "use N bits of storage for each element of the gap array. Acceptable values are 4,8,16 or 32. Lower values can substantially reduce the amount of memory required at the cost of less predictable memory usage. When this value is set to 32, the memory requirement is essentially deterministic and requires ~5N bytes where N is the size of the FM-index of READS2. The default value is 4."
    no_sequence: "Suppress merging of the sequence files. Use this option when merging the index(es) separate e.g. in parallel"
    no_forward: "Suppress merging of the forward index. Use this option when merging the index(es) separate e.g. in parallel"
    no_reverse: "Suppress merging of the reverse index. Use this option when merging the index(es) separate e.g. in parallel"
    option: ""
  }
}