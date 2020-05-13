version 1.0

task KtImportRDP {
  input {
    String? rdpRdpDetails
    String? nameName
  }
  command <<<
    ktImportRDP \
      ~{rdpRdpDetails} \
      ~{nameName}
  >>>
}