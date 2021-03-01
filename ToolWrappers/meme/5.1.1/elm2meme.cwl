class: CommandLineTool
id: elm2meme.cwl
inputs:
- id: in_allow_anchored_motifs
  doc: "allow anchored motifs;\ndefault: skip anchored motifs"
  type: boolean?
  inputBinding:
    prefix: -anchored
- id: in_bg
  doc: "file with background frequencies of letters;\ndefault: uniform background"
  type: File?
  inputBinding:
    prefix: -bg
- id: in_pseudo
  doc: "add <total pseudocounts> times letter\nbackground to each frequency; default:\
    \ 0"
  type: long?
  inputBinding:
    prefix: -pseudo
- id: in_print_logodds_matrix
  doc: "print log-odds matrix, too;\ndefault: print frequency matrix only"
  type: boolean?
  inputBinding:
    prefix: -logodds
- id: in_url
  doc: "website for the motif; The motif name\nis substituted for MOTIF_NAME;"
  type: string?
  inputBinding:
    prefix: -url
- id: in_converts
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_elm_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_writes
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_add
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_allow
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_default
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_is
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_print
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_website
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_elm
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_var_16
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_for
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_var_18
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_substituted
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_total_pseudo_counts
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_usage
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_with
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_background
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_matrix
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_motifs
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_standard
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_the
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_times
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_motif_name
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_frequencies
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_into
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_letter
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_motif
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_meme
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_of
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_letters
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- elm2meme
