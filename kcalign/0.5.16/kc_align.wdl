version 1.0

task KcAlign {
  input {
    String referenceReference
    String readsReads
    String startStart
    String endEnd
    String modeMode
    Boolean compressCompress
  }
  command <<<
    kc-align \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(readsReads) then ("--reads " +  '"' + readsReads + '"') else ""} \
      ~{if defined(startStart) then ("--start " +  '"' + startStart + '"') else ""} \
      ~{if defined(endEnd) then ("--end " +  '"' + endEnd + '"') else ""} \
      ~{if defined(modeMode) then ("--mode " +  '"' + modeMode + '"') else ""} \
      ~{true="--compress" false="" compressCompress}
  >>>
}