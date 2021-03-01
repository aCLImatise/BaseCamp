class: CommandLineTool
id: kissplice.cwl
inputs:
- id: in_input_fastaq_read
  doc: "input fasta/q read files or compressed (.gz) fasta/q\nfiles (mutiple, such\
    \ as \"-r file1 -r file2...\")"
  type: long?
  inputBinding:
    prefix: -r
- id: in_kmer_size_default
  doc: k-mer size (default=41)
  type: long?
  inputBinding:
    prefix: -k
- id: in_maximum_number_branching
  doc: maximum number of branching nodes (default 5)
  type: long?
  inputBinding:
    prefix: -b
- id: in_maximal_length_shorter
  doc: 'maximal length of the shorter path (default: 2k+1)'
  type: long?
  inputBinding:
    prefix: -l
- id: in_minimum_length_
  doc: minimum length of the shorter path (default 2k-8)
  type: long?
  inputBinding:
    prefix: -m
- id: in_maximum_length_exons
  doc: "maximum length of the longest path (default 1000000),\nskipped exons longer\
    \ than UL_MAX are not reported"
  type: long?
  inputBinding:
    prefix: -M
- id: in_path_prefix_prebuilt
  doc: "path and prefix to pre-built de Bruijn graph (suffixed\nby .edges/.nodes)\
    \ if jointly used with -r, graph used\nto find bubbles and reads used for quantification"
  type: File?
  inputBinding:
    prefix: -g
- id: in_path_store_results
  doc: "path to store the results and the summary log file\n(default = ./results)"
  type: File?
  inputBinding:
    prefix: -o
- id: in_specific_directory_absolute
  doc: "specific directory (absolute path) where to build\ntemporary files (default\
    \ temporary directory\notherwise)"
  type: File?
  inputBinding:
    prefix: -d
- id: in_number_cores_be
  doc: number of cores (must be <= number of physical cores)
  type: long?
  inputBinding:
    prefix: -t
- id: in_changes_types_be
  doc: "0, 1 or 2. Changes which types of SNPs will be output.\nIf 0 (default), will\
    \ not output SNPs. If 1, will\noutput Type0a-SNPs. If 2, will output Type0a and\n\
    Type0b SNPs (warning: this option may increase a lot\nthe running time. You might\
    \ also want to try the\nexperimental algorithm here)"
  type: long?
  inputBinding:
    prefix: -s
- id: in_verbose_mode
  doc: Verbose mode
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_keep_nodesedges_file
  doc: keep the nodes/edges file for unfinished bccs
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_integer_kmers_present
  doc: "an integer, k-mers present strictly less than this\nnumber of times in the\
    \ dataset will be discarded\n(default 2)"
  type: long?
  inputBinding:
    prefix: -c
- id: in_percentage_edges_relative
  doc: "a percentage from [0,1), edges with relative coverage\nbelow this number are\
    \ removed (default 0.05)"
  type: long?
  inputBinding:
    prefix: -C
- id: in_estimated_genometranscriptome_size
  doc: estimated genome/transcriptome size (default = 1G)
  type: long?
  inputBinding:
    prefix: -z
- id: in_edit_distance_threshold
  doc: "edit distance threshold, if the two sequences (paths)\nof a bubble have edit\
    \ distance smaller than this\nthreshold, the bubble is classified as an inexact\n\
    repeat (default 3)"
  type: long?
  inputBinding:
    prefix: -e
- id: in_maximal_number_bubbles
  doc: "maximal number of bubbles enumeration in each bcc. If\nexceeded, no bubble\
    \ is output for the bcc (default\n100M)"
  type: long?
  inputBinding:
    prefix: -y
- id: in_mismatches
  doc: "Maximal number of substitutions authorized between a\nread and a fragment\
    \ (for quantification only), default\n0. If you increase the mismatch and use\
    \ --counts think\nof increasing min_overlap too."
  type: long?
  inputBinding:
    prefix: --mismatches
- id: in_counts
  doc: "0,1 or 2 . Changes how the counts will be reported. If\n0 (default): total\
    \ counts, if 1: counts on junctions,\nif 2: all counts. see User guide for more\
    \ information"
  type: long?
  inputBinding:
    prefix: --counts
- id: in_min_overlap
  doc: "Set how many nt must overlap a junction to be counted\nby --counts option.\
    \ Default=3. see User guide for more\ninformation"
  type: long?
  inputBinding:
    prefix: --min_overlap
- id: in_timeout
  doc: "max amount of time (in seconds) spent for enumerating\nbubbles in each bcc.\
    \ If exceeded, no bubble is output\nfor the bcc (default 100000)"
  type: long?
  inputBinding:
    prefix: --timeout
- id: in_output_context
  doc: Will output the maximum non-ambiguous context of a
  type: boolean?
  inputBinding:
    prefix: --output-context
- id: in_output_branch_count
  doc: "Will output the number of branching nodes in each\npath."
  type: boolean?
  inputBinding:
    prefix: --output-branch-count
- id: in_keep_bccs
  doc: Keep the node/edges files for all bccs.
  type: boolean?
  inputBinding:
    prefix: --keep-bccs
- id: in_experimental
  doc: "Uses a new experimental algorithm that searches for\nbubbles by listing all\
    \ paths."
  type: boolean?
  inputBinding:
    prefix: --experimental
- id: in_max_memory
  doc: "If you use the experimental algorithm, you must\nprovide the maximum size\
    \ of the process's virtual\nmemory (address space) in megabytes (default\nunlimited).\
    \ WARNING: this option does not work on Mac\noperating systems."
  type: long?
  inputBinding:
    prefix: --max-memory
- id: in_keep_counts
  doc: "Keep the .counts file after the sequencing-errors-\nremoval step.\n"
  type: boolean?
  inputBinding:
    prefix: --keep-counts
- id: in_bubble
  doc: --output-path         Will output the id of the nodes composing the two
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- kissplice
