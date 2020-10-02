class: CommandLineTool
id: rsat_random_motif.cwl
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
- id: in__length_motif
  doc: '#, --length=#      motif length'
  type: boolean
  inputBinding:
    prefix: -l
- id: in__conserv_motif
  doc: '#, --conserv=#     motif conservation (0.91 or low)'
  type: boolean
  inputBinding:
    prefix: -c
- id: in__mutiplier_mutliply
  doc: '#, --mutiplier=#   mutliply each cell by #'
  type: boolean
  inputBinding:
    prefix: -m
- id: in__motifs_generate
  doc: '#, --motifs=#      generate # motifs (one by default)'
  type: boolean
  inputBinding:
    prefix: -n
- id: in_round
  doc: use integer values
  type: boolean
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
cwlVersion: v1.1
baseCommand:
- rsat
- random-motif
