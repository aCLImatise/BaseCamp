version 1.0

task ConvertSamForRsem {
  input {
    Boolean pP
    String memoryMemoryPerThread
    String? outputOutputFileName
  }
  command <<<
    convert-sam-for-rsem \
      ~{outputOutputFileName} \
      ~{true="-p" false="" pP} \
      ~{if defined(memoryMemoryPerThread) then ("--memory-per-thread " +  '"' + memoryMemoryPerThread + '"') else ""}
  >>>
}