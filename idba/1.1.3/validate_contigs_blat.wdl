version 1.0

task ValidateContigsBlat {
  input {
    String minMinContig
    String similarSimilar
    String completeCompleteRate
    Boolean isIsLocal
    String? reReFfa
    String? contigsContigsFa
  }
  command <<<
    validate_contigs_blat \
      ~{reReFfa} \
      ~{if defined(minMinContig) then ("--min_contig " +  '"' + minMinContig + '"') else ""} \
      ~{if defined(similarSimilar) then ("--similar " +  '"' + similarSimilar + '"') else ""} \
      ~{if defined(completeCompleteRate) then ("--complete_rate " +  '"' + completeCompleteRate + '"') else ""} \
      ~{true="--is_local" false="" isIsLocal} \
      ~{contigsContigsFa}
  >>>
}