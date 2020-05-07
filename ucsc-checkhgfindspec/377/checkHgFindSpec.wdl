version 1.0

task CheckHgFindSpec {
  input {
    Boolean showShowSearches
    Boolean checkCheckTermRegex
    Boolean checkCheckIndexes
  }
  command <<<
    checkHgFindSpec \
      ~{true="-showSearches" false="" showShowSearches} \
      ~{true="-checkTermRegex" false="" checkCheckTermRegex} \
      ~{true="-checkIndexes" false="" checkCheckIndexes}
  >>>
}