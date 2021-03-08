version 1.0

task MmseqsConcatdbs {
  input {
    Boolean? preserve_keys
    Boolean? take_larger_entry
    Int? compressed
    Int? threads
    Int? verbosity_level_errors
  }
  command <<<
    mmseqs concatdbs \
      ~{if defined(preserve_keys) then ("--preserve-keys " +  '"' + preserve_keys + '"') else ""} \
      ~{if defined(take_larger_entry) then ("--take-larger-entry " +  '"' + take_larger_entry + '"') else ""} \
      ~{if defined(compressed) then ("--compressed " +  '"' + compressed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0"
  }
  parameter_meta {
    preserve_keys: "The keys of the two DB should be distinct, and they will be preserved in the concatenation [0]"
    take_larger_entry: "Only keep the larger entry (dataSize >) in the concatenation, both databases need the same keys in the index [0]"
    compressed: "Write compressed output [0]"
    threads: "Number of CPU-cores used (all by default) [1]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
  }
  output {
    File out_stdout = stdout()
  }
}