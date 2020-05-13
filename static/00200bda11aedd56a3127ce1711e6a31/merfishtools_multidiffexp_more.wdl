version 1.0

task MerfishtoolsMultidiffexpMore {
  input {
    String? optionsOptions
    String? forFor
    String? moreMore
    String? informationInformation
    String? tryTry
  }
  command <<<
    merfishtools multidiffexp more \
      ~{optionsOptions} \
      ~{forFor} \
      ~{moreMore} \
      ~{informationInformation} \
      ~{tryTry}
  >>>
}