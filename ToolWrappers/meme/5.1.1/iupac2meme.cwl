class: CommandLineTool
id: iupac2meme.cwl
inputs:
- id: in_use_dna_iupac_alphabet
  doc: use DNA IUPAC alphabet
  type: boolean?
  inputBinding:
    prefix: -dna
- id: in_use_rna_iupac_alphabet
  doc: use RNA IUPAC alphabet
  type: boolean?
  inputBinding:
    prefix: -rna
- id: in_use_protein_iupac_alphabet
  doc: use protein IUPAC alphabet
  type: boolean?
  inputBinding:
    prefix: -protein
- id: in_alph
  doc: "file with alphabet definition;\ndefault: use DNA IUPAC alphabet"
  type: File?
  inputBinding:
    prefix: -alph
- id: in_num_seqs
  doc: "assume frequencies based on this many\nsequences; default: 20"
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
- id: in_output_logodds_pssm
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
- id: in_no_sort
  doc: don't sort the order of motifs
  type: boolean?
  inputBinding:
    prefix: -nosort
- id: in_named
  doc: "looks for a motif name after each IUPAC code;\ndefault: use the IUPAC code\
    \ as the motif name"
  type: boolean?
  inputBinding:
    prefix: -named
- id: in_add
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_assume
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
- id: in_iupac_motif
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_use
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_18
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_var_19
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_frequencies
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_var_21
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_the
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_total_pseudo_counts
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_with
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_iupac
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_alphabet
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_background
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_based
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_var_29
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_times
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_definition
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_letter
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_on
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_of
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_this
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_letters
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_many
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
- iupac2meme
