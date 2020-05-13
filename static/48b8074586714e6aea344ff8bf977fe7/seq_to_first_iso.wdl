version 1.0

task SeqToFirstIso {
  input {
    String outputOutput
    String unlabelledUnlabelledAa
    String? inputInputFileName
    String? sequenceSequenceColName
    String? chargeChargeColName
  }
  command <<<
    seq-to-first-iso \
      ~{inputInputFileName} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(unlabelledUnlabelledAa) then ("--unlabelled-aa " +  '"' + unlabelledUnlabelledAa + '"') else ""} \
      ~{sequenceSequenceColName} \
      ~{chargeChargeColName}
  >>>
}