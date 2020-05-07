version 1.0

task MerfishtoolsMultidiffexpTry {
  input {
    String? optionsOptions
    String? forFor
    String? moreMore
    String? informationInformation
    String? tryTry
  }
  command <<<
    merfishtools multidiffexp try \
      ~{optionsOptions} \
      ~{forFor} \
      ~{moreMore} \
      ~{informationInformation} \
      ~{tryTry}
  >>>
}