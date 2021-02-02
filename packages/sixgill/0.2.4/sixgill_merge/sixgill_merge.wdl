version 1.0

task SixgillMerge {
  input {
    File? out
    Boolean? no_gzip_out
    Boolean? debug
  }
  command <<<
    sixgill_merge \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if (no_gzip_out) then "--nogzipout" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    out: "output file"
    no_gzip_out: "Write plaintetxt (non-gzipped) output (default gzipped)"
    debug: "Enable debug logging"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}