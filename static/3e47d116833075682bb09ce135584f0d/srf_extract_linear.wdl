version 1.0

task SrfExtractLinear {
  input {
    String? extractExtractLinearSrf
    String? archiveArchiveName
    String? traceTraceName
  }
  command <<<
    srf_extract_linear \
      ~{extractExtractLinearSrf} \
      ~{archiveArchiveName} \
      ~{traceTraceName}
  >>>
}