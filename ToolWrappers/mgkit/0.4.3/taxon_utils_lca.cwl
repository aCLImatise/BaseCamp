class: CommandLineTool
id: taxon_utils_lca.cwl
inputs:
- id: in_verbose
  doc: "-t, --taxonomy TEXT             Taxonomy file  [required]\n-n, --no-lca FILENAME\
    \           File to which write records with no LCA\n-a, --only-ranked       \
    \        If set, only taxa that have a rank will be\nused in the lineageself.\
    \ This is not advised\nfor lineages such as Viruses, where the top\nlevels have\
    \ no rank\n-b, --bitscore FLOAT            Minimum bitscore accepted  [default:\
    \ 0]\n-m, --rename                    Emulates BLAST behaviour for headers (keep\n\
    left of first space)\n-s, --sorted                    If the GFF file is sorted\
    \ (all of a sequence\nannotations are contiguos) can use less\nmemory, `sort -s\
    \ -k 1,1` can be used\n-ft, --feat-type TEXT           Feature type used if the\
    \ output is a GFF\n(default is *LCA*)  [default: LCA]\n-r, --reference FILENAME\
    \        Reference file for the GFF, if supplied a\nGFF file is the output\n-p,\
    \ --simple-table              Uses a 2 column table format (seq_id\ntaxon_id)\
    \ TAB separated\n-kt, --krona-total INTEGER      Total number of raw sequences\
    \ (used to\noutput correct percentages in Krona\n-f, --out-format [krona|json|tab|gff]\n\
    Format of output file  [default: tab]\n--progress                      Shows Progress\
    \ Bar\n--help                          Show this message and exit.\n"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_gff_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- taxon-utils
- lca
