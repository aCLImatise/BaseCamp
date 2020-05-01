#!/usr/bin/env cwl-runner

baseCommand:
- dialign-tx
class: CommandLineTool
cwlVersion: v1.0
id: dialign-tx
inputs:
- doc: Debug-Mode  [DEFAULT 0] 0 no debug statements 1 debugs the current phase of
    the processing 2 very loquacious debugging 5 hardcore debugging
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: maximum amount of input sequences [DEFAULT 5000]
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: maximum number of characters per line in a FASTA file [DEFAULT 100]
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: maximum amount of characters per line when printing a sequence [DEFAULT 80]
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: sensitivity mode, the higher the level the less likely spurious random fragments
    are aligned in local alignments  [DEFAULT 0] 0 switched off  1 level-1, reduced
    sensitivity 2 level-2, strongly reduced sensitivity
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: 'score matrix file name (in the configuration directory) [DEFAULT PROTEIN:
    BLOSUM.scr] [DEFAULT DNA: dna_matrix.scr]'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: defines the minimum weight when the weight formula is changed to 1-pow(1-prob,
    factor) [DEFAULT 0.000000065]
  id: w
  inputBinding:
    prefix: -w
  type: boolean
- doc: 'probability distribution file name (in the configuration directory)  [DEFAULT
    PROTEIN: BLOSUM.diag_prob_t10] [DEFAULT DNA: dna_diag_prob_100_exp_550000]'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: add to each score (to prevent negative values) [DEFAULT 0]
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: '"even" threshold for low score for sequences alignment  [DEFAULT PROTEIN:
    4] [DEFAULT DNA: 0]'
  id: t
  inputBinding:
    prefix: -t
  type: boolean
- doc: 'maximum number of consecutive positions for window containing low scoring
    positions  [DEFAULT PROTEIN: 4] [DEFAULT DNA: 4]'
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: 'global minimum fragment length for stop criterion  [DEFAULT PROTEIN: 40]  [DEFAULT
    DNA: 40]'
  id: g
  inputBinding:
    prefix: -g
  type: boolean
- doc: 'minimal allowed average score in frag window containing low  scoring positions  [DEFAULT
    PROTEIN: 4.0] [DEFAULT DNA: 0.25]'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: wether overlap weights are calculated or not [DEFAULT 0]
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: minimum fragment length [DEFAULT 1]
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: threshold weight to consider the fragment at all [DEFAULT 0.0]
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: '[DEFAULT 0] 1: only use a sqrt(amount_of_seqs) stripe of neighbour sequences
    to calculate pairwise alignments (increase performance) 0: all pairwise alignments
    will be calculated'
  id: u
  inputBinding:
    prefix: -u
  type: boolean
- doc: optional anchor file [DEFAULT none]
  id: a
  inputBinding:
    prefix: -A
  type: boolean
- doc: input is DNA-sequence
  id: d
  inputBinding:
    prefix: -D
  type: boolean
- doc: 'translate DNA into aminoacids from begin to end (length will be cut to mod
    3 = 0) WARNING: Do not use -D with this option  (Default values for PROTEIN input
    will be loaded)'
  id: t
  inputBinding:
    prefix: -T
  type: boolean
- doc: 'compare only longest Open Reading Frame WARNING: Do not use -D with this option  (Default
    values for PROTEIN input will be loaded)'
  id: l
  inputBinding:
    prefix: -L
  type: boolean
- doc: 'translate DNA to aminoacids, reading frame for each sequence calculated due
    to its longest ORF WARNING: Do not use -D with this option  (Default values for
    PROTEIN input will be loaded)'
  id: o
  inputBinding:
    prefix: -O
  type: boolean
- doc: 'output in aminoacids, no retranslation of DNA sequences [DEFAULT: input =
    output]'
  id: p
  inputBinding:
    prefix: -P
  type: boolean
- doc: fast mode (implies -l0, since it already significantly reduces sensitivity)
  id: f
  inputBinding:
    prefix: -F
  type: boolean
- doc: generate probability table saved in <config_dir>/prob_table and exit
  id: c
  inputBinding:
    prefix: -C
  type: boolean
- doc: this message
  id: h
  inputBinding:
    prefix: -H
  type: string
