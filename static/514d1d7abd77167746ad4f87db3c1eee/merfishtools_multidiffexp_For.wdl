version 1.0

task MerfishtoolsMultidiffexpFor {
  input {
    String? optionsOptions
    String? forFor
    String? moreMore
    String? informationInformation
    String? tryTry
  }
  command <<<
    merfishtools multidiffexp For \
      ~{optionsOptions} \
      ~{forFor} \
      ~{moreMore} \
      ~{informationInformation} \
      ~{tryTry}
  >>>
}