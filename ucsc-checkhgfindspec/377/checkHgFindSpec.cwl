class: CommandLineTool
id: ../../../checkHgFindSpec.cwl
inputs:
- id: in_show_searches
  doc: Show the order in which tables will be searched in
  type: boolean
  inputBinding:
    prefix: -showSearches
- id: in_check_term_regex
  doc: "For each search spec that includes a regular\nexpression for terms, make sure\
    \ that all values of\nthe table field to be searched match the regex.  (If\nnot,\
    \ some of them could be excluded from searches.)"
  type: boolean
  inputBinding:
    prefix: -checkTermRegex
- id: in_check_indexes
  doc: "Make sure that an index is defined on each field to\nbe searched.\n"
  type: boolean
  inputBinding:
    prefix: -checkIndexes
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- checkHgFindSpec
