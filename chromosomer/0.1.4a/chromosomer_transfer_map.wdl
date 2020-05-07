version 1.0

task ChromosomerTransferMap {
  input {
    String formatFormat
    String? mapMap
    String? annotationAnnotation
    String? outputOutput
  }
  command <<<
    chromosomer transfer map \
      ~{mapMap} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{annotationAnnotation} \
      ~{outputOutput}
  >>>
}