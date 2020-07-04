version 1.0

task SgaRmdup {
  input {
    Boolean? verbose
    File? out
    String? prefix
    Boolean? error_rate
    String? threads
    String? sample_rate
    String? option
  }
  command <<<
    sga rmdup \
      ~{option} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{true="--error-rate" false="" error_rate} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(sample_rate) then ("--sample-rate " +  '"' + sample_rate + '"') else ""}
  >>>
  parameter_meta {
    verbose: "display verbose output"
    out: "write the output to FILE (default: READFILE.rmdup.fa)"
    prefix: "use PREFIX instead of the prefix of the reads filename for the input/output files"
    error_rate: "the maximum error rate allowed to consider two sequences identical (default: exact matches required)"
    threads: "use N threads (default: 1)"
    sample_rate: "sample the symbol counts every N symbols in the FM-index. Higher values use significantly less memory at the cost of higher runtime. This value must be a power of 2 (default: 256)"
    option: ""
  }
}