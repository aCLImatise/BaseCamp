class: CommandLineTool
id: haploclique.cwl
inputs:
- id: in_edge_quasi_cut_off_cliques
  doc: "edge calculator option\n[default: 0.99]"
  type: long?
  inputBinding:
    prefix: --edge_quasi_cutoff_cliques
- id: in_edge_quasi_cut_off_mixed
  doc: "edge calculator option\n[default: 0.97]"
  type: long?
  inputBinding:
    prefix: --edge_quasi_cutoff_mixed
- id: in_edge_quasi_cut_off_single
  doc: "edge calculator option\n[default: 0.95]"
  type: long?
  inputBinding:
    prefix: --edge_quasi_cutoff_single
- id: in_random_overlap_quality
  doc: "edge calculator option\n[default: 0.9]"
  type: long?
  inputBinding:
    prefix: --random_overlap_quality
- id: in_frame_shift_merge
  doc: "Reads will be clustered with\nsingle nucleotide insertions or\ndeletions.\
    \ Use for PacBio data."
  type: boolean?
  inputBinding:
    prefix: --frame_shift_merge
- id: in_min_overlap_cliques
  doc: "edge calculator option\n[default: 0.9]"
  type: long?
  inputBinding:
    prefix: --min_overlap_cliques
- id: in_min_overlap_single
  doc: "edge calculator option\n[default: 0.6]"
  type: long?
  inputBinding:
    prefix: --min_overlap_single
- id: in_all_el_frequencies
  doc: variant calling is not supported
  type: File?
  inputBinding:
    prefix: --allel_frequencies
- id: in_iterations
  doc: "Number of iterations.\nhaploclique will stop if the\nsuperreads converge.\n\
    [default: -1]"
  type: long?
  inputBinding:
    prefix: --iterations
- id: in_filter
  doc: "Filter out reads with low\nfrequency at the end.\n[default: 0.0]"
  type: long?
  inputBinding:
    prefix: --filter
- id: in_no_singletons
  doc: "Filter out single read cliques\nafter first iteration."
  type: boolean?
  inputBinding:
    prefix: --no_singletons
- id: in_significance
  doc: "Filter out reads witch are below\n<num> standard deviations.\n[default: 3.0]"
  type: long?
  inputBinding:
    prefix: --significance
- id: in_log
  doc: Write log to <file>.
  type: File?
  inputBinding:
    prefix: --log
- id: in_doc_haplotypes
  doc: "Used in simulation studies with known\nhaplotypes to document which reads\n\
    contributed to which final cliques (3 or 5)."
  type: long?
  inputBinding:
    prefix: --doc_haplotypes
- id: in_no_prob_zero
  doc: "ignore the tail probabilites during edge\ncalculation in <output>."
  type: boolean?
  inputBinding:
    prefix: --no_prob0
- id: in_gff
  doc: Option to create GFF File from output. <output> is used as prefix.
  type: File?
  inputBinding:
    prefix: --gff
- id: in_bam
  doc: Option to create BAM File from output. <output> is used as prefix.
  type: File?
  inputBinding:
    prefix: --bam
- id: in_max_cliques
  doc: "Set a threshold for the maximal number of cliques which\nshould be considered\
    \ in the next iteration."
  type: long?
  inputBinding:
    prefix: --max_cliques
- id: in_limit_clique_size
  doc: Set a threshold to limit the size of cliques.
  type: long?
  inputBinding:
    prefix: --limit_clique_size
- id: in_clever
  doc: use the original clever clique finder
  type: string
  inputBinding:
    position: 0
- id: in_bronk_er_bosch
  doc: use the Bron-Kerbosch based clique finder
  type: string
  inputBinding:
    position: 1
- id: in_yet_dot
  doc: -M FILE --mean_and_sd_filename=FILE     Required for option -I
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_gff
  doc: Option to create GFF File from output. <output> is used as prefix.
  type: File?
  outputBinding:
    glob: $(inputs.in_gff)
- id: out_bam
  doc: Option to create BAM File from output. <output> is used as prefix.
  type: File?
  outputBinding:
    glob: $(inputs.in_bam)
hints: []
cwlVersion: v1.1
baseCommand:
- haploclique
