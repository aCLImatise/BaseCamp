class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/matrix2meme.cwl
inputs:
- id: dna
  doc: use DNA IUPAC alphabet
  type: boolean
  inputBinding:
    prefix: -dna
- id: rna
  doc: use RNA IUPAC alphabet
  type: boolean
  inputBinding:
    prefix: -rna
- id: protein
  doc: use protein IUPAC alphabet
  type: boolean
  inputBinding:
    prefix: -protein
- id: alph
  doc: 'Alphabet definition; default: DNA'
  type: string
  inputBinding:
    prefix: -alph
- id: orien
  doc: '|col|row           The matrix orientation; default: auto'
  type: string
  inputBinding:
    prefix: -orien
- id: num_seqs
  doc: 'assume frequencies based on this many  sequences when probabilty matrix is
    used; default: 20'
  type: string
  inputBinding:
    prefix: -numseqs
- id: bg
  doc: 'file with background frequencies of letters;  default: uniform background'
  type: string
  inputBinding:
    prefix: -bg
- id: pseudo
  doc: 'add <total pseudocounts> times letter  background to each frequency; default:
    0'
  type: string
  inputBinding:
    prefix: -pseudo
- id: log_odds
  doc: 'output the log-odds (PSSM) and frequency  (PSPM) motifs; default: PSPM motif
    only'
  type: boolean
  inputBinding:
    prefix: -logodds
- id: url
  doc: 'website for the motif; The motif name is  substituted for MOTIF_NAME; default:
    no url'
  type: string
  inputBinding:
    prefix: -url
outputs: []
cwlVersion: v1.1
baseCommand:
- matrix2meme
