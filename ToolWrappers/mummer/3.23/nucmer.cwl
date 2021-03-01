class: CommandLineTool
id: nucmer.cwl
inputs:
- id: in_mum
  doc: "Use anchor matches that are unique in both the reference\nand query"
  type: boolean?
  inputBinding:
    prefix: --mum
- id: in_m_umc_and
  doc: Same as --mumreference
  type: boolean?
  inputBinding:
    prefix: --mumcand
- id: in_mum_reference
  doc: "Use anchor matches that are unique in in the reference\nbut not necessarily\
    \ unique in the query (default behavior)"
  type: boolean?
  inputBinding:
    prefix: --mumreference
- id: in_max_match
  doc: Use all anchor matches regardless of their uniqueness
  type: boolean?
  inputBinding:
    prefix: --maxmatch
- id: in_breaklen_set_distance
  doc: "|breaklen     Set the distance an alignment extension will attempt to\nextend\
    \ poor scoring regions before giving up (default 200)"
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_mincluster_sets_length
  doc: '|mincluster   Sets the minimum length of a cluster of matches (default 65)'
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_depend
  doc: Print the dependency information and exit
  type: boolean?
  inputBinding:
    prefix: --depend
- id: in_diagdiff_set_difference
  doc: "|diagdiff     Set the maximum diagonal difference between two adjacent\nanchors\
    \ in a cluster (default 5)"
  type: boolean?
  inputBinding:
    prefix: -D
- id: in_diagfactor_set_difference
  doc: "|diagfactor   Set the maximum diagonal difference between two adjacent\nanchors\
    \ in a cluster as a differential fraction of the gap\nlength (default 0.12)"
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_forward
  doc: Use only the forward strand of the Query sequences
  type: boolean?
  inputBinding:
    prefix: --forward
- id: in_maxgap_set_gap
  doc: "|maxgap       Set the maximum gap between two adjacent matches in a\ncluster\
    \ (default 90)"
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_minmatch_set_length
  doc: '|minmatch     Set the minimum length of a single match (default 20)'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_coords
  doc: "Automatically generate the original NUCmer1.1 coords\noutput file using the\
    \ 'show-coords' program"
  type: File?
  inputBinding:
    prefix: --coords
- id: in_prefix_set_prefix
  doc: '|prefix       Set the prefix of the output files (default "out")'
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_reverse
  doc: Use only the reverse complement of the Query sequences
  type: boolean?
  inputBinding:
    prefix: --reverse
- id: in_reference
  doc: Set the input reference multi-FASTA filename
  type: string
  inputBinding:
    position: 0
- id: in_query
  doc: Set the input query multi-FASTA filename
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_coords
  doc: "Automatically generate the original NUCmer1.1 coords\noutput file using the\
    \ 'show-coords' program"
  type: File?
  outputBinding:
    glob: $(inputs.in_coords)
hints: []
cwlVersion: v1.1
baseCommand:
- nucmer
