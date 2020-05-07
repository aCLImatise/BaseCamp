version 1.0

task MerylLookup {
  input {
    String sequenceSequence
    Boolean outputOutput
    Boolean mersMers
    Boolean labelsLabels
    Boolean minMin
    Boolean maxMax
    String threadsThreads
    String memoryMemory
    Boolean includeInclude
    String? seqnameSeqname
    String? seqSeqId
    String? seqSeqPos
    String? existsExists
    String? fwdFwdMer
    String? fwdFwdVal
    String? revRevMer
    String? revRevVal
    String? seqnameSeqname
  }
  command <<<
    meryl-lookup \
      ~{seqnameSeqname} \
      ~{seqnameSeqname} \
      ~{if defined(sequenceSequence) then ("-sequence " +  '"' + sequenceSequence + '"') else ""} \
      ~{true="-output" false="" outputOutput} \
      ~{true="-mers" false="" mersMers} \
      ~{true="-labels" false="" labelsLabels} \
      ~{true="-min" false="" minMin} \
      ~{true="-max" false="" maxMax} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(memoryMemory) then ("-memory " +  '"' + memoryMemory + '"') else ""} \
      ~{true="-include" false="" includeInclude} \
      ~{seqSeqId} \
      ~{seqSeqPos} \
      ~{existsExists} \
      ~{fwdFwdMer} \
      ~{fwdFwdVal} \
      ~{revRevMer} \
      ~{revRevVal}
  >>>
}