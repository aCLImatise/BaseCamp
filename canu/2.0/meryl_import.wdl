version 1.0

task MerylImport {
  input {
    String kmKmErs
    Int kK
    String outputOutput
    Boolean multisetMultiset
    String maxvalueMaxvalue
    Boolean forwardForward
    Boolean reverseReverse
    String threadsThreads
    String memoryMemory
  }
  command <<<
    meryl-import \
      ~{if defined(kmKmErs) then ("-kmers " +  '"' + kmKmErs + '"') else ""} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(outputOutput) then ("-output " +  '"' + outputOutput + '"') else ""} \
      ~{true="-multiset" false="" multisetMultiset} \
      ~{if defined(maxvalueMaxvalue) then ("-maxvalue " +  '"' + maxvalueMaxvalue + '"') else ""} \
      ~{true="-forward" false="" forwardForward} \
      ~{true="-reverse" false="" reverseReverse} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(memoryMemory) then ("-memory " +  '"' + memoryMemory + '"') else ""}
  >>>
}