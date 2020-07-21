class: CommandLineTool
id: ../../../dialign_tx.cwl
inputs:
- id: debugmode_debug_statements
  doc: Debug-Mode  [DEFAULT 0] 0 no debug statements 1 debugs the current phase of
    the processing 2 very loquacious debugging 5 hardcore debugging
  type: boolean
  inputBinding:
    prefix: -d
- id: maximum_amount_input
  doc: maximum amount of input sequences [DEFAULT 5000]
  type: boolean
  inputBinding:
    prefix: -s
- id: maximum_number_characters
  doc: maximum number of characters per line in a FASTA file [DEFAULT 100]
  type: boolean
  inputBinding:
    prefix: -a
- id: maximum_amount_printing
  doc: maximum amount of characters per line when printing a sequence [DEFAULT 80]
  type: boolean
  inputBinding:
    prefix: -c
- id: sensitivity_mode_higher
  doc: sensitivity mode, the higher the level the less likely spurious random fragments
    are aligned in local alignments  [DEFAULT 0] 0 switched off  1 level-1, reduced
    sensitivity 2 level-2, strongly reduced sensitivity
  type: boolean
  inputBinding:
    prefix: -l
- id: score_matrix_file
  doc: 'score matrix file name (in the configuration directory) [DEFAULT PROTEIN:
    BLOSUM.scr] [DEFAULT DNA: dna_matrix.scr]'
  type: boolean
  inputBinding:
    prefix: -m
- id: defines_minimum_weight
  doc: defines the minimum weight when the weight formula is changed to 1-pow(1-prob,
    factor) [DEFAULT 0.000000065]
  type: boolean
  inputBinding:
    prefix: -w
- id: probability_distribution_file
  doc: 'probability distribution file name (in the configuration directory)  [DEFAULT
    PROTEIN: BLOSUM.diag_prob_t10] [DEFAULT DNA: dna_diag_prob_100_exp_550000]'
  type: boolean
  inputBinding:
    prefix: -p
- id: add_prevent_values
  doc: add to each score (to prevent negative values) [DEFAULT 0]
  type: boolean
  inputBinding:
    prefix: -v
- id: threshold_low_score
  doc: '"even" threshold for low score for sequences alignment  [DEFAULT PROTEIN:
    4] [DEFAULT DNA: 0]'
  type: boolean
  inputBinding:
    prefix: -t
- id: maximum_number_consecutive
  doc: 'maximum number of consecutive positions for window containing low scoring
    positions  [DEFAULT PROTEIN: 4] [DEFAULT DNA: 4]'
  type: boolean
  inputBinding:
    prefix: -n
- id: global_minimum_fragment
  doc: 'global minimum fragment length for stop criterion  [DEFAULT PROTEIN: 40]  [DEFAULT
    DNA: 40]'
  type: boolean
  inputBinding:
    prefix: -g
- id: overlap_weights_calculated
  doc: wether overlap weights are calculated or not [DEFAULT 0]
  type: boolean
  inputBinding:
    prefix: -o
- id: minimum_fragment_length
  doc: minimum fragment length [DEFAULT 1]
  type: boolean
  inputBinding:
    prefix: -f
- id: threshold_weight_consider
  doc: threshold weight to consider the fragment at all [DEFAULT 0.0]
  type: boolean
  inputBinding:
    prefix: -r
- id: only_use_stripe
  doc: '[DEFAULT 0] 1: only use a sqrt(amount_of_seqs) stripe of neighbour sequences
    to calculate pairwise alignments (increase performance) 0: all pairwise alignments
    will be calculated'
  type: boolean
  inputBinding:
    prefix: -u
- id: optional_anchor_file
  doc: optional anchor file [DEFAULT none]
  type: boolean
  inputBinding:
    prefix: -A
- id: input_is_dnasequence
  doc: input is DNA-sequence
  type: boolean
  inputBinding:
    prefix: -D
- id: translate_dna_aminoacids_begin
  doc: 'translate DNA into aminoacids from begin to end (length will be cut to mod
    3 = 0) WARNING: Do not use -D with this option  (Default values for PROTEIN input
    will be loaded)'
  type: boolean
  inputBinding:
    prefix: -T
- id: compare_only_warning
  doc: 'compare only longest Open Reading Frame WARNING: Do not use -D with this option  (Default
    values for PROTEIN input will be loaded)'
  type: boolean
  inputBinding:
    prefix: -L
- id: translate_dna_aminoacids_reading
  doc: 'translate DNA to aminoacids, reading frame for each sequence calculated due
    to its longest ORF WARNING: Do not use -D with this option  (Default values for
    PROTEIN input will be loaded)'
  type: boolean
  inputBinding:
    prefix: -O
- id: output_aminoacids_retranslation
  doc: 'output in aminoacids, no retranslation of DNA sequences [DEFAULT: input =
    output]'
  type: boolean
  inputBinding:
    prefix: -P
- id: fast_mode_implies
  doc: fast mode (implies -l0, since it already significantly reduces sensitivity)
  type: boolean
  inputBinding:
    prefix: -F
- id: generate_probability_table
  doc: generate probability table saved in <config_dir>/prob_table and exit
  type: boolean
  inputBinding:
    prefix: -C
- id: this_message
  doc: this message
  type: string
  inputBinding:
    prefix: -H
- id: di_align_t
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: conf_directory
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: fast_a_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: fast_a_out_file
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- dialign-tx
