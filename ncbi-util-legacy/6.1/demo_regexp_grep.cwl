#!/usr/bin/env cwl-runner

baseCommand:
- demo_regexp_grep
class: CommandLineTool
cwlVersion: v1.0
id: demo_regexp_grep
inputs:
- doc: print only a count of matching lines per FILE
  id: count
  inputBinding:
    prefix: --count
  type: boolean
- doc: ignore case distinctions
  id: ignore_case
  inputBinding:
    prefix: --ignore-case
  type: boolean
- doc: print only FILE names containing matches
  id: files_with_matches
  inputBinding:
    prefix: --files-with-matches
  type: boolean
- doc: print line number with output lines
  id: line_number
  inputBinding:
    prefix: --line-number
  type: boolean
- doc: recursively scan sub-directories
  id: recursive
  inputBinding:
    prefix: --recursive
  type: boolean
- doc: suppress error messages
  id: no_messages
  inputBinding:
    prefix: --no-messages
  type: boolean
- doc: select non-matching lines
  id: invert_match
  inputBinding:
    prefix: --invert-match
  type: boolean
- doc: force PATTERN to match only whole lines
  id: line_regex
  inputBinding:
    prefix: --line-regex
  type: boolean
- doc: force PATTERN to match only whole lines
  id: line_regexp
  inputBinding:
    prefix: --line-regexp
  type: boolean
- doc: <filename>  or  --file=<filename> Read patterns from <filename> instead of
    using a command line option. Trailing white space is removed; blanks lines are
    ignored. There is a maximum of 100 patterns.
  id: f
  inputBinding:
    prefix: -f
  type: boolean
