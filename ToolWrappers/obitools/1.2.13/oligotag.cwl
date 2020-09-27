class: CommandLineTool
id: oligotag.cwl
inputs:
- id: in_debug
  doc: Set logging in debug mode
  type: boolean
  inputBinding:
    prefix: --DEBUG
- id: in_without_progress_bar
  doc: desactivate progress bar
  type: boolean
  inputBinding:
    prefix: --without-progress-bar
- id: in_oligo_list
  doc: filename containing a list of oligonucleotide
  type: File
  inputBinding:
    prefix: --oligo-list
- id: in__oligosizesize_generate
  doc: "<###>, --oligo-size=<###>\nSize of oligonucleotide to generate"
  type: boolean
  inputBinding:
    prefix: -s
- id: in__familysizesize_generate
  doc: "<###>, --family-size=<###>\nSize of oligonucleotide family to generate"
  type: boolean
  inputBinding:
    prefix: -f
- id: in__distanceminimal_distance
  doc: "<###>, --distance=<###>\nminimal distance between two oligonucleotides"
  type: boolean
  inputBinding:
    prefix: -d
- id: in__gcmaxmaximum_count
  doc: "<###>, --gc-max=<###>\nmaximum count of G or C nucleotide acceptable in a\n\
    word"
  type: boolean
  inputBinding:
    prefix: -g
- id: in_accepted
  doc: pattern of accepted oligonucleotide
  type: string
  inputBinding:
    prefix: --accepted
- id: in_rejected
  doc: pattern of rejected oligonucleotide
  type: string
  inputBinding:
    prefix: --rejected
- id: in__homopolymerreject_oligo
  doc: "<###>, --homopolymer=<###>\nreject oligo with homopolymer longer than."
  type: boolean
  inputBinding:
    prefix: -p
- id: in__homopolymerminaccept_only
  doc: "<###>, --homopolymer-min=<###>\naccept only oligo with homopolymer longer\
    \ or equal to."
  type: boolean
  inputBinding:
    prefix: -P
- id: in_timeout
  doc: "timeout to identify a clique of good size\n"
  type: long
  inputBinding:
    prefix: --timeout
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- oligotag
