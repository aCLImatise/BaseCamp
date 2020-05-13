version 1.0

task BiomValidateTable {
  input {
    File inputInputFp
    String formatFormatVersion
    Boolean detailedDetailedReport
    String? validateValidate
    String? theThe
    String? contentsContents
    String? ofOf
    String? tableTableBiom
    String? forFor
    String? adherenceAdherence
    String? toTo
    String? theThe
    String? biomBiom
    String? formatFormat
  }
  command <<<
    biom validate-table \
      ~{validateValidate} \
      ~{if defined(inputInputFp) then ("--input-fp " +  '"' + inputInputFp + '"') else ""} \
      ~{if defined(formatFormatVersion) then ("--format-version " +  '"' + formatFormatVersion + '"') else ""} \
      ~{true="--detailed-report" false="" detailedDetailedReport} \
      ~{theThe} \
      ~{contentsContents} \
      ~{ofOf} \
      ~{tableTableBiom} \
      ~{forFor} \
      ~{adherenceAdherence} \
      ~{toTo} \
      ~{theThe} \
      ~{biomBiom} \
      ~{formatFormat}
  >>>
}