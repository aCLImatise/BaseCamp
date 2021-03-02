class: CommandLineTool
id: nw_clade.cwl
inputs:
- id: in_levels_int_give
  doc: "<levels (int)>: give context, i.e. start the subtree not at the last\ncommon\
    \ ancestor of the labels, but 'level' nodes higher (limited\nby the tree's root,\
    \ of course)."
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_only_prints_clade
  doc: ": only prints the clade if it is monophyletic, in the sense that ONLY\nthe\
    \ labels passed as arguments are found in the clade.\nSee also -s."
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_clade_defined_labels
  doc: ": clade is defined by labels that match the regexp (instead.\nof labels passed\
    \ as arguments)"
  type: string?
  inputBinding:
    prefix: -r
- id: in_prints_siblings_clade
  doc: ": prints the siblings of the clade defined by the labels passed as\narguments,\
    \ in the order in which they appear in the Newick.\nIf -m is also passed, only\
    \ prints siblings if the labels passed\nas arguments form a monophyletic group."
  type: boolean?
  inputBinding:
    prefix: -s
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- nw_clade
