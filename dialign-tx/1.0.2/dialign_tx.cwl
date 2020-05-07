class: CommandLineTool
id: dialign_tx.cwl
inputs:
- id: d
  doc: Debug-Mode  [DEFAULT 0] 0 no debug statements 1 debugs the current phase of
    the processing 2 very loquacious debugging 5 hardcore debugging
  type: boolean
  inputBinding:
    prefix: -d
- id: s
  doc: maximum amount of input sequences [DEFAULT 5000]
  type: boolean
  inputBinding:
    prefix: -s
- id: a
  doc: maximum number of characters per line in a FASTA file [DEFAULT 100]
  type: boolean
  inputBinding:
    prefix: -a
- id: c
  doc: maximum amount of characters per line when printing a sequence [DEFAULT 80]
  type: boolean
  inputBinding:
    prefix: -c
- id: l
  doc: sensitivity mode, the higher the level the less likely spurious random fragments
    are aligned in local alignments  [DEFAULT 0] 0 switched off  1 level-1, reduced
    sensitivity 2 level-2, strongly reduced sensitivity
  type: boolean
  inputBinding:
    prefix: -l
- id: m
  doc: 'score matrix file name (in the configuration directory) [DEFAULT PROTEIN:
    BLOSUM.scr] [DEFAULT DNA: dna_matrix.scr]'
  type: boolean
  inputBinding:
    prefix: -m
- id: w
  doc: defines the minimum weight when the weight formula is changed to 1-pow(1-prob,
    factor) [DEFAULT 0.000000065]
  type: boolean
  inputBinding:
    prefix: -w
- id: p
  doc: 'probability distribution file name (in the configuration directory)  [DEFAULT
    PROTEIN: BLOSUM.diag_prob_t10] [DEFAULT DNA: dna_diag_prob_100_exp_550000]'
  type: boolean
  inputBinding:
    prefix: -p
- id: v
  doc: add to each score (to prevent negative values) [DEFAULT 0]
  type: boolean
  inputBinding:
    prefix: -v
- id: t
  doc: '"even" threshold for low score for sequences alignment  [DEFAULT PROTEIN:
    4] [DEFAULT DNA: 0]'
  type: boolean
  inputBinding:
    prefix: -t
- id: n
  doc: 'maximum number of consecutive positions for window containing low scoring
    positions  [DEFAULT PROTEIN: 4] [DEFAULT DNA: 4]'
  type: boolean
  inputBinding:
    prefix: -n
- id: g
  doc: 'global minimum fragment length for stop criterion  [DEFAULT PROTEIN: 40]  [DEFAULT
    DNA: 40]'
  type: boolean
  inputBinding:
    prefix: -g
- id: m
  doc: 'minimal allowed average score in frag window containing low  scoring positions  [DEFAULT
    PROTEIN: 4.0] [DEFAULT DNA: 0.25]'
  type: boolean
  inputBinding:
    prefix: -m
- id: o
  doc: wether overlap weights are calculated or not [DEFAULT 0]
  type: boolean
  inputBinding:
    prefix: -o
- id: f
  doc: minimum fragment length [DEFAULT 1]
  type: boolean
  inputBinding:
    prefix: -f
- id: r
  doc: threshold weight to consider the fragment at all [DEFAULT 0.0]
  type: boolean
  inputBinding:
    prefix: -r
- id: u
  doc: '[DEFAULT 0] 1: only use a sqrt(amount_of_seqs) stripe of neighbour sequences
    to calculate pairwise alignments (increase performance) 0: all pairwise alignments
    will be calculated'
  type: boolean
  inputBinding:
    prefix: -u
- id: a
  doc: optional anchor file [DEFAULT none]
  type: boolean
  inputBinding:
    prefix: -A
- id: d
  doc: input is DNA-sequence
  type: boolean
  inputBinding:
    prefix: -D
- id: t
  doc: 'translate DNA into aminoacids from begin to end (length will be cut to mod
    3 = 0) WARNING: Do not use -D with this option  (Default values for PROTEIN input
    will be loaded)'
  type: boolean
  inputBinding:
    prefix: -T
- id: l
  doc: 'compare only longest Open Reading Frame WARNING: Do not use -D with this option  (Default
    values for PROTEIN input will be loaded)'
  type: boolean
  inputBinding:
    prefix: -L
- id: o
  doc: 'translate DNA to aminoacids, reading frame for each sequence calculated due
    to its longest ORF WARNING: Do not use -D with this option  (Default values for
    PROTEIN input will be loaded)'
  type: boolean
  inputBinding:
    prefix: -O
- id: p
  doc: 'output in aminoacids, no retranslation of DNA sequences [DEFAULT: input =
    output]'
  type: boolean
  inputBinding:
    prefix: -P
- id: f
  doc: fast mode (implies -l0, since it already significantly reduces sensitivity)
  type: boolean
  inputBinding:
    prefix: -F
- id: c
  doc: generate probability table saved in <config_dir>/prob_table and exit
  type: boolean
  inputBinding:
    prefix: -C
- id: h
  doc: this message
  type: string
  inputBinding:
    prefix: -H
outputs: []
cwlVersion: v1.1
baseCommand:
- dialign-tx
