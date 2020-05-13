class: CommandLineTool
id: kissplice.cwl
inputs:
- id: r
  doc: input fasta/q read files or compressed (.gz) fasta/q files (mutiple, such as
    "-r file1 -r file2...")
  type: string
  inputBinding:
    prefix: -r
- id: k
  doc: k-mer size (default=41)
  type: string
  inputBinding:
    prefix: -k
- id: b
  doc: maximum number of branching nodes (default 5)
  type: string
  inputBinding:
    prefix: -b
- id: l
  doc: 'maximal length of the shorter path (default: 2k+1)'
  type: string
  inputBinding:
    prefix: -l
- id: m
  doc: minimum length of the shorter path (default 2k-8)
  type: string
  inputBinding:
    prefix: -m
- id: m
  doc: maximum length of the longest path (default 1000000), skipped exons longer
    than UL_MAX are not reported
  type: string
  inputBinding:
    prefix: -M
- id: g
  doc: path and prefix to pre-built de Bruijn graph (suffixed by .edges/.nodes) if
    jointly used with -r, graph used to find bubbles and reads used for quantification
  type: string
  inputBinding:
    prefix: -g
- id: o
  doc: path to store the results and the summary log file (default = ./results)
  type: string
  inputBinding:
    prefix: -o
- id: d
  doc: specific directory (absolute path) where to build temporary files (default
    temporary directory otherwise)
  type: File
  inputBinding:
    prefix: -d
- id: t
  doc: number of cores (must be <= number of physical cores)
  type: string
  inputBinding:
    prefix: -t
- id: s
  doc: '0, 1 or 2. Changes which types of SNPs will be output. If 0 (default), will
    not output SNPs. If 1, will output Type0a-SNPs. If 2, will output Type0a and Type0b
    SNPs (warning: this option may increase a lot the running time. You might also
    want to try the experimental algorithm here)'
  type: string
  inputBinding:
    prefix: -s
- id: v
  doc: Verbose mode
  type: boolean
  inputBinding:
    prefix: -v
- id: u
  doc: keep the nodes/edges file for unfinished bccs
  type: boolean
  inputBinding:
    prefix: -u
- id: c
  doc: an integer, k-mers present strictly less than this number of times in the dataset
    will be discarded (default 2)
  type: long
  inputBinding:
    prefix: -c
- id: c
  doc: a percentage from [0,1), edges with relative coverage below this number are
    removed (default 0.05)
  type: long
  inputBinding:
    prefix: -C
- id: z
  doc: estimated genome/transcriptome size (default = 1G)
  type: string
  inputBinding:
    prefix: -z
- id: e
  doc: edit distance threshold, if the two sequences (paths) of a bubble have edit
    distance smaller than this threshold, the bubble is classified as an inexact repeat
    (default 3)
  type: long
  inputBinding:
    prefix: -e
- id: y
  doc: maximal number of bubbles enumeration in each bcc. If exceeded, no bubble is
    output for the bcc (default 100M)
  type: long
  inputBinding:
    prefix: -y
- id: mismatches
  doc: Maximal number of substitutions authorized between a read and a fragment (for
    quantification only), default 0. If you increase the mismatch and use --counts
    think of increasing min_overlap too.
  type: string
  inputBinding:
    prefix: --mismatches
- id: counts
  doc: '0,1 or 2 . Changes how the counts will be reported. If 0 (default): total
    counts, if 1: counts on junctions, if 2: all counts. see User guide for more information'
  type: string
  inputBinding:
    prefix: --counts
- id: min_overlap
  doc: Set how many nt must overlap a junction to be counted by --counts option. Default=3.
    see User guide for more information
  type: long
  inputBinding:
    prefix: --min_overlap
- id: timeout
  doc: max amount of time (in seconds) spent for enumerating bubbles in each bcc.
    If exceeded, no bubble is output for the bcc (default 100000)
  type: string
  inputBinding:
    prefix: --timeout
- id: output_context
  doc: Will output the maximum non-ambiguous context of a bubble
  type: boolean
  inputBinding:
    prefix: --output-context
- id: output_path
  doc: Will output the id of the nodes composing the two paths of the bubbles.
  type: boolean
  inputBinding:
    prefix: --output-path
- id: output_branch_count
  doc: Will output the number of branching nodes in each path.
  type: boolean
  inputBinding:
    prefix: --output-branch-count
- id: keep_bccs
  doc: Keep the node/edges files for all bccs.
  type: boolean
  inputBinding:
    prefix: --keep-bccs
- id: experimental
  doc: Uses a new experimental algorithm that searches for bubbles by listing all
    paths.
  type: boolean
  inputBinding:
    prefix: --experimental
- id: max_memory
  doc: "If you use the experimental algorithm, you must provide the maximum size of\
    \ the process's virtual memory (address space) in megabytes (default unlimited).\
    \ WARNING: this option does not work on Mac operating systems."
  type: long
  inputBinding:
    prefix: --max-memory
- id: keep_counts
  doc: Keep the .counts file after the sequencing-errors- removal step.
  type: boolean
  inputBinding:
    prefix: --keep-counts
outputs: []
cwlVersion: v1.1
baseCommand:
- kissplice
