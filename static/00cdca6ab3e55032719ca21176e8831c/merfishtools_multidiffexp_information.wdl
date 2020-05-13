version 1.0

task MerfishtoolsMultidiffexpInformation {
  input {
    String? optionsOptions
    String? forFor
    String? moreMore
    String? informationInformation
    String? tryTry
  }
  command <<<
    merfishtools multidiffexp information \
      ~{optionsOptions} \
      ~{forFor} \
      ~{moreMore} \
      ~{informationInformation} \
      ~{tryTry}
  >>>
}