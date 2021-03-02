class: CommandLineTool
id: ktImportTaxonomy.cwl
inputs:
- id: in_taxonomy
  doc: "Tab-delimited file with taxonomy IDs and (optionally) query\nIDs, magnitudes\
    \ and scores. By default, query IDs, taxonomy IDs\nand scores will be taken from\
    \ columns 1, 2 and 3, respectively\n(see -q, -t, -s, and -m). Lines beginning\
    \ with \"#\" will be\nignored. By default, separate datasets will be created for\
    \ each\ninput (see [-c])."
  type: string
  inputBinding:
    position: 0
- id: in_magnitudes
  doc: "Optional file listing query IDs with magnitudes, separated by\ntabs. This\
    \ can be used to account for read length or contig\ndepth to obtain a more accurate\
    \ representation of abundance. By\ndefault, query sequences without specified\
    \ magnitudes will be\nassigned a magnitude of 1. Magnitude files for assemblies\
    \ in ACE\nformat can be created with ktGetContigMagnitudes."
  type: string
  inputBinding:
    position: 1
- id: in_name
  doc: "A name to show in the list of datasets in the Krona chart (if\nmultiple input\
    \ files are present and [-c] is not specified). By\ndefault, the basename of the\
    \ file will be used.\n_________"
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/krona:2.8--pl526_0
cwlVersion: v1.1
baseCommand:
- ktImportTaxonomy
