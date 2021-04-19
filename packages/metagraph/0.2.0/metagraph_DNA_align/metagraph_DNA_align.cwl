class: CommandLineTool
id: metagraph_DNA_align.cwl
inputs:
- id: in_fwd_and_reverse
  doc: for each input sequence, align its reverse complement as well [off]
  type: boolean?
  inputBinding:
    prefix: --fwd-and-reverse
- id: in_header_comment_delim
  doc: '[STR] delimiter for joining fasta header with comment [off]'
  type: boolean?
  inputBinding:
    prefix: --header-comment-delim
- id: in_parallel
  doc: '[INT]             use multiple threads for computation [1]'
  type: boolean?
  inputBinding:
    prefix: --parallel
- id: in_map
  doc: "map k-mers to graph exactly instead of aligning.\nTurned on if --count-kmers\
    \ or --query-presence are set [off]"
  type: boolean?
  inputBinding:
    prefix: --map
- id: in_compacted
  doc: dump the GFA's 'P' lines in a compacted mode [off]
  type: boolean?
  inputBinding:
    prefix: --compacted
- id: in_km_er_length
  doc: "[INT]          length of mapped k-mers (at most graph's k) [k]"
  type: boolean?
  inputBinding:
    prefix: --kmer-length
- id: in_count_km_ers
  doc: for each sequence, report the number of k-mers discovered in graph [off]
  type: boolean?
  inputBinding:
    prefix: --count-kmers
- id: in_query_presence
  doc: test sequences for presence, report as 0 or 1 [off]
  type: boolean?
  inputBinding:
    prefix: --query-presence
- id: in_filter_present
  doc: report only present input sequences as FASTA [off]
  type: boolean?
  inputBinding:
    prefix: --filter-present
- id: in_batch_size
  doc: query batch size (number of base pairs) [100000000]
  type: boolean?
  inputBinding:
    prefix: --batch-size
- id: in_outfile_base
  doc: '[STR]                         basename of output file []'
  type: File?
  inputBinding:
    prefix: --outfile-base
- id: in_json
  doc: output alignment in JSON format [off]
  type: boolean?
  inputBinding:
    prefix: --json
- id: in_align_both_strands
  doc: return best alignments for either input sequence or its reverse complement
    [off]
  type: boolean?
  inputBinding:
    prefix: --align-both-strands
- id: in_align_alternative_alignments
  doc: the number of alternative paths to report per seed [1]
  type: boolean?
  inputBinding:
    prefix: --align-alternative-alignments
- id: in_align_min_path_score
  doc: '[INT]                 the minimum score that a reported path can have [0]'
  type: boolean?
  inputBinding:
    prefix: --align-min-path-score
- id: in_align_edit_distance
  doc: use unit costs for scoring matrix [off]
  type: boolean?
  inputBinding:
    prefix: --align-edit-distance
- id: in_align_max_nodes_per_seq_char
  doc: '[FLOAT]       maximum number of nodes to consider per sequence character [12.0]'
  type: boolean?
  inputBinding:
    prefix: --align-max-nodes-per-seq-char
- id: in_align_max_ram
  doc: '[FLOAT]                      maximum amount of RAM used per alignment in MB
    [200.0]'
  type: boolean?
  inputBinding:
    prefix: --align-max-ram
- id: in_align_match_score
  doc: '[INT]                    positive match score [2]'
  type: boolean?
  inputBinding:
    prefix: --align-match-score
- id: in_align_mm_transition_penalty
  doc: '[INT]          positive transition penalty (DNA only) [3]'
  type: boolean?
  inputBinding:
    prefix: --align-mm-transition-penalty
- id: in_align_mm_transversion_penalty
  doc: '[INT]        positive transversion penalty (DNA only) [3]'
  type: boolean?
  inputBinding:
    prefix: --align-mm-transversion-penalty
- id: in_align_gap_open_penalty
  doc: '[INT]               positive gap opening penalty [5]'
  type: boolean?
  inputBinding:
    prefix: --align-gap-open-penalty
- id: in_align_gap_extension_penalty
  doc: '[INT]          positive gap extension penalty [2]'
  type: boolean?
  inputBinding:
    prefix: --align-gap-extension-penalty
- id: in_align_min_cell_score
  doc: '[INT]                 the minimum value that a cell in the alignment table
    can hold [0]'
  type: boolean?
  inputBinding:
    prefix: --align-min-cell-score
- id: in_align_x_drop
  doc: '[INT]                          the maximum difference between the current
    and the best alignment [27]'
  type: boolean?
  inputBinding:
    prefix: --align-xdrop
- id: in_align_min_seed_length
  doc: '[INT]                the minimum length of a seed [graph k]'
  type: boolean?
  inputBinding:
    prefix: --align-min-seed-length
- id: in_align_max_seed_length
  doc: '[INT]                the maximum length of a seed [graph k]'
  type: boolean?
  inputBinding:
    prefix: --align-max-seed-length
- id: in_align_min_exact_match
  doc: '[FLOAT]              fraction of matching nucleotides required to align sequence
    [0.7]'
  type: boolean?
  inputBinding:
    prefix: --align-min-exact-match
- id: in_align_max_num_seeds_per_locus
  doc: '[INT]        the maximum number of allowed inexact seeds per locus [inf]'
  type: boolean?
  inputBinding:
    prefix: --align-max-num-seeds-per-locus
- id: in_verbose
  doc: switch on verbose output [off]
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_i
  doc: ''
  type: string?
  inputBinding:
    prefix: -i
- id: in_fast_q_one
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile_base
  doc: '[STR]                         basename of output file []'
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile_base)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/metagraph:0.2.0--h74b8f77_0
cwlVersion: v1.1
baseCommand:
- metagraph_DNA
- align
