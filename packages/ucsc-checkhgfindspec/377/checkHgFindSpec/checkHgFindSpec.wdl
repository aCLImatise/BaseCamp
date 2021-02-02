version 1.0

task CheckHgFindSpec {
  input {
    Boolean? show_searches
    Boolean? check_term_regex
    Boolean? check_indexes
  }
  command <<<
    checkHgFindSpec \
      ~{if (show_searches) then "-showSearches" else ""} \
      ~{if (check_term_regex) then "-checkTermRegex" else ""} \
      ~{if (check_indexes) then "-checkIndexes" else ""}
  >>>
  parameter_meta {
    show_searches: "Show the order in which tables will be searched in"
    check_term_regex: "For each search spec that includes a regular\\nexpression for terms, make sure that all values of\\nthe table field to be searched match the regex.  (If\\nnot, some of them could be excluded from searches.)"
    check_indexes: "Make sure that an index is defined on each field to\\nbe searched.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}