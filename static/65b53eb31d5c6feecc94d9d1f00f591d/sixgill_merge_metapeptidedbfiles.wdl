version 1.0

task SixgillMergeMetapeptidedbfiles {
  input {
    String? out
    Boolean? no_gzip_out
    Boolean? debug
    String six_gill_merge
  }
  command <<<
    sixgill_merge metapeptidedbfiles \
      ~{six_gill_merge} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{true="--nogzipout" false="" no_gzip_out} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    out: ""
    no_gzip_out: ""
    debug: ""
    six_gill_merge: ""
  }
}