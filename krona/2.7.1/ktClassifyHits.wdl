version 1.0

task KtClassifyHits {
  input {
    String? hitsHits
    String? queryQueryId
    String? taxidTaxid
    String? scoreScore
    String? countCount
  }
  command <<<
    ktClassifyHits \
      ~{hitsHits} \
      ~{queryQueryId} \
      ~{taxidTaxid} \
      ~{scoreScore} \
      ~{countCount}
  >>>
}