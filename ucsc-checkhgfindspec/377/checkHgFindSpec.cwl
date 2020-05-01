#!/usr/bin/env cwl-runner

baseCommand:
- checkHgFindSpec
class: CommandLineTool
cwlVersion: v1.0
id: checkhgfindspec
inputs:
- doc: Show the order in which tables will be searched in general.  [This will be
    done anyway if no termToSearch or options are specified.]
  id: show_searches
  inputBinding:
    prefix: -showSearches
  type: boolean
- doc: For each search spec that includes a regular expression for terms, make sure
    that all values of the table field to be searched match the regex.  (If not, some
    of them could be excluded from searches.)
  id: check_term_regex
  inputBinding:
    prefix: -checkTermRegex
  type: boolean
- doc: Make sure that an index is defined on each field to be searched.
  id: check_indexes
  inputBinding:
    prefix: -checkIndexes
  type: boolean
