version 1.0

task BismarkMethylationExtractor {
  input {
    String ot
    String c_tot
    String ob
    String cto_b
  }
  command <<<
    bismark_methylation_extractor \
      ~{ot} \
      ~{c_tot} \
      ~{ob} \
      ~{cto_b}
  >>>
  parameter_meta {
    ot: "original top strand"
    c_tot: "complementary to original top strand"
    ob: "original bottom strand"
    cto_b: "complementary to original bottom strand"
  }
}