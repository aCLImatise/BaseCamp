version 1.0

task KtImportBLAST {
  input {
    String? blastBlastOutput
    String? magnitudesMagnitudes
    String? nameName
  }
  command <<<
    ktImportBLAST \
      ~{blastBlastOutput} \
      ~{magnitudesMagnitudes} \
      ~{nameName}
  >>>
}