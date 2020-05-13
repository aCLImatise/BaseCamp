version 1.0

task ThresholdBasedFlags.py {
  input {
    String inputInput
    String designDesign
    String idId
    String groupGroup
    String cutCutOff
    String outputOutput
  }
  command <<<
    threshold_based_flags.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(designDesign) then ("--design " +  '"' + designDesign + '"') else ""} \
      ~{if defined(idId) then ("--ID " +  '"' + idId + '"') else ""} \
      ~{if defined(groupGroup) then ("--group " +  '"' + groupGroup + '"') else ""} \
      ~{if defined(cutCutOff) then ("--cutoff " +  '"' + cutCutOff + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}