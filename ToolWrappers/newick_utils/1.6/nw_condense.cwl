class: CommandLineTool
id: nw_condense.cwl
inputs:
- id: in_uses_group_map
  doc: ": uses a group map. This is a text file that lists one\nlabel and one group\
    \ name per line. For example a file with the\nfollowing contents\nHomo Africa\n\
    Hylobates Asia\nGorilla Africa\nPan Africa\nPongo Asia\nmaps the generic names\
    \ of some apes to their continent of origin.\nThat is, it defines the groups 'Asia'\
    \ and 'Africa'. Labels and group\nnames are white-separated and should not contain\
    \ spaces.\nClades consisting entirely of leaves belonging to a single group\n\
    will be replaced by a single leaf whose label has the following\nstructure: <group\
    \ name>_<sample>_<size>, where <sample> is the label\nof one of the members of\
    \ the clade, and <size> is the number of\nmembers of the clade.\nApplied to the\
    \ Old world primates tree 'data/catarrhini', the above\nmap would condense all\
    \ African apes into a single leaf (since they\nform a clade) with label 'Africa_Homo_3'.\
    \ It would not be able to\ncondense further, however, because Pongo belong to\
    \ group 'Asia'."
  type: File
  inputBinding:
    prefix: -m
- id: in_unicifies_leaf_labels
  doc: ": unicifies leaf labels by visiting the tree in Newick order and\nremoving\
    \ any leaf node whose label was already seen."
  type: boolean
  inputBinding:
    prefix: -u
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nw_condense
