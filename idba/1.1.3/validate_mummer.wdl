version 1.0

task ValidateMummer {
  input {
    String minMinContig
    String similarSimilar
    String? validateValidateContigsMummer
    String? reReFfa
    String? contigsContigsFa
  }
  command <<<
    validate_mummer \
      ~{validateValidateContigsMummer} \
      ~{if defined(minMinContig) then ("--min_contig " +  '"' + minMinContig + '"') else ""} \
      ~{if defined(similarSimilar) then ("--similar " +  '"' + similarSimilar + '"') else ""} \
      ~{reReFfa} \
      ~{contigsContigsFa}
  >>>
}