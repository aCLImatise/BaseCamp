version 1.0

task KtImportRDPComparison {
  input {
    String? rdpRdpComparison
    String? nameName
  }
  command <<<
    ktImportRDPComparison \
      ~{rdpRdpComparison} \
      ~{nameName}
  >>>
}