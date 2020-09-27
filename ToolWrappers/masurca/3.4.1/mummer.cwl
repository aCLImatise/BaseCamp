class: CommandLineTool
id: mummer.cwl
inputs:
- id: in_mum
  doc: compute maximal matches that are unique in both sequences
  type: boolean
  inputBinding:
    prefix: -mum
- id: in_mum_reference
  doc: "compute maximal matches that are unique in the reference-\nsequence but not\
    \ necessarily in the query-sequence (default)"
  type: boolean
  inputBinding:
    prefix: -mumreference
- id: in_m_umc_and
  doc: same as -mumreference
  type: boolean
  inputBinding:
    prefix: -mumcand
- id: in_max_match
  doc: compute all maximal matches regardless of their uniqueness
  type: boolean
  inputBinding:
    prefix: -maxmatch
- id: in_set_minimum_length
  doc: "set the minimum length of a match\nif not set, the default value is 20"
  type: boolean
  inputBinding:
    prefix: -l
- id: in_compute_forward_reverse
  doc: compute forward and reverse complement matches
  type: boolean
  inputBinding:
    prefix: -b
- id: in_force_output_format
  doc: "force 4 column output format regardless of the number of\nreference sequence\
    \ inputs"
  type: boolean
  inputBinding:
    prefix: -F
- id: in_match_only_characters
  doc: match only the characters a, c, g, or t
  type: boolean
  inputBinding:
    prefix: -n
- id: in_print_length_query
  doc: print length of query sequence in header of matches
  type: boolean
  inputBinding:
    prefix: -L
- id: in_compute_only_matches
  doc: compute only reverse complement matches
  type: boolean
  inputBinding:
    prefix: -r
- id: in_print_first_characters
  doc: print first 53 characters of the matching substring
  type: boolean
  inputBinding:
    prefix: -s
- id: in_report_query_position
  doc: Report the query position of a reverse complement match relative to the forward
    strand of the query sequence
  type: boolean
  inputBinding:
    prefix: -c
- id: in_sampled_suffix_positions
  doc: sampled suffix positions (one by default)
  type: boolean
  inputBinding:
    prefix: -k
- id: in_threads
  doc: number of threads to use for -maxmatch, only valid k > 1
  type: boolean
  inputBinding:
    prefix: -threads
- id: in_q_threads
  doc: number of threads to use for queries
  type: boolean
  inputBinding:
    prefix: -qthreads
- id: in_suf_link
  doc: use suffix links (1=yes or 0=no) in the index and during search [auto]
  type: boolean
  inputBinding:
    prefix: -suflink
- id: in_child
  doc: use child table (1=yes or 0=no) in the index and during search [auto]
  type: boolean
  inputBinding:
    prefix: -child
- id: in_skip
  doc: "sparsify the MEM-finding algorithm even more, performing jumps of skip*k [auto\
    \ (l-10)/k]\nthis is a performance parameter that trade-offs SA traversal with\
    \ checking of right-maximal MEMs"
  type: boolean
  inputBinding:
    prefix: -skip
- id: in_km_er
  doc: use kmer table containing sa-intervals (speeds up searching first k characters)
    in the index and during search [int value, auto]
  type: boolean
  inputBinding:
    prefix: -kmer
- id: in_save
  doc: (string) save index to file to use again later (string)
  type: boolean
  inputBinding:
    prefix: -save
- id: in_load
  doc: (string) load index from file
  type: boolean
  inputBinding:
    prefix: -load
- id: in_query_file_one
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_query
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_file_three_two
  doc: ''
  type: long
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mummer
