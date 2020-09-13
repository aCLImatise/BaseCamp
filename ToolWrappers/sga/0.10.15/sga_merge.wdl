version 1.0

task SgaMerge {
  input {
    Boolean? verbose
    Int? threads
    String? prefix
    Boolean? remove
    Int? gap_array
    Boolean? no_sequence
    Boolean? no_forward
    Boolean? no_reverse
  }
  command <<<
    sga merge \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if (remove) then "--remove" else ""} \
      ~{if defined(gap_array) then ("--gap-array " +  '"' + gap_array + '"') else ""} \
      ~{if (no_sequence) then "--no-sequence" else ""} \
      ~{if (no_forward) then "--no-forward" else ""} \
      ~{if (no_reverse) then "--no-reverse" else ""}
  >>>
  parameter_meta {
    verbose: "display verbose output"
    threads: "use NUM threads to merge the indices (default: 1)"
    prefix: "write final index to files starting with PREFIX (the default is to concatenate the input filenames)"
    remove: "remove the original BWT, SAI and reads files after the merge"
    gap_array: "use N bits of storage for each element of the gap array. Acceptable values are 4,8,16 or 32. Lower\\nvalues can substantially reduce the amount of memory required at the cost of less predictable memory usage.\\nWhen this value is set to 32, the memory requirement is essentially deterministic and requires ~5N bytes where\\nN is the size of the FM-index of READS2.\\nThe default value is 4."
    no_sequence: "Suppress merging of the sequence files. Use this option when merging the index(es) separate e.g. in parallel"
    no_forward: "Suppress merging of the forward index. Use this option when merging the index(es) separate e.g. in parallel"
    no_reverse: "Suppress merging of the reverse index. Use this option when merging the index(es) separate e.g. in parallel"
  }
  output {
    File out_stdout = stdout()
  }
}