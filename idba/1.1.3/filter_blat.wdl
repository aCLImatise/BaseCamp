version 1.0

task FilterBlat {
  input {
    String minMinContig
    String similarSimilar
    Boolean isIsLocal
    String? validateValidateContigsBlat
    String? reReFfa
    String? contigsContigsFa
  }
  command <<<
    filter_blat \
      ~{validateValidateContigsBlat} \
      ~{if defined(minMinContig) then ("--min_contig " +  '"' + minMinContig + '"') else ""} \
      ~{if defined(similarSimilar) then ("--similar " +  '"' + similarSimilar + '"') else ""} \
      ~{true="--is_local" false="" isIsLocal} \
      ~{reReFfa} \
      ~{contigsContigsFa}
  >>>
}