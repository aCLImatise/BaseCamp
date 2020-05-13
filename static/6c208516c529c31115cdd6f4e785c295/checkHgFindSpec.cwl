class: CommandLineTool
id: checkHgFindSpec.cwl
inputs:
- id: show_searches
  doc: Show the order in which tables will be searched in general.  [This will be
    done anyway if no termToSearch or options are specified.]
  type: boolean
  inputBinding:
    prefix: -showSearches
- id: check_term_regex
  doc: For each search spec that includes a regular expression for terms, make sure
    that all values of the table field to be searched match the regex.  (If not, some
    of them could be excluded from searches.)
  type: boolean
  inputBinding:
    prefix: -checkTermRegex
- id: check_indexes
  doc: Make sure that an index is defined on each field to be searched.
  type: boolean
  inputBinding:
    prefix: -checkIndexes
outputs: []
cwlVersion: v1.1
baseCommand:
- checkHgFindSpec
