version 1.0

task KtClassifyBLAST {
  input {
    String? blastBlastOutput
    String? queryQueryId
    String? taxidTaxid
    String? scoreScore
    String? countCount
  }
  command <<<
    ktClassifyBLAST \
      ~{blastBlastOutput} \
      ~{queryQueryId} \
      ~{taxidTaxid} \
      ~{scoreScore} \
      ~{countCount}
  >>>
}