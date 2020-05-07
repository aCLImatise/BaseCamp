version 1.0

task SequenceFilter.py {
  input {
    String iI
    String oO
    Int qQ
    Int lL
    Boolean cC
    Int uU
    String? inputInputFastX
    String? outputOutputFastX
  }
  command <<<
    sequence_filter.py \
      ~{inputInputFastX} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{true="-c" false="" cC} \
      ~{if defined(uU) then ("-u " +  '"' + uU + '"') else ""} \
      ~{outputOutputFastX}
  >>>
}