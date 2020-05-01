version 1.0

task FilterOverlapFile {
  input {
    Int threadsThreads
    File outputOutput
    Boolean dumpDump
  }
  command <<<
    filter_overlap_file \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--dump" false="" dumpDump}
  >>>
}