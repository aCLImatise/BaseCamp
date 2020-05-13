version 1.0

task SortPsl {
  input {
    String? validateValidateContigsBlat
    String? reReFfa
    String? contigsContigsFa
  }
  command <<<
    sort_psl \
      ~{validateValidateContigsBlat} \
      ~{reReFfa} \
      ~{contigsContigsFa}
  >>>
}