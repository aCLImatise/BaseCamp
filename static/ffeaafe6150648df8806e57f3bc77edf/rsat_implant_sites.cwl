class: CommandLineTool
id: rsat_implant_sites.cwl
inputs:
- id: in_verbosity_set_verbosity
  doc: "#, --verbosity=#   set verbosity to level #\n0 no verbosity\n1 max verbosity"
  type: boolean?
  inputBinding:
    prefix: -v
- id: in__input_read
  doc: "#, --input=#       read sequence from # (must be in FASTA format)\nif not\
    \ specified, the standard input is used"
  type: boolean?
  inputBinding:
    prefix: -i
- id: in__output_results
  doc: "#, --output=#      output results to #\nif not specified, the standard output\
    \ is used"
  type: boolean?
  inputBinding:
    prefix: -o
- id: in__sites_read
  doc: '#, --sites=#       read sites from # (must be in FASTA format)'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in__features_positions
  doc: '#, --features=#    store site positions in #'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_noov
  doc: do not allow overlapping sites
  type: boolean?
  inputBinding:
    prefix: --noov
- id: in_implant_sites
  doc: VERSION
  type: string
  inputBinding:
    position: 0
- id: in_author
  doc: AUTHOR
  type: long
  inputBinding:
    position: 1
- id: in_motifs
  doc: sequences
  type: string
  inputBinding:
    position: 0
- id: in_random_motif
  doc: random-sites
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rsat
- implant-sites
