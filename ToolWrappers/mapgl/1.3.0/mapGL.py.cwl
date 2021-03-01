class: CommandLineTool
id: mapGL.py.cwl
inputs:
- id: in_output
  doc: 'Output file. Default stdout. (default: stdout)'
  type: File?
  inputBinding:
    prefix: --output
- id: in_threshold
  doc: "Mapping threshold i.e., |elem| * threshold <=\n|mapped_elem|. Default = 0.0\
    \ -- equivalent to\naccepting a single-base overlap. On the other end of\nthe\
    \ spectrum, setting this value to 1 is equivalent to\nonly accepting full-length\
    \ overlaps. (default: 0.0)"
  type: double?
  inputBinding:
    prefix: --threshold
- id: in_gap
  doc: "Ignore elements with an insertion/deletion of this or\nbigger size. Using\
    \ the default value (-1) will allow\ngaps of any size. (default: -1)"
  type: long?
  inputBinding:
    prefix: --gap
- id: in_verbose
  doc: 'Verbosity level (default: info)'
  type: string?
  inputBinding:
    prefix: --verbose
- id: in_drop_split
  doc: "If elements span multiple chains, report them as non-\nmapping. These will\
    \ then be reported as gains or\nlosses, according to the maximum-parsimony\npredictions.\
    \ This is the default mapping behavior for\nbnMapper. By default, mapGL.pys will\
    \ follow the\nmapping convention used by liftOver, whereas the\nlongest mapped\
    \ alignment is reported for split\nelements. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --drop_split
- id: in_in_format
  doc: 'Input file format. (Default: BED) (default: BED)'
  type: string?
  inputBinding:
    prefix: --in_format
- id: in_full_labels
  doc: "Attempt to predict gain/loss events on all branches of\nthe tree, not just\
    \ query/target branches. Output will\ninclude a comma-delimited list of gain/loss\
    \ events\nfrom any/all affected branches. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --full_labels
- id: in_no_prune
  doc: "Do not attempt to disambiguate the root state to\nresolve ambiguous gain/loss\
    \ predictions. Instead,\nlabel affected features as 'ambiguous'. (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --no_prune
- id: in_priority
  doc: "When resolving ambiguous trees, prioritize sequence\ngain or sequence loss.\
    \ This can be thought of as\nassigning a lower cost to sequence insertions relative\n\
    to deletions, or vice-versa. When priority='gain',\nambiguity is resolved by assigning\
    \ 0 state to the root\nnode, such that sequence presence on a descendant\nbranch\
    \ will be interpreted as a gain. When\npriority='loss', ambiguity is resolved\
    \ by asssigning\nstate 1 to the root node, such that sequence absence\nin a descendant\
    \ node is interpreted as a sequence\nloss. Default=gain (default: gain)"
  type: string?
  inputBinding:
    prefix: --priority
- id: in_input
  doc: "Input regions to process. Should be in standard bed\nformat. Only the first\
    \ four bed fields will be used."
  type: string
  inputBinding:
    position: 0
- id: in_tree
  doc: "Tree, in standard Newick format, with or without\nbranch lengths, describing\
    \ relationships of query and\ntarget species to outgroups. May be given as a string\n\
    or file."
  type: string
  inputBinding:
    position: 1
- id: in_qname
  doc: "Name of the query species. Regions from this species\nwill be mapped to target\
    \ species coordinates."
  type: string
  inputBinding:
    position: 2
- id: in_t_name
  doc: "Name of the target species. Regions from the query\nspecies will be mapped\
    \ to coordinates from this\nspecies."
  type: string
  inputBinding:
    position: 3
- id: in_alignments
  doc: "Alignment files (.chain or .pkl): One for the target\nspecies and one per\
    \ outgroup species. Files should be\nnamed according to the convention:\nqname.tname[...].chain.gz,\
    \ where qname is the query\nspecies name and tname is the name of the\ntarget/outgroup\
    \ species. Names used for qname and\ntname must match names used in the newick\
    \ tree."
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'Output file. Default stdout. (default: stdout)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- mapGL.py
