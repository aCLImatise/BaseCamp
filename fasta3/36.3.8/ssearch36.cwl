class: CommandLineTool
id: ../../../ssearch36.cwl
inputs:
- id: compare_forward_strand
  doc: compare forward strand only
  type: boolean
  inputBinding:
    prefix: '-3'
- id: show_complete_sequences
  doc: show complete Query/Sbjct sequences in alignment
  type: boolean
  inputBinding:
    prefix: -a
- id: high_scores_reported
  doc: ':  high scores reported (limited by -E by default); =<int> forces <int> results;'
  type: boolean
  inputBinding:
    prefix: -b
- id: length_querysbjct_name
  doc: ':  length of the query/sbjct name in alignments'
  type: boolean
  inputBinding:
    prefix: -C
- id: number_alignments_shown
  doc: ':  number of alignments shown (limited by -E by default)'
  type: boolean
  inputBinding:
    prefix: -d
- id: enable_debugging_output
  doc: enable debugging output
  type: boolean
  inputBinding:
    prefix: -D
- id: expandscript_extend_hits
  doc: ':  expand_script to extend hits'
  type: boolean
  inputBinding:
    prefix: -e
- id: _evalueerepeat_threshold
  doc: ':  E()-value,E()-repeat threshold'
  type: boolean
  inputBinding:
    prefix: -E
- id: _gapopen_penalty
  doc: ':  gap-open penalty'
  type: boolean
  inputBinding:
    prefix: -f
- id: min_evalue_displayed
  doc: ':  min E()-value displayed'
  type: boolean
  inputBinding:
    prefix: -F
- id: _gapextension_penalty
  doc: ':  gap-extension penalty'
  type: boolean
  inputBinding:
    prefix: -g
- id: show_histogram
  doc: show histogram
  type: boolean
  inputBinding:
    prefix: -H
- id: search_with_reversecomplement
  doc: search with reverse-complement
  type: boolean
  inputBinding:
    prefix: -i
- id: interactive_mode
  doc: interactive mode
  type: boolean
  inputBinding:
    prefix: -I
- id: _number_shuffles
  doc: ':  number of shuffles'
  type: boolean
  inputBinding:
    prefix: -k
- id: fastlibs_abbreviation_file
  doc: ':  FASTLIBS abbreviation file'
  type: boolean
  inputBinding:
    prefix: -l
- id: long_library_descriptions
  doc: long library descriptions
  type: boolean
  inputBinding:
    prefix: -L
- id: outputalignment_format_map
  doc: ":  Output/alignment format; 0 - standard \":. \" alignment; 1 - \" xX\"; 2\
    \ - \".MS..\"; 3 - separate >fasta entries; 4 - \"---\" alignment map; 5 - 0+4;\
    \ 6 - <html>; 8 - BLAST tabular; 8C commented BLAST tabular; 8CC BLAST tab CIGAR,\
    \ 8CD BLAST tab CIGAR ext; 8CB BLAST tab BTOP B - BLAST Query/Sbjct alignments;\
    \ BB - complete BLAST output; 9 - FASTA tabular; 9c - FASTA tabular encoded; 9C\
    \ FASTA tabular CIGAR encoded; 9B FASTA tabular BTOP encoded 10 - parseable key:value;\
    \ 11 - lav for LALIGN; A - aligned residue score F - 'F0,6,9c out_file' - alternate\
    \ output formats to files;"
  type: boolean
  inputBinding:
    prefix: -m
- id: filter_library_sequence
  doc: ':  filter on library sequence length'
  type: boolean
  inputBinding:
    prefix: -M
- id: dnarna_query
  doc: DNA/RNA query
  type: boolean
  inputBinding:
    prefix: -n
- id: max_library_length
  doc: ':  max library length before overlapping'
  type: boolean
  inputBinding:
    prefix: -N
- id: offset_coordinates_querysubject
  doc: ':  offset coordinates of query/subject'
  type: boolean
  inputBinding:
    prefix: -o
- id: write_results_file
  doc: ':  write results to file'
  type: boolean
  inputBinding:
    prefix: -O
- id: protein_query
  doc: protein query
  type: boolean
  inputBinding:
    prefix: -p
- id: _pssm_file
  doc: ':  PSSM file'
  type: boolean
  inputBinding:
    prefix: -P
- id: var_25
  doc: quiet [default] -- do not prompt
  type: boolean
  inputBinding:
    prefix: -q
- id: var_26
  doc: quiet [default] -- do not prompt
  type: boolean
  inputBinding:
    prefix: -Q
- id: _matchmismatch_dnarna
  doc: ':  [+0/0]  +match/-mismatch for DNA/RNA'
  type: boolean
  inputBinding:
    prefix: -r
- id: raw_score_file
  doc: ':  raw score file'
  type: boolean
  inputBinding:
    prefix: -R
- id: scoring_matrix_protein
  doc: ':  Scoring matrix: (protein) BL50, BP62 (sets -f -11 -g -1); P250, OPT5, VT200,
    VT160, P120, VT120, BL80, VT80, MD40, VT40, MD20, VT20, MD10, VT10; scoring matrix
    file name; -s ?BL50 adjusts matrix for short queries;'
  type: boolean
  inputBinding:
    prefix: -s
- id: filter_lowercase_seg
  doc: filter lowercase (seg) residues
  type: boolean
  inputBinding:
    prefix: -S
- id: _max_threadsworkers
  doc: ':  max threads/workers'
  type: boolean
  inputBinding:
    prefix: -T
- id: rna_query
  doc: RNA query
  type: boolean
  inputBinding:
    prefix: -U
- id: shuffle_window_size
  doc: ':  shuffle window size'
  type: boolean
  inputBinding:
    prefix: -v
- id: annotation_characters_querylibrary
  doc: ':  annotation characters in query/library for aligments'
  type: boolean
  inputBinding:
    prefix: -V
- id: width_alignment_display
  doc: ':  width of alignment display'
  type: boolean
  inputBinding:
    prefix: -w
- id: alignment_context_length
  doc: ':  alignment context length (surrounding unaligned sequence)'
  type: boolean
  inputBinding:
    prefix: -W
- id: _extended_options
  doc: ':  Extended options'
  type: boolean
  inputBinding:
    prefix: -X
- id: statistics_estimation_method
  doc: ':  Statistics estimation method: 1 - regression; -1 - no stats.; 0 - no scaling;
    2 - Maximum Likelihood Est.; 3 - Altschul/Gish; 4 - iter. regress.; 5 - regress
    w/variance; 6 - MLE with comp. adj.; 11 - 16 - estimates from shuffled library
    sequences; 21 - 26 - E2()-stats from shuffled high-scoring sequences;'
  type: boolean
  inputBinding:
    prefix: -z
- id: database_size_evalue
  doc: ':  [library entries] database size for E()-value'
  type: boolean
  inputBinding:
    prefix: -Z
outputs: []
cwlVersion: v1.1
baseCommand:
- ssearch36
