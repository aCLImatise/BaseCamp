class: CommandLineTool
id: faFilter.cwl
inputs:
- id: in_name
  doc: "- Only pass records where name matches wildcard\n* matches any string or no\
    \ character.\n? matches any single character.\nanything else etc must match the\
    \ character exactly\n(these will will need to be quoted for the shell)"
  type: string?
  inputBinding:
    prefix: -name
- id: in_name_pat_list
  doc: "- A list of regular expressions, one per line, that\nwill be applied to the\
    \ fasta name the same as -name"
  type: File?
  inputBinding:
    prefix: -namePatList
- id: in_invert_match_select
  doc: '- invert match, select non-matching records.'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_minsize
  doc: '- Only pass sequences at least this big.'
  type: string?
  inputBinding:
    prefix: -minSize
- id: in_maxsize
  doc: '- Only pass sequences this size or smaller.'
  type: long?
  inputBinding:
    prefix: -maxSize
- id: in_max_n
  doc: Only pass sequences with fewer than this number of N's
  type: long?
  inputBinding:
    prefix: -maxN
- id: in_uniq
  doc: '- Removes duplicate sequence ids, keeping the first.'
  type: boolean?
  inputBinding:
    prefix: -uniq
- id: in_make_ignore_case
  doc: '- make -uniq ignore case so sequence IDs ABC and abc count as dupes.'
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_in_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- faFilter
