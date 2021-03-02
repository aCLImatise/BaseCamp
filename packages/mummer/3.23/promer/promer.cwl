class: CommandLineTool
id: promer.cwl
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
    \ poor scoring regions before giving up, measured in\namino acids (default 60)"
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_mincluster_sets_length
  doc: "|mincluster   Sets the minimum length of a cluster of matches, measured in\n\
    amino acids (default 20)"
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_depend
  doc: Print the dependency information and exit
  type: boolean?
  inputBinding:
    prefix: --depend
- id: in_diagfactor_set_factordefault
  doc: "|diagfactor   Set the clustering diagonal difference separation factor\n(default\
    \ .11)"
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_maxgap_set_gap
  doc: "|maxgap       Set the maximum gap between two adjacent matches in a\ncluster,\
    \ measured in amino acids (default 30)"
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_minmatch_set_length
  doc: "|minmatch     Set the minimum length of a single match, measured in amino\n\
    acids (default 6)"
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_masklen_set_maximum
  doc: "|masklen      Set the maximum bookend masking lenth, measured in amino\nacids\
    \ (default 8)"
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_coords
  doc: "Automatically generate the original PROmer1.1 \".coords\"\noutput file using\
    \ the \"show-coords\" program"
  type: File?
  inputBinding:
    prefix: --coords
- id: in_prefix_set_prefix
  doc: '|prefix       Set the prefix of the output files (default "out")'
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_matrix_set_number
  doc: "|matrix       Set the alignment matrix number to 1 [BLOSUM 45], 2 [BLOSUM\n\
    62] or 3 [BLOSUM 80] (default 2)\n"
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_reference
  doc: Set the input reference multi-FASTA DNA file
  type: string
  inputBinding:
    position: 0
- id: in_query
  doc: Set the input query multi-FASTA DNA file
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_coords
  doc: "Automatically generate the original PROmer1.1 \".coords\"\noutput file using\
    \ the \"show-coords\" program"
  type: File?
  outputBinding:
    glob: $(inputs.in_coords)
hints: []
cwlVersion: v1.1
baseCommand:
- promer
