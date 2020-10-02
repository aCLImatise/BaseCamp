class: CommandLineTool
id: wtlay.cwl
inputs:
- id: in_long_reads_files
  doc: Long reads sequences file(s), + *
  type: File
  inputBinding:
    prefix: -i
- id: in_long_reads_region
  doc: "Long reads retained region, often from wtobt, +\nFormat: read_name\\toffset\\\
    tlength\\toriginal_len"
  type: string
  inputBinding:
    prefix: -b
- id: in_overlap_files_readsttlentbegtendtreadsttlentbegtendtscore
  doc: "Overlap file(s), + *\nFormat: reads1\\t+/-\\tlen1\\tbeg1\\tend1\\treads2\\\
    t+/-\\tlen2\\tbeg2\\tend2\\tscore"
  type: File
  inputBinding:
    prefix: -j
- id: in_minimum_alignment_matched
  doc: Minimum alignment matched bases, [500]
  type: long
  inputBinding:
    prefix: -s
- id: in_minimum_alignment_identity
  doc: Minimum alignment identity, [0.6]
  type: double
  inputBinding:
    prefix: -m
- id: in_maximum_margin_alignment
  doc: Maximum margin of alignment, [100]
  type: long
  inputBinding:
    prefix: -w
- id: in_output_file_layouts
  doc: Output file of layouts, *
  type: File
  inputBinding:
    prefix: -o
- id: in_force_overwrite_output
  doc: Force overwrite output file
  type: File
  inputBinding:
    prefix: -f
- id: in_minimum_estimated_coverage
  doc: "Minimum estimated coverage of edge to be trusted, [1]\nedge coverage is calculated\
    \ by counting overlaps that can replace this edge"
  type: long
  inputBinding:
    prefix: -c
- id: in_use_number_matches
  doc: Use number of matches as alignment score
  type: boolean
  inputBinding:
    prefix: -R
- id: in_best_score_cutoff
  doc: Best score cutoff, say best overlap MUST have alignment score >= <-r> * read's
    best score [0.95]
  type: double
  inputBinding:
    prefix: -r
- id: in_minimum_coverage_similar
  doc: Minimum coverage for similar unitig detection, say the aligned length of unitig
    A by unitig B, divided by total length of unitig A, [0.4]
  type: double
  inputBinding:
    prefix: -q
- id: in_min_nodes_layout
  doc: Min nodes of a layout to be output as independent unitig, [4]
  type: long
  inputBinding:
    prefix: -u
- id: in_maximum_step_tracing
  doc: Maximum step in tracing bubbles, [20]
  type: long
  inputBinding:
    prefix: -B
- id: in_variance_threshold_overlap
  doc: "Variance threshold of (alignment score / overlap) between ture and false overlaps,\
    \ [0.50]\nUsed in better_overlap_strgraph"
  type: double
  inputBinding:
    prefix: -S
- id: in_commands_g_printdotstrgraphg
  doc: "Commands, [gCwgBgRURg]\nG: print_dot_strgraph\ng: print_simple_dot_strgraph\n\
    w: mask_low_cov_edge_strgraph\nC: mask_contained_reads_strgraph\nB: best_overlap_strgraph\n\
    t: bog_cut_tips_strgraph\nM: bog_merge_bubbles_strgraph\nU: recover_edges_inter_unitigs_strgraph\n\
    R: repair_best_overlap_strgraph\nb: better_overlap_strgraph\nO: mask_self_circle_reads_strgraph\n\
    T: reduce_transitive_strgraph\nL: longest_overlap_strgraph\n.: exit program"
  type: string
  inputBinding:
    prefix: -Q
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_layouts
  doc: Output file of layouts, *
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_layouts)
- id: out_force_overwrite_output
  doc: Force overwrite output file
  type: File
  outputBinding:
    glob: $(inputs.in_force_overwrite_output)
cwlVersion: v1.1
baseCommand:
- wtlay
