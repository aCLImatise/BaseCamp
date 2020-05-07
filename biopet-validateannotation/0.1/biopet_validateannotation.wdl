version 1.0

task BiopetValidateannotation {
  input {
    String logLogLevel
    File refRefFlatFile
    File gtfGtfFile
    File referenceReference
    Boolean disableDisableFail
  }
  command <<<
    biopet-validateannotation \
      ~{if defined(logLogLevel) then ("--log_level " +  '"' + logLogLevel + '"') else ""} \
      ~{if defined(refRefFlatFile) then ("--refflatFile " +  '"' + refRefFlatFile + '"') else ""} \
      ~{if defined(gtfGtfFile) then ("--gtfFile " +  '"' + gtfGtfFile + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{true="--disableFail" false="" disableDisableFail}
  >>>
}