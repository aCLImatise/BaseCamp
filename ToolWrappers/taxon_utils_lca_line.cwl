class: CommandLineTool
id: taxon_utils_lca_line.cwl
inputs:
- id: in_verbose
  doc: "-t, --taxonomy TEXT    Taxonomy file  [required]\n-n, --no-lca FILENAME  File\
    \ to which write records with no LCA\n-a, --only-ranked      If set, only taxa\
    \ that have a rank will be used in\nthe lineageself. This is not advised for lineages\n\
    such as Viruses, where the top levels have no rank\n-s, --separator TEXT   separator\
    \ for taxon_ids (defaults to TAB)\n--help                 Show this message and\
    \ exit.\n"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_input_file
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
- lca_line
