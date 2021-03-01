class: CommandLineTool
id: dialign_tx.cwl
inputs:
- id: in_debugmode_debug_statements
  doc: "Debug-Mode  [DEFAULT 0]\n0 no debug statements\n1 debugs the current phase\
    \ of the processing\n2 very loquacious debugging\n5 hardcore debugging"
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_maximum_amount_input
  doc: maximum amount of input sequences [DEFAULT 5000]
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_maximum_number_characters
  doc: maximum number of characters per line in a FASTA file [DEFAULT 100]
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_maximum_amount_printing
  doc: "maximum amount of characters per line when printing a sequence\n[DEFAULT 80]"
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_sensitivity_mode_aligned
  doc: "sensitivity mode, the higher the level the less likely\nspurious random fragments\
    \ are aligned in local alignments\n[DEFAULT 0]\n0 switched off\n1 level-1, reduced\
    \ sensitivity\n2 level-2, strongly reduced sensitivity"
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_score_matrix_file
  doc: "score matrix file name (in the configuration directory)\n[DEFAULT PROTEIN:\
    \ BLOSUM.scr]\n[DEFAULT DNA: dna_matrix.scr]"
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_defines_minimum_weight
  doc: "defines the minimum weight when the weight formula is changed\nto 1-pow(1-prob,\
    \ factor) [DEFAULT 0.000000065]"
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_probability_distribution_file
  doc: "probability distribution file name (in the configuration\ndirectory)\n[DEFAULT\
    \ PROTEIN: BLOSUM.diag_prob_t10]\n[DEFAULT DNA: dna_diag_prob_100_exp_550000]"
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_add_prevent_values
  doc: add to each score (to prevent negative values) [DEFAULT 0]
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_threshold_low_alignment
  doc: "\"even\" threshold for low score for sequences alignment\n[DEFAULT PROTEIN:\
    \ 4]\n[DEFAULT DNA: 0]"
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_maximum_number_consecutive
  doc: "maximum number of consecutive positions for window containing\nlow scoring\
    \ positions\n[DEFAULT PROTEIN: 4]\n[DEFAULT DNA: 4]"
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_global_minimum_fragment
  doc: "global minimum fragment length for stop criterion\n[DEFAULT PROTEIN: 40]\n\
    [DEFAULT DNA: 40]"
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_wether_overlap_calculated
  doc: wether overlap weights are calculated or not [DEFAULT 0]
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_minimum_fragment_length
  doc: minimum fragment length [DEFAULT 1]
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_threshold_weight_consider
  doc: threshold weight to consider the fragment at all [DEFAULT 0.0]
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_only_use_stripe
  doc: "[DEFAULT 0]\n1: only use a sqrt(amount_of_seqs) stripe of neighbour\nsequences\
    \ to calculate pairwise alignments (increase performance)\n0: all pairwise alignments\
    \ will be calculated"
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_optional_anchor_file
  doc: optional anchor file [DEFAULT none]
  type: boolean?
  inputBinding:
    prefix: -A
- id: in_input_is_dnasequence
  doc: input is DNA-sequence
  type: boolean?
  inputBinding:
    prefix: -D
- id: in_translate_dna_end
  doc: "translate DNA into aminoacids from begin to end (length will be cut to mod\
    \ 3 = 0)\nWARNING: Do not use -D with this option\n(Default values for PROTEIN\
    \ input will be loaded)"
  type: boolean?
  inputBinding:
    prefix: -T
- id: in_compare_reading_framewarning
  doc: "compare only longest Open Reading Frame\nWARNING: Do not use -D with this\
    \ option\n(Default values for PROTEIN input will be loaded)"
  type: boolean?
  inputBinding:
    prefix: -L
- id: in_translate_dna_aminoacids
  doc: "translate DNA to aminoacids, reading frame for each sequence calculated due\
    \ to its longest ORF\nWARNING: Do not use -D with this option\n(Default values\
    \ for PROTEIN input will be loaded)"
  type: boolean?
  inputBinding:
    prefix: -O
- id: in_output_aminoacids_retranslation
  doc: "output in aminoacids, no retranslation of DNA sequences\n[DEFAULT: input =\
    \ output]"
  type: boolean?
  inputBinding:
    prefix: -P
- id: in_fast_mode_implies
  doc: fast mode (implies -l0, since it already significantly reduces sensitivity)
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_generate_probability_table
  doc: generate probability table saved in <config_dir>/prob_table and exit
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_this_message
  doc: this message
  type: string?
  inputBinding:
    prefix: -H
- id: in_di_align_t
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_conf_directory
  doc: ''
  type: Directory
  inputBinding:
    position: 1
- id: in_fast_a_file
  doc: ''
  type: File
  inputBinding:
    position: 2
- id: in_fast_a_out_file
  doc: ''
  type: File?
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_fast_a_out_file
  doc: ''
  type: File?
  outputBinding:
    glob: $(inputs.in_fast_a_out_file)
hints: []
cwlVersion: v1.1
baseCommand:
- dialign-tx
