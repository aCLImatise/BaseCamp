version 1.0

task AutoDtd {
  input {
    String outputOutput
    String outputOutput
    String? inInXml
    String? outOutDtd
    String? outOutStats
  }
  command <<<
    autoDtd \
      ~{inInXml} \
      ~{if defined(outputOutput) then ("- Output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(outputOutput) then ("- Output " +  '"' + outputOutput + '"') else ""} \
      ~{outOutDtd} \
      ~{outOutStats}
  >>>
}