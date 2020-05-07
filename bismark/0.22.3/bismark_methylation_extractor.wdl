version 1.0

task BismarkMethylationExtractor {
  input {
    String? otOt
    String? cCTot
    String? obOb
    String? ctoCtoB
  }
  command <<<
    bismark_methylation_extractor \
      ~{otOt} \
      ~{cCTot} \
      ~{obOb} \
      ~{ctoCtoB}
  >>>
}