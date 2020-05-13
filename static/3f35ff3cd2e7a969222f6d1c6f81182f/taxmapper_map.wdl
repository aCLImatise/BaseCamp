version 1.0

task TaxmapperMap {
  input {
    Int mM
    File forwardForward
    File reverseReverse
    String outOut
    String combineCombine
    String threadsThreads
  }
  command <<<
    taxmapper map \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(forwardForward) then ("--forward " +  '"' + forwardForward + '"') else ""} \
      ~{if defined(reverseReverse) then ("--reverse " +  '"' + reverseReverse + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(combineCombine) then ("--combine " +  '"' + combineCombine + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}