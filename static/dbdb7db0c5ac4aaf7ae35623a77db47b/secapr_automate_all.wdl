version 1.0

task SecaprAutomateAll {
  input {
    String inputInput
    String outputOutput
    String referenceReference
    String settingSetting
    String assemblerAssembler
    String coresCores
  }
  command <<<
    secapr automate_all \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(settingSetting) then ("--setting " +  '"' + settingSetting + '"') else ""} \
      ~{if defined(assemblerAssembler) then ("--assembler " +  '"' + assemblerAssembler + '"') else ""} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""}
  >>>
}