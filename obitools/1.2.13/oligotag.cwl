class: CommandLineTool
id: oligotag.cwl
inputs:
- id: debug
  doc: Set logging in debug mode
  type: boolean
  inputBinding:
    prefix: --DEBUG
- id: without_progress_bar
  doc: desactivate progress bar
  type: boolean
  inputBinding:
    prefix: --without-progress-bar
- id: oligo_list
  doc: filename containing a list of oligonucleotide
  type: File
  inputBinding:
    prefix: --oligo-list
- id: s
  doc: <###>, --oligo-size=<###> Size of oligonucleotide to generate
  type: boolean
  inputBinding:
    prefix: -s
- id: f
  doc: <###>, --family-size=<###> Size of oligonucleotide family to generate
  type: boolean
  inputBinding:
    prefix: -f
- id: d
  doc: <###>, --distance=<###> minimal distance between two oligonucleotides
  type: boolean
  inputBinding:
    prefix: -d
- id: g
  doc: <###>, --gc-max=<###> maximum count of G or C nucleotide acceptable in a word
  type: boolean
  inputBinding:
    prefix: -g
- id: accepted
  doc: pattern of accepted oligonucleotide
  type: string
  inputBinding:
    prefix: --accepted
- id: rejected
  doc: pattern of rejected oligonucleotide
  type: string
  inputBinding:
    prefix: --rejected
- id: p
  doc: <###>, --homopolymer=<###> reject oligo with homopolymer longer than.
  type: boolean
  inputBinding:
    prefix: -p
- id: p
  doc: <###>, --homopolymer-min=<###> accept only oligo with homopolymer longer or
    equal to.
  type: boolean
  inputBinding:
    prefix: -P
- id: timeout
  doc: timeout to identify a clique of good size
  type: string
  inputBinding:
    prefix: --timeout
outputs: []
cwlVersion: v1.1
baseCommand:
- oligotag
