class: CommandLineTool
id: ecogrep.cwl
inputs:
- id: in_compare_pattern_direct
  doc: ': [FIRST] : compare the given pattern with direct strand oligonucleotide'
  type: boolean?
  inputBinding:
    prefix: '-1'
- id: in_compare_pattern_reverse
  doc: ': [SECOND] : compare the given pattern with reverse strand oligonucleotide'
  type: boolean?
  inputBinding:
    prefix: '-2'
- id: in_atabase_containing_information
  doc: ': [D]atabase containing taxonomic information'
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_rrors_max_error
  doc: ': [E]rrors : max error allowed in pattern match (option-1, -2 and -p) (0 by
    default)'
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_attern_oligonucleotide_pattern
  doc: ': [P]attern : oligonucleotide pattern'
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_gnore_subtree_given
  doc: ': [I]gnore subtree under given taxonomic id'
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_estrict_search_subtree
  doc: ': [R]estrict search to subtree under given taxomic id'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_inert_sense_select
  doc: ': in[V]ert the sense of matching, to select non-matching lines.'
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ecogrep
