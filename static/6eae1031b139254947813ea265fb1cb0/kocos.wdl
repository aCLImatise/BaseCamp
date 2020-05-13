version 1.0

task Kocos.plBIGRAM {
  input {
    String? optionsOptions
    String? bigramBigram
  }
  command <<<
    kocos.pl BIGRAM \
      ~{optionsOptions} \
      ~{bigramBigram}
  >>>
}