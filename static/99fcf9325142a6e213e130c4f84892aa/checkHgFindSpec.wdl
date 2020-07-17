version 1.0

task CheckHgFindSpec {
  input {
    Boolean? show_searches
    Boolean? check_term_regex
    Boolean? check_indexes
    String database
  }
  command <<<
    checkHgFindSpec \
      ~{database} \
      ~{true="-showSearches" false="" show_searches} \
      ~{true="-checkTermRegex" false="" check_term_regex} \
      ~{true="-checkIndexes" false="" check_indexes}
  >>>
  parameter_meta {
    show_searches: "Show the order in which tables will be searched in general.  [This will be done anyway if no termToSearch or options are specified.]"
    check_term_regex: "For each search spec that includes a regular expression for terms, make sure that all values of the table field to be searched match the regex.  (If not, some of them could be excluded from searches.)"
    check_indexes: "Make sure that an index is defined on each field to be searched."
    database: ""
  }
}