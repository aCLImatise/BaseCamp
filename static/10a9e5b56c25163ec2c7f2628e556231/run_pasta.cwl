class: CommandLineTool
id: run_pasta.py.cwl
inputs:
- id: aligned
  doc: If used, then the input file be will treated as aligned for the purposes of
    the first round of tree inference (the algorithm will start with tree searching
    on the input before re-aligning). This option only applies if a starting tree
    is NOT given.
  type: boolean
  inputBinding:
    prefix: --aligned
- id: auto
  doc: This option is mostly for backward compatibility. If used, then automatically
    identified default values for the max_subproblem_size, number of cpus, tools,
    breaking strategy, masking criteria, and stopping criteria will be used. This
    is just like using the default options. However, [WARNING] when auto option is
    used PASTA overrides the value of these options even if you have supplied them;
    we recommend that you run this option with --exportconfig to see the exact set
    of options that will be used in your analysis.
  type: boolean
  inputBinding:
    prefix: --auto
- id: datatype
  doc: 'Specify DNA, RNA, or Protein to indicate what type of data is specified. Note
    that this option is NOT automatically determined [default: dna]'
  type: string
  inputBinding:
    prefix: --datatype
- id: export_config
  doc: Export the configuration to the specified file and exit. This is useful if
    you want to combine several configurations and command line settings into a single
    configuration file to be used in other analyses.
  type: string
  inputBinding:
    prefix: --exportconfig
- id: input
  doc: input sequence file
  type: string
  inputBinding:
    prefix: --input
- id: job
  doc: job name [pastajob]
  type: string
  inputBinding:
    prefix: --job
- id: keep_alignment_temps
  doc: Keep even the realignment temporary running files (this only has an effect
    if keeptemp is also selected).
  type: boolean
  inputBinding:
    prefix: --keepalignmenttemps
- id: keep_temp
  doc: 'Keep temporary running files? [default: disabled]'
  type: boolean
  inputBinding:
    prefix: --keeptemp
- id: missing
  doc: How to deal with missing data symbols. Specify either "Ambiguous" or "Absent"
    if the input data contains ?-symbols
  type: string
  inputBinding:
    prefix: --missing
- id: multilocus
  doc: Analyze multi-locus data? NOT SUPPORTED IN CURRENT PASTA version.
  type: boolean
  inputBinding:
    prefix: --multilocus
- id: ra_xml_search_after
  doc: 'If used, the completion of the PASTA algorithm will be followed by a tree
    search using RAxML on the masked alignment. This can be useful if a very fast
    and approximate tree estimator is used during the PASTA algorithm. [default: disabled]'
  type: boolean
  inputBinding:
    prefix: --raxml-search-after
- id: temporaries
  doc: directory that will be the parent for this job's temporary file [default in
    PASTA home]
  type: string
  inputBinding:
    prefix: --temporaries
- id: times_file
  doc: optional file that will store the times of events during the PASTA run. If
    the file exists, new lines will be
  type: string
  inputBinding:
    prefix: --timesfile
- id: tree_file
  doc: starting tree file
  type: string
  inputBinding:
    prefix: --treefile
- id: two_phase
  doc: If used, then the program will not perform the PASTA algorithm. Instead it
    will simply call the sequence aligner to align the entire dataset then will call
    the tree estimator to obtain the tree.
  type: boolean
  inputBinding:
    prefix: --two-phase
- id: untrusted
  doc: If used, then the data in the input file will be parsed using a more careful
    procedure. This will generate more helpful error messages, but will use more memory
    and be much slower for large inputs. If this option is omitted, the error messages
    resulting from invalid input data will be more cryptic.
  type: boolean
  inputBinding:
    prefix: --untrusted
- id: no_blind_mode_is_final
  doc: When the blind mode is final, then PASTA will never leave blind mode once it
    is has entered blind mode.
  type: boolean
  inputBinding:
    prefix: --no-blind-mode-is-final
- id: move_to_blind_on_worse_score
  doc: If True then PASTA will move to the blind mode as soon it encounters a tree/alignment
    pair with a worse score. This is essentially the same as running in blind mode
    from the beginning, but it does allow one to terminate a run at an interval from
    the first time the algorithm fails to improve the score.
  type: boolean
  inputBinding:
    prefix: --move-to-blind-on-worse-score
- id: output_directory
  doc: directory for output files (defaults to input file directory)
  type: string
  inputBinding:
    prefix: --output-directory
- id: no_return_final_tree_and_alignment
  doc: Return the best likelihood tree and alignment pair instead of those from the
    last iteration; this is discouraged with masking option enabled.
  type: boolean
  inputBinding:
    prefix: --no-return-final-tree-and-alignment
- id: max_mem_mb
  doc: =#      The maximum memory available to OPAL (for the Java heap size when running
    Java tools).
  type: boolean
  inputBinding:
    prefix: --max-mem-mb
- id: num_cpus
  doc: '=#        The number of processing cores that you would like to assign to
    PASTA.  This number should not exceed the number of cores on your machine. [default:
    number of cores available on the machine]'
  type: boolean
  inputBinding:
    prefix: --num-cpus
- id: mask_gap_py_sites
  doc: '=# The minimum number of non-gap characters required in each column passed
    to the tree estimation step. Columns with fewer non-gap characters than the given
    threshold will be masked out before passing the alignment into the tree estimation
    module. These columns will be present in the final alignment. [default: 0.1% of
    alignment size]'
  type: boolean
  inputBinding:
    prefix: --mask-gappy-sites
- id: start_tree_search_from_current
  doc: If selected that the tree from the previous iteration will be given to the
    tree searching tool as a starting tree.
  type: boolean
  inputBinding:
    prefix: --start-tree-search-from-current
- id: aligner
  doc: 'The name of the alignment program to use for subproblems. [default: mafft]'
  type: string
  inputBinding:
    prefix: --aligner
- id: merger
  doc: 'The name of the alignment program to use to merge subproblems. [default: OPAL]'
  type: string
  inputBinding:
    prefix: --merger
- id: tree_estimator
  doc: 'The name of the tree inference program to use to find trees on fixed alignments.
    [default: fasttree]'
  type: string
  inputBinding:
    prefix: --tree-estimator
outputs: []
cwlVersion: v1.1
baseCommand:
- run_pasta.py
