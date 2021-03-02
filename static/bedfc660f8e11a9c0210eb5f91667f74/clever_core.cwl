class: CommandLineTool
id: clever_core.cwl
inputs:
- id: in_be_verbose_additionalstatistics
  doc: "[ --verbose ]                      Be verbose: output additional\nstatistics\
    \ for each variation."
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_arg_significance_level
  doc: "[ --edge_sig_level ] arg (=0.20000000000000001)\nSignificance level for edges\
    \ (the lower\nthe level, the more edges will be\npresent)."
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_arg_weight_beconsidered
  doc: "[ --min_aln_weight ] arg (=0.0016000000000000001)\nMinimum weight of alignment\
    \ pairs to be\nconsidered."
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_arg_maximum_insert
  doc: "[ --max_insert_length ] arg (=50000)\nMaximum insert length of alignments\
    \ to\nbe considered (0=unlimited)."
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_arg_maximum_allowed
  doc: "[ --max_coverage ] arg (=200)      Maximum allowed coverage. If exceeded,\n\
    violating reads are ignored. The number\nof such ignored reads is printed to\n\
    stderr (0=unlimited)."
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_arg_write_edges
  doc: '[ --write_edges ] arg              Write edges to file of given name.'
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_arg_false_discovery
  doc: "[ --fdr ] arg (=0.10000000000000001)\nFalse discovery rate (FDR)."
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_output_cliques_ones
  doc: "[ --all ]                          Output all cliques instead of only the\n\
    significant ones. Cliques are not\nsorted and last column (FDR) is not\ncomputed."
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_arg_output_reads
  doc: "[ --output_reads ] arg             Output reads belonging to at least one\n\
    significant clique to the given\nfilename (along with their assignment\nto significant\
    \ cliques."
  type: File?
  inputBinding:
    prefix: -r
- id: in_arg_output_coverage
  doc: "[ --output_coverage ] arg          Output the coverage with considered\ninsert\
    \ segments along the chromosome\n(one line per position) to the given\nfilename."
  type: File?
  inputBinding:
    prefix: -C
- id: in_use_separate_mean
  doc: "[ --readgroup_aware ]              Use a separate mean and standard\ndeviations\
    \ per read group. If given,\nargument <distribution-file> must refer\nto a file\
    \ containing this information."
  type: boolean?
  inputBinding:
    prefix: -A
- id: in_use_given_distributioninstead
  doc: "[ --arbitrary_dist ]               Use a given (arbitrary) distribution\n\
    instead of a normal distribution as\nnull model (EXPERIMENTAL)."
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_arg_load_cached
  doc: "[ --cached_dist ] arg              Load cached distributions as\nprecomputed\
    \ with tool\n\"precompute-distributions\". Does not\nchange results, but increases\
    \ speed.\nOnly applicable when using option -d."
  type: boolean?
  inputBinding:
    prefix: -D
- id: in_arg_bam_file
  doc: "[ --read_groups ] arg              BAM file from whose header read group\n\
    information is to be read, required if\noptions -A or -S are to be used."
  type: boolean?
  inputBinding:
    prefix: -R
- id: in_read_groups_come
  doc: "[ --multisample ]                  Read groups come from multiple samples\n\
    as indicated by SM fields in BAM\nheader. Evaluate cliques sample wise.\n"
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_distribution_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_output_reads
  doc: "[ --output_reads ] arg             Output reads belonging to at least one\n\
    significant clique to the given\nfilename (along with their assignment\nto significant\
    \ cliques."
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_output_reads)
- id: out_arg_output_coverage
  doc: "[ --output_coverage ] arg          Output the coverage with considered\ninsert\
    \ segments along the chromosome\n(one line per position) to the given\nfilename."
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_output_coverage)
hints: []
cwlVersion: v1.1
baseCommand:
- clever-core
