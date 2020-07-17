version 1.0

task SixgillMerge {
  input {
    String? out
    Boolean? no_gzip_out
    Boolean? debug
  }
  command <<<
    sixgill_merge \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{true="--nogzipout" false="" no_gzip_out} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    out: "output file"
    no_gzip_out: "Write plaintetxt (non-gzipped) output (default gzipped)"
    debug: "Enable debug logging"
  }
}