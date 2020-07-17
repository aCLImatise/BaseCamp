version 1.0

task Cegma2zff {
  input {
    String ce_gma_gff
    String genome_fast_a
  }
  command <<<
    cegma2zff \
      ~{ce_gma_gff} \
      ~{genome_fast_a}
  >>>
  parameter_meta {
    ce_gma_gff: ""
    genome_fast_a: ""
  }
}