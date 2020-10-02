class: CommandLineTool
id: rsat_random_sites.cwl
inputs:
- id: in__verbosity_set
  doc: "#, --verbosity=#   set verbosity to level #\n0 no verbosity\n1 max verbosity"
  type: boolean
  inputBinding:
    prefix: -v
- id: in__output_output
  doc: "#, --output=#      output results to #\nif not specified, the standard output\
    \ is used"
  type: boolean
  inputBinding:
    prefix: -o
- id: in__motif_read
  doc: "#, --motif=#       read motif(s) from #\nif not specified, the standard input\
    \ is used"
  type: boolean
  inputBinding:
    prefix: -m
- id: in_number_sites_generate
  doc: '#                  number of sites to generate'
  type: boolean
  inputBinding:
    prefix: -n
- id: in_random_sites
  doc: VERSION
  type: string
  inputBinding:
    position: 0
- id: in_author
  doc: AUTHOR
  type: long
  inputBinding:
    position: 1
- id: in_pssm
  doc: motifs
  type: string
  inputBinding:
    position: 0
- id: in_implant_sites
  doc: random-motif
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rsat
- random-sites
