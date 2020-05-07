version 1.0

task ValidateContigsMummer {
  input {
    String minMinContig
    String similarSimilar
    String? reReFfa
    String? contigsContigsFa
  }
  command <<<
    validate_contigs_mummer \
      ~{reReFfa} \
      ~{if defined(minMinContig) then ("--min_contig " +  '"' + minMinContig + '"') else ""} \
      ~{if defined(similarSimilar) then ("--similar " +  '"' + similarSimilar + '"') else ""} \
      ~{contigsContigsFa}
  >>>
}