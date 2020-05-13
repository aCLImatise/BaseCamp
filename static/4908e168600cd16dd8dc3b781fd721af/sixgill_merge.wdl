version 1.0

task SixgillMerge {
  input {
    String outOut
    Boolean noNoGzipOut
    Boolean debugDebug
    String? metaMetaPeptideDbFiles
  }
  command <<<
    sixgill_merge \
      ~{metaMetaPeptideDbFiles} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{true="--nogzipout" false="" noNoGzipOut} \
      ~{true="--debug" false="" debugDebug}
  >>>
}