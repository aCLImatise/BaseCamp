class: CommandLineTool
id: ../../../yass.cwl
inputs:
- id: display_alignment_positions
  doc: '0 : Display alignment positions (kept for compatibility) 1 : Display alignment
    positions + alignments + stats (default) 2 : Display blast-like tabular output
    3 : Display light tabular output (better for post-processing) 4 : Display BED
    file output 5 : Display PSL file output'
  type: long
  inputBinding:
    prefix: -d
- id: process_forward_query
  doc: '0 : process forward (query) strand 1 : process Reverse complement strand 2
    : process both forward and Reverse complement strands (default)'
  type: long
  inputBinding:
    prefix: -r
- id: output_file
  doc: Output file
  type: string
  inputBinding:
    prefix: -o
- id: mask_seed_algorithm
  doc: mask Lowercase regions (seed algorithm only)
  type: boolean
  inputBinding:
    prefix: -l
- id: sort_according_information
  doc: 'Sort according to 0 : alignment scores 1 : entropy 2 : mutual information
    (experimental) 3 : both entropy and score 4 : positions on the 1st file 5 : positions
    on the 2nd file 6 : alignment % id 7 : 1st file sequence % id 8 : 2nd file sequence
    % id 10-18 : (0-8) + sort by first fasta chunks first 20-28 : (0-8) + sort by
    second fasta chunks first 30-38 : (0-8) + sort by both first/second chunks first
    40-48 : (10-18) + sort chunk results with (0-8) criterion (first fasta file) 50-58
    : (20-28) + sort chunk results with (0-8) criterion (second fasta file) 60-68
    : (30-38) + sort chunk results with (0-8) criterion (first fasta file) 70-75 :
    (30-38) + sort chunk results with (0-8) criterion (second fasta file) 80-85 :
    (30-38) + sort chunk results with (0-8) criterion (both fasta files)'
  type: long
  inputBinding:
    prefix: -s
- id: display_current_version
  doc: display the current Version
  type: boolean
  inputBinding:
    prefix: -v
- id: select_scoring_default
  doc: 'select a scoring Matrix (default 3): [Match,Transversion,Transition],(Gopen,Gext)
    0 : [  1, -3, -2],( -8, -2)   1 : [  2, -3, -2],(-12, -4) 2 : [  3, -3, -2],(-16,
    -4)   3 : [  5, -4, -3],(-16, -4) 4 : [  5, -4, -2],(-16, -4)'
  type: long
  inputBinding:
    prefix: -M
- id: reset_matchmismatchtransistionother_penalties
  doc: '[,<int>[,<int>[,<int>]]] reset match/mismatch/transistion/other Costs (penalties)
    you can also give the 16 values of matrix (ACGT order)'
  type: long
  inputBinding:
    prefix: -C
- id: int_reset_gap
  doc: ',<int> reset Gap opening/extension penalties'
  type: long
  inputBinding:
    prefix: -G
- id: real_reset_lambda
  doc: ',<real> reset Lambda and K parameters of Gumbel law'
  type: string
  inputBinding:
    prefix: -L
- id: xdrop_threshold_score
  doc: Xdrop threshold score (default 25)
  type: long
  inputBinding:
    prefix: -X
- id: evalue_threshold_default
  doc: E-value threshold (default 10)
  type: long
  inputBinding:
    prefix: -E
- id: low_complexity_filter
  doc: 'low complexity filter : minimal allowed Entropy of trinucleotide distribution
    ranging between 0 (no filter) and 6 (default 2.80)'
  type: string
  inputBinding:
    prefix: -e
- id: limit_number_output
  doc: limit number of Output alignments (default 1000000)
  type: long
  inputBinding:
    prefix: -O
- id: select_sequence_first
  doc: Select sequence from the first multi-fasta file (default 0) * use 0 to select
    the full first multi-fasta file
  type: long
  inputBinding:
    prefix: -S
- id: forbid_aligning_regions
  doc: forbid aligning too close regions (e.g. Tandem repeats) valid for single sequence
    comparison only (default 16 bp)
  type: long
  inputBinding:
    prefix: -T
- id: seed_patterns_use
  doc: "seed Pattern(s) * use '#' for match * use '@' for match or transition * use\
    \ '-' or '_' for joker * use ',' for seed separator (max: 32 seeds) - example\
    \ with one seed : yass file.fas -p  \"#@#--##--#-##@#\" - example with two complementary\
    \ seeds : yass file.fas -p \"##-#-#@#-##@-##,##@#--@--##-#--###\" (default  \"\
    ###-#@-##@##,###--#-#--#-###\")"
  type: string
  inputBinding:
    prefix: -p
- id: seed_hit_criterion
  doc: 'seed hit Criterion : 1 or 2 seeds to consider a hit (default 2)'
  type: long
  inputBinding:
    prefix: -c
- id: trim_overrepresented_codes
  doc: Trim out over-represented seeds codes ranging between 0.0 (no trim) and +inf
    (default 0.001)
  type: string
  inputBinding:
    prefix: -t
- id: statistical_tolerance_default
  doc: statistical tolerance Alpha (%) (default 5%)
  type: long
  inputBinding:
    prefix: -a
- id: indel_rate_default
  doc: Indel rate (%)                  (default 8%)
  type: long
  inputBinding:
    prefix: -i
- id: mutation_rate_default
  doc: Mutation rate (%)               (default 25%)
  type: long
  inputBinding:
    prefix: -m
- id: int_window_minmax
  doc: ',<int> Window <min,max> range for post-processing and grouping alignments
    (default <64,65536>)'
  type: long
  inputBinding:
    prefix: -W
- id: window_size_coefficient
  doc: 'Window size coefficient for post-processing and grouping alignments (default
    16) NOTE : -w 0 disables post-processing'
  type: string
  inputBinding:
    prefix: -w
outputs: []
cwlVersion: v1.1
baseCommand:
- yass
