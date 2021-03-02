class: CommandLineTool
id: rsat_random_motif.cwl
inputs:
- id: in_verbosity_set_verbosity
  doc: "#, --verbosity=#   set verbosity to level #\n0 no verbosity\n1 max verbosity"
  type: boolean?
  inputBinding:
    prefix: -v
- id: in__output_results
  doc: "#, --output=#      output results to #\nif not specified, the standard output\
    \ is used"
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_length_motif_length
  doc: '#, --length=#      motif length'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_conserv_motif_conservation
  doc: '#, --conserv=#     motif conservation (0.91 or low)'
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_mutiplier_mutliply_cell
  doc: '#, --mutiplier=#   mutliply each cell by #'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_motifs_generate_motifs
  doc: '#, --motifs=#      generate # motifs (one by default)'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_round
  doc: use integer values
  type: boolean?
  inputBinding:
    prefix: --round
- id: in_random_motif
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
  doc: USAGE
  type: string
  inputBinding:
    position: 0
- id: in_random_sites
  doc: implant-sites
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
- random-motif
