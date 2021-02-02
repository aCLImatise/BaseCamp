class: CommandLineTool
id: nucmer.cwl
inputs:
- id: in_mum
  doc: "Use anchor matches that are unique in both the reference\nand query"
  type: boolean
  inputBinding:
    prefix: --mum
- id: in_m_umc_and
  doc: Same as --mumreference
  type: boolean
  inputBinding:
    prefix: --mumcand
- id: in_mum_reference
  doc: "Use anchor matches that are unique in in the reference\nbut not necessarily\
    \ unique in the query (default behavior)"
  type: boolean
  inputBinding:
    prefix: --mumreference
- id: in_max_match
  doc: Use all anchor matches regardless of their uniqueness
  type: boolean
  inputBinding:
    prefix: --maxmatch
- id: in_breaklen_set_distance
  doc: "|breaklen     Set the distance an alignment extension will attempt to\nextend\
    \ poor scoring regions before giving up (default 200)"
  type: boolean
  inputBinding:
    prefix: -b
- id: in_mincluster_sets_length
  doc: '|mincluster   Sets the minimum length of a cluster of matches (default 65)'
  type: boolean
  inputBinding:
    prefix: -c
- id: in_depend
  doc: Print the dependency information and exit
  type: boolean
  inputBinding:
    prefix: --depend
- id: in_diagdiff_set_difference
  doc: "|diagdiff     Set the maximum diagonal difference between two adjacent\nanchors\
    \ in a cluster (default 5)"
  type: boolean
  inputBinding:
    prefix: -D
- id: in_diagfactor_set_difference
  doc: "|diagfactor   Set the maximum diagonal difference between two adjacent\nanchors\
    \ in a cluster as a differential fraction of the gap\nlength (default 0.12)"
  type: boolean
  inputBinding:
    prefix: -d
- id: in__forward_use
  doc: "--forward       Use only the forward strand of the Query sequences\n-g|maxgap\
    \       Set the maximum gap between two adjacent matches in a\ncluster (default\
    \ 90)\n-h\n--help          Display help information and exit\n-l|minmatch    \
    \ Set the minimum length of a single match (default 20)\n-o\n--coords        Automatically\
    \ generate the original NUCmer1.1 coords\noutput file using the 'show-coords'\
    \ program\n--[no]optimize  Toggle alignment score optimization, i.e. if an alignment\n\
    extension reaches the end of a sequence, it will backtrack\nto optimize the alignment\
    \ score instead of terminating the\nalignment at the end of the sequence (default\
    \ --optimize)\n-p|prefix       Set the prefix of the output files (default \"\
    out\")\n-r\n--reverse       Use only the reverse complement of the Query sequences\n\
    --[no]simplify  Simplify alignments by removing shadowed clusters. Turn\nthis\
    \ option off if aligning a sequence to itself to look\nfor repeats (default --simplify)\n\
    -V\n--version       Display the version information and exit\n"
  type: boolean
  inputBinding:
    prefix: -f
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
cwlVersion: v1.1
baseCommand:
- nucmer
