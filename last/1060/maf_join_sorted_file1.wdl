version 1.0

task MafJoinSortedFile1.maf {
  input {
    String? optionsOptions
  }
  command <<<
    maf-join sorted-file1.maf \
      ~{optionsOptions}
  >>>
}