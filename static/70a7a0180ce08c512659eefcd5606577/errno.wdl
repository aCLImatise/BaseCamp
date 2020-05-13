version 1.0

task Errno {
  input {
    Boolean lssLss
    Boolean listList
    Boolean searchSearch
    Boolean searchSearchAllLocales
    String? keywordKeyword
  }
  command <<<
    errno \
      ~{keywordKeyword} \
      ~{true="-lsS" false="" lssLss} \
      ~{true="--list" false="" listList} \
      ~{true="--search" false="" searchSearch} \
      ~{true="--search-all-locales" false="" searchSearchAllLocales}
  >>>
}