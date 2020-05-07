version 1.0

task BiopetValidatevcf {
  input {
    String logLogLevel
    File inputInputVcf
    File referenceReference
    Boolean disableDisableFail
  }
  command <<<
    biopet-validatevcf \
      ~{if defined(logLogLevel) then ("--log_level " +  '"' + logLogLevel + '"') else ""} \
      ~{if defined(inputInputVcf) then ("--inputVcf " +  '"' + inputInputVcf + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{true="--disableFail" false="" disableDisableFail}
  >>>
}