class: CommandLineTool
id: matrix2meme.cwl
inputs:
- id: in_dna
  doc: use DNA IUPAC alphabet
  type: boolean?
  inputBinding:
    prefix: -dna
- id: in_rna
  doc: use RNA IUPAC alphabet
  type: boolean?
  inputBinding:
    prefix: -rna
- id: in_protein
  doc: use protein IUPAC alphabet
  type: boolean?
  inputBinding:
    prefix: -protein
- id: in_alph
  doc: 'Alphabet definition; default: DNA'
  type: File?
  inputBinding:
    prefix: -alph
- id: in_orien
  doc: '|col|row           The matrix orientation; default: auto'
  type: string?
  inputBinding:
    prefix: -orien
- id: in_num_seqs
  doc: "assume frequencies based on this many\nsequences when probabilty matrix is\
    \ used;\ndefault: 20"
  type: long?
  inputBinding:
    prefix: -numseqs
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
- id: in_log_odds
  doc: "output the log-odds (PSSM) and frequency\n(PSPM) motifs; default: PSPM motif\
    \ only"
  type: boolean?
  inputBinding:
    prefix: -logodds
- id: in_url
  doc: "website for the motif; The motif name is\nsubstituted for MOTIF_NAME; default:\
    \ no url"
  type: string?
  inputBinding:
    prefix: -url
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- matrix2meme
