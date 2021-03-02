class: CommandLineTool
id: ltr_finder.cwl
inputs:
- id: in_gap_open_penalty
  doc: gap open penalty, default is 3
  type: long?
  inputBinding:
    prefix: -o
- id: in_gap_extension_penalty
  doc: gap extension penalty, default is 1
  type: long?
  inputBinding:
    prefix: -t
- id: in_gap_end_penalty
  doc: gap end penalty, default is 0
  type: long?
  inputBinding:
    prefix: -e
- id: in_match_score_default
  doc: match score, default is 2
  type: long?
  inputBinding:
    prefix: -m
- id: in_unmatch_score_default
  doc: unmatch score, default is -2
  type: long?
  inputBinding:
    prefix: -u
- id: in_max_distance_ltr
  doc: Max distance between 5'&3'LTR, default is 20000
  type: long?
  inputBinding:
    prefix: -D
- id: in_min_distance_ltr
  doc: Min distance between 5'&3'LTR, default is 1000
  type: long?
  inputBinding:
    prefix: -d
- id: in_max_length_ltr
  doc: Max length of 5'&3'LTR, default is 3500
  type: long?
  inputBinding:
    prefix: -L
- id: in_min_length_ltr
  doc: Min length of 5'&3'LTR, default is 100
  type: long?
  inputBinding:
    prefix: -l
- id: in_min_length_exact
  doc: min length of exact match pair, default is 20
  type: long?
  inputBinding:
    prefix: -p
- id: in_max_gap_joined
  doc: Max gap between joined pairs, default is 50
  type: long?
  inputBinding:
    prefix: -g
- id: in_max_gap_rt
  doc: Max gap between RT sub-domains, default is 2
  type: long?
  inputBinding:
    prefix: -G
- id: in_min_subdomains_found
  doc: Min sub-domains found in a RT domain, default is 4
  type: long?
  inputBinding:
    prefix: -T
- id: in_threshold_join_sequence
  doc: "Threshold for join new sequence in existed alignment\nnew alignment similarity\
    \ higher than this will be joined,\ndefault is 0.70"
  type: long?
  inputBinding:
    prefix: -j
- id: in_threshold_split_existed
  doc: "Threshold for split existed alignment to two part\nnew alignment similarity\
    \ lower than this will be split,\nset this threshold lower than -j, means turn\
    \ it off,\ndefault is 0.90"
  type: long?
  inputBinding:
    prefix: -J
- id: in_output_limit_default
  doc: output Score limit, default is 6.00, [0,10]
  type: long?
  inputBinding:
    prefix: -S
- id: in_min_ltr_similarity
  doc: min LTR similarity threshold, default is 0.00, [0,1]
  type: long?
  inputBinding:
    prefix: -M
- id: in_boundary_alignment_sharpness_threshold_higher
  doc: "Boundary alignment sharpness threshold, higher one.\none of the two edge's\
    \ sharpness must higher than\nthis threshold, default is 0.400, [0,1]"
  type: long?
  inputBinding:
    prefix: -B
- id: in_boundary_alignment_sharpness_threshold_oneboth
  doc: "Boundary alignment sharpness threshold, lower one.\nboth of the two edge's\
    \ sharpness must higher than\nthis threshold, default is 0.400, [0,1]"
  type: long?
  inputBinding:
    prefix: -b
- id: in_pbs_detecting_length
  doc: 'PBS detecting threshold, min tRNA match length: 14, [1,18]'
  type: long?
  inputBinding:
    prefix: -r
- id: in_output_format_full
  doc: 'output format: [0]-full, 1-summary, 2-table.'
  type: long?
  inputBinding:
    prefix: -w
- id: in_output_alignment_lengthonly
  doc: output alignment length(only affect -w0), default is 40
  type: long?
  inputBinding:
    prefix: -O
- id: in_seqids_only_calculate
  doc: "SeqIDs, will only calculate matched SeqID\nPOSIX style regular express is\
    \ supported."
  type: string?
  inputBinding:
    prefix: -P
- id: in_trna_sequence_format
  doc: tRNA sequence file(FASTA format)
  type: File?
  inputBinding:
    prefix: -s
- id: in_data_file_used
  doc: data file used to draw figure
  type: File?
  inputBinding:
    prefix: -f
- id: in_use_psscan_predict
  doc: Use ps_scan to predict protein domain
  type: string?
  inputBinding:
    prefix: -a
- id: in_output_html_format
  doc: Output in html format
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_ltr_have_edge
  doc: "LTR must have edge signal\n(at least two of PBS,PPT,TSR)"
  type: boolean?
  inputBinding:
    prefix: -E
- id: in_detect_repeat_regions
  doc: detect Centriole, delete highly repeat regions
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_filter_choose_resultdefault
  doc: "Filter to choose desired result,default is 0\n10000000000 5'-LTR must have\
    \ TG\n01000000000 5'-LTR must have CA\n00100000000 3'-LTR must have TG\n00010000000\
    \ 3'-LTR must have CA\n00001000000 TSR must be found\n00000100000 PBS must be\
    \ found\n00000010000 PPT must be found\n00000001000 RT domain muse be found\n\
    00000000100 Integrase core must be found\n00000000010 Integrase c-term must be\
    \ found\n00000000001 RNase H must be found"
  type: long?
  inputBinding:
    prefix: -F
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ltr_finder
