class: CommandLineTool
id: metagraph_query.cwl
inputs:
- id: in_fwd_and_reverse
  doc: for each input sequence, query its reverse complement as well [off]
  type: boolean?
  inputBinding:
    prefix: --fwd-and-reverse
- id: in_align
  doc: align sequences instead of mapping k-mers [off]
  type: boolean?
  inputBinding:
    prefix: --align
- id: in_sparse
  doc: use row-major sparse matrix for row annotation [off]
  type: boolean?
  inputBinding:
    prefix: --sparse
- id: in_count_labels
  doc: count labels for k-mers from querying sequences [off]
  type: boolean?
  inputBinding:
    prefix: --count-labels
- id: in_print_signature
  doc: print vectors indicating present/absent k-mers [off]
  type: boolean?
  inputBinding:
    prefix: --print-signature
- id: in_num_top_labels
  doc: maximum number of frequent labels to print [off]
  type: boolean?
  inputBinding:
    prefix: --num-top-labels
- id: in_discovery_fraction
  doc: '[FLOAT] fraction of labeled k-mers required for annotation [0.7]'
  type: boolean?
  inputBinding:
    prefix: --discovery-fraction
- id: in_labels_delimiter
  doc: '[STR]     delimiter for annotation labels [":"]'
  type: boolean?
  inputBinding:
    prefix: --labels-delimiter
- id: in_suppress_unlabeled
  doc: do not show results for sequences missing in graph [off]
  type: boolean?
  inputBinding:
    prefix: --suppress-unlabeled
- id: in_parallel
  doc: '[INT]     use multiple threads for computation [1]'
  type: boolean?
  inputBinding:
    prefix: --parallel
- id: in_fast
  doc: query in batches [off]
  type: boolean?
  inputBinding:
    prefix: --fast
- id: in_batch_size
  doc: query batch size (number of base pairs) [100000000]
  type: boolean?
  inputBinding:
    prefix: --batch-size
- id: in_align_both_strands
  doc: return best alignments for either input sequence or its reverse complement
    [off]
  type: boolean?
  inputBinding:
    prefix: --align-both-strands
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
  doc: '[FLOAT]              maximum amount of RAM used per alignment in MB [200.0]'
  type: boolean?
  inputBinding:
    prefix: --align-max-ram
- id: in_batch_align
  doc: align against query graph [off]
  type: boolean?
  inputBinding:
    prefix: --batch-align
- id: in_max_hull_forks
  doc: '[INT]       maximum number of forks to take when expanding query graph [4]'
  type: boolean?
  inputBinding:
    prefix: --max-hull-forks
- id: in_max_hull_depth
  doc: '[INT]       maximum number of steps to traverse when expanding query graph
    [max_nodes_per_seq_char * max_seq_len]'
  type: boolean?
  inputBinding:
    prefix: --max-hull-depth
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
  doc: '[FLOAT] fraction of matching nucleotides required to align sequence [0.7]'
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
- id: in_a
  doc: ''
  type: string?
  inputBinding:
    prefix: -a
- id: in_i
  doc: ''
  type: string?
  inputBinding:
    prefix: -i
- id: in_file_one
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/metagraph:0.2.0--h74b8f77_0
cwlVersion: v1.1
baseCommand:
- metagraph
- query
