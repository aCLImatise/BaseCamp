class: CommandLineTool
id: meme2meme.cwl
inputs:
- id: in_consensus
  doc: "numeric names are swapped for an IUPAC\nconsensus; default: use existing names"
  type: boolean
  inputBinding:
    prefix: -consensus
- id: in_numbers
  doc: "use numbers instead of strings for motif names;\ndefault: use existing ID"
  type: boolean
  inputBinding:
    prefix: -numbers
- id: in_bg
  doc: "file with background frequencies of letters;\ndefault: use first file background"
  type: File
  inputBinding:
    prefix: -bg
- id: in_log_odds
  doc: "print log-odds matrix as well as frequency matrix;\ndefault: frequency matrix\
    \ only"
  type: boolean
  inputBinding:
    prefix: -logodds
- id: in_url
  doc: "website for the motif if it doesn't have one\nalready; The motif name is substituted\
    \ for\nMOTIF_NAME; default: use existing url"
  type: string
  inputBinding:
    prefix: -url
- id: in_force_url
  doc: Existing urls are ignored
  type: boolean
  inputBinding:
    prefix: -forceurl
- id: in_x_alph
  doc: "Convert all motifs to use the same alphabet as\nspecified in the first file\
    \ which must be a superset;\ndefault: all alphabets must be identical"
  type: boolean
  inputBinding:
    prefix: -xalph
- id: in_meme_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- meme2meme
