class: CommandLineTool
id: haploclique.cwl
inputs:
- id: in_edge_quasi_cut_off_cliques
  doc: "edge calculator option\n[default: 0.99]"
  type: long
  inputBinding:
    prefix: --edge_quasi_cutoff_cliques
- id: in_edge_quasi_cut_off_mixed
  doc: "edge calculator option\n[default: 0.97]"
  type: long
  inputBinding:
    prefix: --edge_quasi_cutoff_mixed
- id: in_edge_quasi_cut_off_single
  doc: "edge calculator option\n[default: 0.95]"
  type: long
  inputBinding:
    prefix: --edge_quasi_cutoff_single
- id: in_random_overlap_quality
  doc: "edge calculator option\n[default: 0.9]"
  type: long
  inputBinding:
    prefix: --random_overlap_quality
- id: in_frame_shift_merge
  doc: "Reads will be clustered with\nsingle nucleotide insertions or\ndeletions.\
    \ Use for PacBio data."
  type: boolean
  inputBinding:
    prefix: --frame_shift_merge
- id: in_min_overlap_cliques
  doc: "edge calculator option\n[default: 0.9]"
  type: long
  inputBinding:
    prefix: --min_overlap_cliques
- id: in_min_overlap_single
  doc: "edge calculator option\n[default: 0.6]"
  type: long
  inputBinding:
    prefix: --min_overlap_single
- id: in_all_el_frequencies
  doc: "-I FILE --call_indels=FILE              variant calling is not supported\n\
    yet.\n-M FILE --mean_and_sd_filename=FILE     Required for option -I\n-p NUM --indel_edge_sig_level=NUM\
    \       [default: 0.2]\n-i NUM --iterations=NUM                 Number of iterations.\n\
    haploclique will stop if the\nsuperreads converge.\n[default: -1]\n-f NUM --filter=NUM\
    \                     Filter out reads with low\nfrequency at the end.\n[default:\
    \ 0.0]\n-n --no_singletons                          Filter out single read cliques\n\
    after first iteration.\n-s NUM --significance=NUM               Filter out reads\
    \ witch are below\n<num> standard deviations.\n[default: 3.0]\n-L FILE --log=FILE\
    \                       Write log to <file>.\n-d NUM --doc_haplotypes=NUM    \
    \          Used in simulation studies with known\nhaplotypes to document which\
    \ reads\ncontributed to which final cliques (3 or 5).\n-p0 --no_prob0        \
    \                    ignore the tail probabilites during edge\ncalculation in\
    \ <output>.\n-gff --gff                               Option to create GFF File\
    \ from output. <output> is used as prefix.\n-bam --bam                       \
    \        Option to create BAM File from output. <output> is used as prefix.\n\
    -mc NUM --max_cliques=NUM                Set a threshold for the maximal number\
    \ of cliques which\nshould be considered in the next iteration.\n-lc NUM --limit_clique_size=NUM\
    \          Set a threshold to limit the size of cliques.\n-h --help          \
    \                      Display this help text\n-v --version                  \
    \           Display version\n"
  type: File
  inputBinding:
    prefix: --allel_frequencies
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
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- haploclique
