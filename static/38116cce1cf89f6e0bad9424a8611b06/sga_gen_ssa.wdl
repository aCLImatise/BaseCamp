version 1.0

task SgaGenSsa {
  input {
    Boolean? verbose
    String? threads
    Boolean? check
    Boolean? sai_only
    String? option
  }
  command <<<
    sga gen-ssa \
      ~{option} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--check" false="" check} \
      ~{true="--sai-only" false="" sai_only}
  >>>
  parameter_meta {
    verbose: "display verbose output"
    threads: "use NUM threads to construct the index (default: 1)"
    check: "validate that the suffix array/bwt is correct"
    sai_only: "only build the lexicographic index"
    option: ""
  }
}