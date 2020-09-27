version 1.0

task SixgillMergeMetapeptidedbfiles {
  input {
    Boolean? debug
    Boolean? no_gzip_out
    String? out
    String six_gill_merge
  }
  command <<<
    sixgill_merge metapeptidedbfiles \
      ~{six_gill_merge} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (no_gzip_out) then "--nogzipout" else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  parameter_meta {
    debug: ""
    no_gzip_out: ""
    out: ""
    six_gill_merge: ""
  }
  output {
    File out_stdout = stdout()
  }
}