version 1.0

task MafJoinOptions {
  input {
    String? sortedSortedFile1maf
    String? optionsOptions
  }
  command <<<
    maf-join Options \
      ~{sortedSortedFile1maf} \
      ~{optionsOptions}
  >>>
}