class: CommandLineTool
id: RNAclust.pl.cwl
inputs:
- id: in_file_name_fasta
  doc: "<file name>                     FASTA file\n(required)"
  type: boolean
  inputBinding:
    prefix: --fasta
- id: in_dir_name_target
  doc: "<dir name>                      Target directory TGTDIR\n(required)"
  type: boolean
  inputBinding:
    prefix: --dir
- id: in_cpu
  doc: "<integer>                       Number of CPUs available on your machine.\
    \ Calls to locarna and\nRNAfold will be distributed equally on those CPUs. (default:\
    \ 1)\n(optional)"
  type: boolean
  inputBinding:
    prefix: --cpu
- id: in_dp_only
  doc: "Stop after dotplots are created. This option is useful if\ncalculation of\
    \ pairwise alignments will be distributed among\ndifferent machines.\n(optional)"
  type: boolean
  inputBinding:
    prefix: --dponly
- id: in_dp_dir
  doc: "<dir>                           Directory of dotplots. Use this option in\
    \ case you distribute the\ncalculation of pairwise alignments among different\
    \ machines using\n--start and --end options.\n(optional)"
  type: boolean
  inputBinding:
    prefix: --dpdir
- id: in_integer_start_pairwise
  doc: "<integer>                       Start with pairwise alignment i.\n(optional)"
  type: boolean
  inputBinding:
    prefix: --start
- id: in_end
  doc: "<integer>                       Stop with pairwise alignment j.\n(optional,\
    \ except --start is specified)"
  type: boolean
  inputBinding:
    prefix: --end
- id: in_tree
  doc: "Use this option after all pairwise alignments have been computed\non different\
    \ machines (options --start, --end) in order to generate\nthe hierarchical cluster-tree.\
    \ The pairwise alignments must be moved\nto one 'paligs' directory beforehand.\n\
    (optional)"
  type: boolean
  inputBinding:
    prefix: --tree
- id: in_malig
  doc: "Final cluster-tree is traversed and multiple alignment for each internal\n\
    node is computed progressively, default: no\n(optional)"
  type: boolean
  inputBinding:
    prefix: --malig
- id: in_rnasoup_immediatly_computing
  doc: "Starts RNAsoup immediatly after computing the pairwise alignments and\nthe\
    \ hierarchical tree. Results are written to the subfold 'rnasoup'.\nActivates\
    \ the --malig option.\n(optional)"
  type: boolean
  inputBinding:
    prefix: --rnasoup
- id: in_rna_soup_only
  doc: "Starts just RNAsoup on an existing RNAclust directory. Activates --malig\n\
    if there are no multiple alignments available. Writes RNAsoup output to a\nsubfolder\
    \ called 'rnasoup'.\n(optional)"
  type: Directory
  inputBinding:
    prefix: --rnasoup-only
- id: in_add_sequence
  doc: "Appends the sequences in the fasta file to an existing cluster tree. The\n\
    folder containing the existing tree is defined by --dir. A subfolder,\nnamed 'additionalSeqs',\
    \ containing the new tree and additional files will\nbe created there. This function\
    \ is still experimental, not all combinations\nof parameter will work.\n(optional)"
  type: boolean
  inputBinding:
    prefix: --addSequence
- id: in_loca_rna_opts
  doc: "<\"locarna options\">          Options passed directly to locarna (must be\
    \ given as one string)\n(optional)"
  type: boolean
  inputBinding:
    prefix: --locarna-opts
- id: in_mlo_carna_opts
  doc: "<\"mlocarna options\">        Options passed directly to mlocarna (must be\
    \ given as one string).\nmlocarna is used if multiple alignments for the internal\
    \ nodes will be\ncalculated (see --malig).\n(optional)"
  type: boolean
  inputBinding:
    prefix: --mlocarna-opts
- id: in_man
  doc: "full documentation\n(optional)"
  type: boolean
  inputBinding:
    prefix: --man
- id: in_local_bin
  doc: "Use the rnaclust, rnasoup and pgma binaries from a local installation\ninstead\
    \ of the global one.\n"
  type: File
  inputBinding:
    prefix: --localbin
- id: in_appends
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_final
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_starts
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_stop
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_brief
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_21
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_dir_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_directory_dot
  doc: ''
  type: Directory
  inputBinding:
    position: 0
- id: in_file_name
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_full
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_instead
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_integer
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_print
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_activates
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_var_30
  doc: ''
  type: Directory
  inputBinding:
    position: 1
- id: in_var_31
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_number
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_var_33
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_var_34
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_target
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_after
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_cluster_tree
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_documentation
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_help
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_var_40
  doc: ''
  type: Directory
  inputBinding:
    position: 2
- id: in_dot_plots
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 2
- id: in_immediatly
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_message
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_of
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_sequences
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_with
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_cpus
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_tgt_dir
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_all
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_are
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_dot_plots_dot
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_global
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_pairwise
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_traversed
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_use
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_alignment
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_available
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_computing
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_created_dot
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_var_61
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_alignments
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_var_63
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_idot
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_j_dot
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_multiple
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_on
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_var_68
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_have
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_in
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_is
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_your
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_been
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_case
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_for
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_machine_dot
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_useful
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_calls
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_an
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_computed
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_each
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_if
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_you
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_distribute
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: in_existing
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: in_internal
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: in_cluster
  doc: ''
  type: string
  inputBinding:
    position: 10
- id: in_loca_rna
  doc: ''
  type: string
  inputBinding:
    position: 10
- id: in_var_90
  doc: ''
  type: string
  inputBinding:
    position: 10
- id: in_and
  doc: ''
  type: string
  inputBinding:
    position: 11
- id: in_tree_dot
  doc: ''
  type: string
  inputBinding:
    position: 11
- id: in_var_93
  doc: ''
  type: string
  inputBinding:
    position: 12
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_rna_soup_only
  doc: "Starts just RNAsoup on an existing RNAclust directory. Activates --malig\n\
    if there are no multiple alignments available. Writes RNAsoup output to a\nsubfolder\
    \ called 'rnasoup'.\n(optional)"
  type: Directory
  outputBinding:
    glob: $(inputs.in_rna_soup_only)
cwlVersion: v1.1
baseCommand:
- RNAclust.pl
