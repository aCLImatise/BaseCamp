class: CommandLineTool
id: tfasty36.cwl
inputs:
- id: in_compare_forward_strand
  doc: compare forward strand only
  type: boolean?
  inputBinding:
    prefix: '-3'
- id: in_high_scores_reported
  doc: ":  high scores reported (limited by -E by default);\n=<int> forces <int> results;"
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_expected_fraction_joining
  doc: ':  expected fraction for band-optimization, joining'
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_length_querysbjct_name
  doc: ':  length of the query/sbjct name in alignments'
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_number_alignments_shown
  doc: ':  number of alignments shown (limited by -E by default)'
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_enable_debugging_output
  doc: enable debugging output
  type: boolean?
  inputBinding:
    prefix: -D
- id: in_expandscript_extend_hits
  doc: ':  expand_script to extend hits'
  type: boolean?
  inputBinding:
    prefix: -e
- id: in__evalueerepeat_threshold
  doc: ':  E()-value,E()-repeat threshold'
  type: boolean?
  inputBinding:
    prefix: -E
- id: in__gapopen_penalty
  doc: ':  gap-open penalty'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_min_evalue_displayed
  doc: ':  min E()-value displayed'
  type: boolean?
  inputBinding:
    prefix: -F
- id: in__gapextension_penalty
  doc: ':  gap-extension penalty'
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_show_histogram
  doc: show histogram
  type: boolean?
  inputBinding:
    prefix: -H
- id: in_search_with_reversecomplement
  doc: search with reverse-complement
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_interactive_mode
  doc: interactive mode
  type: boolean?
  inputBinding:
    prefix: -I
- id: in_frameshift_codon_substitution
  doc: ':  frame-shift, codon substitution penalty'
  type: boolean?
  inputBinding:
    prefix: -j
- id: in__number_shuffles
  doc: ':  number of shuffles'
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_fastlibs_abbreviation_file
  doc: ':  FASTLIBS abbreviation file'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_long_library_descriptions
  doc: long library descriptions
  type: boolean?
  inputBinding:
    prefix: -L
- id: in_outputalignment_format_entries
  doc: ":  Output/alignment format;\n0 - standard \":. \" alignment; 1 - \" xX\";\
    \ 2 - \".MS..\"; 3 - separate >fasta entries;\n4 - \"---\" alignment map; 5 -\
    \ 0+4; 6 - <html>;\n8 - BLAST tabular; 8C commented BLAST tabular; 8CC BLAST tab\
    \ CIGAR, 8CD BLAST tab CIGAR ext; 8CB BLAST tab BTOP\nB - BLAST Query/Sbjct alignments;\
    \ BB - complete BLAST output;\n9 - FASTA tabular; 9c - FASTA tabular encoded;\
    \ 9C FASTA tabular CIGAR encoded; 9B FASTA tabular BTOP encoded\n10 - parseable\
    \ key:value; 11 - lav for LALIGN;\nA - aligned residue score\nF - 'F0,6,9c out_file'\
    \ - alternate output formats to files;"
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_filter_library_sequence
  doc: ':  filter on library sequence length'
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_dnarna_query
  doc: DNA/RNA query
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_max_library_length
  doc: ':  max library length before overlapping'
  type: boolean?
  inputBinding:
    prefix: -N
- id: in_offset_coordinates_querysubject
  doc: ':  offset coordinates of query/subject'
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_write_results_file
  doc: ':  write results to file'
  type: boolean?
  inputBinding:
    prefix: -O
- id: in_protein_query
  doc: protein query
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_var_25
  doc: quiet [default] -- do not prompt
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_var_26
  doc: quiet [default] -- do not prompt
  type: boolean?
  inputBinding:
    prefix: -Q
- id: in__matchmismatch_dnarna
  doc: ':  [+0/0]  +match/-mismatch for DNA/RNA'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_raw_score_file
  doc: ':  raw score file'
  type: boolean?
  inputBinding:
    prefix: -R
- id: in_scoring_matrix_proteinbl
  doc: ":  Scoring matrix: (protein)\nBL50, BP62 (sets -f -11 -g -1); P250, OPT5,\
    \ VT200,\nVT160, P120, VT120, BL80, VT80, MD40, VT40, MD20, VT20, MD10, VT10;\n\
    scoring matrix file name; -s ?BL50 adjusts matrix for short queries;"
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_filter_lowercase_seg
  doc: filter lowercase (seg) residues
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_translation_genetic_code
  doc: ':  translation genetic code'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in__max_threadsworkers
  doc: ':  max threads/workers'
  type: boolean?
  inputBinding:
    prefix: -T
- id: in_rna_query
  doc: RNA query
  type: boolean?
  inputBinding:
    prefix: -U
- id: in_shuffle_window_size
  doc: ':  shuffle window size'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_annotation_characters_querylibrary
  doc: ':  annotation characters in query/library for aligments'
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_width_alignment_display
  doc: ':  width of alignment display'
  type: boolean?
  inputBinding:
    prefix: -w
- id: in__extended_options
  doc: ':  Extended options'
  type: boolean?
  inputBinding:
    prefix: -X
- id: in_statistics_estimation_method
  doc: ":  Statistics estimation method:\n1 - regression; -1 - no stats.; 0 - no scaling;\
    \ 2 - Maximum Likelihood Est.;\n3 - Altschul/Gish; 4 - iter. regress.; 5 - regress\
    \ w/variance;\n6 - MLE with comp. adj.;\n11 - 16 - estimates from shuffled library\
    \ sequences;\n21 - 26 - E2()-stats from shuffled high-scoring sequences;"
  type: boolean?
  inputBinding:
    prefix: -z
- id: in_database_size_evalue
  doc: ':  [library entries] database size for E()-value'
  type: boolean?
  inputBinding:
    prefix: -Z
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tfasty36
