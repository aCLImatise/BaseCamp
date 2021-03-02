class: CommandLineTool
id: yass.cwl
inputs:
- id: in_display_alignment_positions
  doc: "0 : Display alignment positions (kept for compatibility)\n1 : Display alignment\
    \ positions + alignments + stats (default)\n2 : Display blast-like tabular output\n\
    3 : Display light tabular output (better for post-processing)\n4 : Display BED\
    \ file output\n5 : Display PSL file output"
  type: File?
  inputBinding:
    prefix: -d
- id: in_process_forward_query
  doc: "0 : process forward (query) strand\n1 : process Reverse complement strand\n\
    2 : process both forward and Reverse complement strands (default)"
  type: long?
  inputBinding:
    prefix: -r
- id: in_output_file
  doc: Output file
  type: File?
  inputBinding:
    prefix: -o
- id: in_mask_regions_seed
  doc: mask Lowercase regions (seed algorithm only)
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_sort_according_alignment
  doc: "Sort according to\n0 : alignment scores\n1 : entropy\n2 : mutual information\
    \ (experimental)\n3 : both entropy and score\n4 : positions on the 1st file\n\
    5 : positions on the 2nd file\n6 : alignment % id\n7 : 1st file sequence % id\n\
    8 : 2nd file sequence % id\n10-18 : (0-8) + sort by first fasta chunks first\n\
    20-28 : (0-8) + sort by second fasta chunks first\n30-38 : (0-8) + sort by both\
    \ first/second chunks first\n40-48 : (10-18) + sort chunk results with (0-8) criterion\
    \ (first fasta file)\n50-58 : (20-28) + sort chunk results with (0-8) criterion\
    \ (second fasta file)\n60-68 : (30-38) + sort chunk results with (0-8) criterion\
    \ (first fasta file)\n70-75 : (30-38) + sort chunk results with (0-8) criterion\
    \ (second fasta file)\n80-85 : (30-38) + sort chunk results with (0-8) criterion\
    \ (both fasta files)"
  type: long?
  inputBinding:
    prefix: -s
- id: in_display_current_version
  doc: display the current Version
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_select_scoring_default
  doc: "select a scoring Matrix (default 3):\n[Match,Transversion,Transition],(Gopen,Gext)\n\
    0 : [  1, -3, -2],( -8, -2)   1 : [  2, -3, -2],(-12, -4)\n2 : [  3, -3, -2],(-16,\
    \ -4)   3 : [  5, -4, -3],(-16, -4)\n4 : [  5, -4, -2],(-16, -4)"
  type: long?
  inputBinding:
    prefix: -M
- id: in_reset_matchmismatchtransistionother_costs
  doc: "[,<int>[,<int>[,<int>]]]\nreset match/mismatch/transistion/other Costs (penalties)\n\
    you can also give the 16 values of matrix (ACGT order)"
  type: long?
  inputBinding:
    prefix: -C
- id: in_int_reset_gap
  doc: ',<int> reset Gap opening/extension penalties'
  type: long?
  inputBinding:
    prefix: -G
- id: in_real_reset_lambda
  doc: ',<real> reset Lambda and K parameters of Gumbel law'
  type: string?
  inputBinding:
    prefix: -L
- id: in_xdrop_threshold_score
  doc: Xdrop threshold score (default 25)
  type: long?
  inputBinding:
    prefix: -X
- id: in_evalue_threshold_default
  doc: E-value threshold (default 10)
  type: long?
  inputBinding:
    prefix: -E
- id: in_low_complexity_filter
  doc: "low complexity filter :\nminimal allowed Entropy of trinucleotide distribution\n\
    ranging between 0 (no filter) and 6 (default 2.80)"
  type: double?
  inputBinding:
    prefix: -e
- id: in_limit_number_output
  doc: limit number of Output alignments (default 1000000)
  type: long?
  inputBinding:
    prefix: -O
- id: in_select_sequence_first
  doc: "Select sequence from the first multi-fasta file (default 0)\n* use 0 to select\
    \ the full first multi-fasta file"
  type: long?
  inputBinding:
    prefix: -S
- id: in_forbid_aligning_regions
  doc: "forbid aligning too close regions (e.g. Tandem repeats)\nvalid for single\
    \ sequence comparison only (default 16 bp)"
  type: long?
  inputBinding:
    prefix: -T
- id: in_seed_patterns_use
  doc: "seed Pattern(s)\n* use '#' for match\n* use '@' for match or transition\n\
    * use '-' or '_' for joker\n* use ',' for seed separator (max: 32 seeds)\n- example\
    \ with one seed :\nyass file.fas -p  \"#@#--##--#-##@#\"\n- example with two complementary\
    \ seeds :\nyass file.fas -p \"##-#-#@#-##@-##,##@#--@--##-#--###\"\n(default \
    \ \"###-#@-##@##,###--#-#--#-###\")"
  type: long?
  inputBinding:
    prefix: -p
- id: in_seed_hit_consider
  doc: 'seed hit Criterion : 1 or 2 seeds to consider a hit (default 2)'
  type: long?
  inputBinding:
    prefix: -c
- id: in_trim_overrepresented_seeds
  doc: "Trim out over-represented seeds codes\nranging between 0.0 (no trim) and +inf\
    \ (default 0.001)"
  type: double?
  inputBinding:
    prefix: -t
- id: in_statistical_tolerance_alpha
  doc: statistical tolerance Alpha (%) (default 5%)
  type: long?
  inputBinding:
    prefix: -a
- id: in_indel_rate_default
  doc: Indel rate (%)                  (default 8%)
  type: long?
  inputBinding:
    prefix: -i
- id: in_mutation_rate_default
  doc: Mutation rate (%)               (default 25%)
  type: long?
  inputBinding:
    prefix: -m
- id: in_int_window_minmax
  doc: ",<int> Window <min,max> range for post-processing and grouping\nalignments\
    \ (default <64,65536>)"
  type: long?
  inputBinding:
    prefix: -W
- id: in_window_size_coefficient
  doc: "Window size coefficient for post-processing and grouping\nalignments (default\
    \ 16)\nNOTE : -w 0 disables post-processing\n"
  type: long?
  inputBinding:
    prefix: -w
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_display_alignment_positions
  doc: "0 : Display alignment positions (kept for compatibility)\n1 : Display alignment\
    \ positions + alignments + stats (default)\n2 : Display blast-like tabular output\n\
    3 : Display light tabular output (better for post-processing)\n4 : Display BED\
    \ file output\n5 : Display PSL file output"
  type: File?
  outputBinding:
    glob: $(inputs.in_display_alignment_positions)
- id: out_output_file
  doc: Output file
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/yass:1.14--h516909a_2
cwlVersion: v1.1
baseCommand:
- yass
