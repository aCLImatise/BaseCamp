version 1.0

task Combig.plBIGRAM {
  input {
    String? optionsOptions
    String? bigramBigram
  }
  command <<<
    combig.pl BIGRAM \
      ~{optionsOptions} \
      ~{bigramBigram}
  >>>
}