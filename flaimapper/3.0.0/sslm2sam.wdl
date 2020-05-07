version 1.0

task Sslm2sam {
  input {
    String outputOutput
    String? sslSslMDirectory
  }
  command <<<
    sslm2sam \
      ~{sslSslMDirectory} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}