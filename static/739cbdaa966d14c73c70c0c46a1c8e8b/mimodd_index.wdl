version 1.0

task MimoddIndex {
  input {
    File? specifies_location_save
    Int? threads
    Boolean? quiet
    Boolean? verbose
    Int? idx_seed_size
    Float? idx_slack
    Int? idx_overflow
  }
  command <<<
    mimodd index \
      ~{if defined(specifies_location_save) then ("--output " +  '"' + specifies_location_save + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(idx_seed_size) then ("--idx-seedsize " +  '"' + idx_seed_size + '"') else ""} \
      ~{if defined(idx_slack) then ("--idx-slack " +  '"' + idx_slack + '"') else ""} \
      ~{if defined(idx_overflow) then ("--idx-overflow " +  '"' + idx_overflow + '"') else ""}
  >>>
  parameter_meta {
    specifies_location_save: "specifies the location at which to save the index\\n(default: save the index alongside the input file as\\n<input file>.<INDEX_TYPE> for indices of type \\\"fai\\\"\\nand \\\"bai\\\", or in a directory <input file>.snap_index)"
    threads: "maximum number of threads to use (overrides config\\nsetting)"
    quiet: "suppress original messages from underlying tools"
    verbose: "verbose output"
    idx_seed_size: "Seed size used in building the index (default: 20)"
    idx_slack: "Hash table slack for indexing (default: 0.3)"
    idx_overflow: "factor (between 1 and 1000) to set the size of the\\nindex build overflow space (default: 40)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}