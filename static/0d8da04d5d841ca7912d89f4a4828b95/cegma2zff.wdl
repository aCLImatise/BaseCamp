version 1.0

task Cegma2zff {
  input {
    String? ceCeGmaGff
    String? genomeGenomeFastA
  }
  command <<<
    cegma2zff \
      ~{ceCeGmaGff} \
      ~{genomeGenomeFastA}
  >>>
}