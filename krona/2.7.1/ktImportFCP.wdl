version 1.0

task KtImportFCP {
  input {
    String? fcpFcpOutput
    String? magnitudesMagnitudes
    String? nameName
  }
  command <<<
    ktImportFCP \
      ~{fcpFcpOutput} \
      ~{magnitudesMagnitudes} \
      ~{nameName}
  >>>
}