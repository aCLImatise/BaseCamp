class: CommandLineTool
id: wtlay.cwl
inputs:
- id: i
  doc: Long reads sequences file(s), + *
  type: string
  inputBinding:
    prefix: -i
- id: b
  doc: 'Long reads retained region, often from wtobt, + Format: read_name\toffset\tlength\toriginal_len'
  type: string
  inputBinding:
    prefix: -b
- id: j
  doc: 'Overlap file(s), + * Format: reads1\t+/-\tlen1\tbeg1\tend1\treads2\t+/-\tlen2\tbeg2\tend2\tscore'
  type: string
  inputBinding:
    prefix: -j
- id: s
  doc: Minimum alignment matched bases, [500]
  type: long
  inputBinding:
    prefix: -s
- id: m
  doc: Minimum alignment identity, [0.6]
  type: double
  inputBinding:
    prefix: -m
- id: w
  doc: Maximum margin of alignment, [100]
  type: long
  inputBinding:
    prefix: -w
- id: o
  doc: Output file of layouts, *
  type: string
  inputBinding:
    prefix: -o
- id: f
  doc: Force overwrite output file
  type: boolean
  inputBinding:
    prefix: -f
- id: c
  doc: Minimum estimated coverage of edge to be trusted, [1] edge coverage is calculated
    by counting overlaps that can replace this edge
  type: long
  inputBinding:
    prefix: -c
- id: r
  doc: Use number of matches as alignment score
  type: boolean
  inputBinding:
    prefix: -R
- id: r
  doc: Best score cutoff, say best overlap MUST have alignment score >= <-r> * read's
    best score [0.95]
  type: double
  inputBinding:
    prefix: -r
- id: q
  doc: Minimum coverage for similar unitig detection, say the aligned length of unitig
    A by unitig B, divided by total length of unitig A, [0.4]
  type: double
  inputBinding:
    prefix: -q
- id: u
  doc: Min nodes of a layout to be output as independent unitig, [4]
  type: long
  inputBinding:
    prefix: -u
- id: b
  doc: Maximum step in tracing bubbles, [20]
  type: long
  inputBinding:
    prefix: -B
- id: s
  doc: Variance threshold of (alignment score / overlap) between ture and false overlaps,
    [0.50] Used in better_overlap_strgraph
  type: double
  inputBinding:
    prefix: -S
- id: q
  doc: 'Commands, [gCwgBgRURg] G: print_dot_strgraph g: print_simple_dot_strgraph
    w: mask_low_cov_edge_strgraph C: mask_contained_reads_strgraph B: best_overlap_strgraph
    t: bog_cut_tips_strgraph M: bog_merge_bubbles_strgraph U: recover_edges_inter_unitigs_strgraph
    R: repair_best_overlap_strgraph b: better_overlap_strgraph O: mask_self_circle_reads_strgraph
    T: reduce_transitive_strgraph L: longest_overlap_strgraph .: exit program'
  type: string
  inputBinding:
    prefix: -Q
outputs: []
cwlVersion: v1.1
baseCommand:
- wtlay
