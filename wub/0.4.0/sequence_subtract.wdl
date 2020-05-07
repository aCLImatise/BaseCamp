version 1.0

task SequenceSubtract.py {
  input {
    String iI
    String oO
    String? inputInputFastXBait
    String? inputInputFastXTarget
    String? outputOutputFastX
  }
  command <<<
    sequence_subtract.py \
      ~{inputInputFastXBait} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{inputInputFastXTarget} \
      ~{outputOutputFastX}
  >>>
}