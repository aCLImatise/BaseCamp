class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/faFilter.cwl
inputs:
- id: name
  doc: '- Only pass records where name matches wildcard * matches any string or no
    character. ? matches any single character. anything else etc must match the character
    exactly (these will will need to be quoted for the shell)'
  type: string
  inputBinding:
    prefix: -name
- id: name_pat_list
  doc: '- A list of regular expressions, one per line, that will be applied to the
    fasta name the same as -name'
  type: File
  inputBinding:
    prefix: -namePatList
- id: invert_match_select
  doc: '- invert match, select non-matching records.'
  type: boolean
  inputBinding:
    prefix: -v
- id: minsize
  doc: '- Only pass sequences at least this big.'
  type: string
  inputBinding:
    prefix: -minSize
- id: maxsize
  doc: '- Only pass sequences this size or smaller.'
  type: string
  inputBinding:
    prefix: -maxSize
- id: max_n
  doc: Only pass sequences with fewer than this number of N's
  type: string
  inputBinding:
    prefix: -maxN
- id: uniq
  doc: '- Removes duplicate sequence ids, keeping the first.'
  type: boolean
  inputBinding:
    prefix: -uniq
- id: make_case_count
  doc: '- make -uniq ignore case so sequence IDs ABC and abc count as dupes.'
  type: boolean
  inputBinding:
    prefix: -i
- id: in_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- faFilter
