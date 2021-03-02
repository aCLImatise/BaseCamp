class: CommandLineTool
id: run_pasta.py.cwl
inputs:
- id: in_aligned
  doc: "If used, then the input file be will treated as\naligned for the purposes\
    \ of the first round of tree\ninference (the algorithm will start with tree\n\
    searching on the input before re-aligning). This\noption only applies if a starting\
    \ tree is NOT given."
  type: boolean?
  inputBinding:
    prefix: --aligned
- id: in_auto
  doc: "This option is mostly for backward compatibility. If\nused, then automatically\
    \ identified default values for\nthe max_subproblem_size, number of cpus, tools,\n\
    breaking strategy, masking criteria, and stopping\ncriteria will be used. This\
    \ is just like using the\ndefault options. However, [WARNING] when auto option\n\
    is used PASTA overrides the value of these options\neven if you have supplied\
    \ them; we recommend that you\nrun this option with --exportconfig to see the\
    \ exact\nset of options that will be used in your analysis."
  type: boolean?
  inputBinding:
    prefix: --auto
- id: in_datatype
  doc: "Specify DNA, RNA, or Protein to indicate what type of\ndata is specified.\
    \ Note that this option is NOT\nautomatically determined [default: dna]"
  type: string?
  inputBinding:
    prefix: --datatype
- id: in_export_config
  doc: "Export the configuration to the specified file and\nexit. This is useful if\
    \ you want to combine several\nconfigurations and command line settings into a\
    \ single\nconfiguration file to be used in other analyses."
  type: File?
  inputBinding:
    prefix: --exportconfig
- id: in_input
  doc: input sequence file
  type: File?
  inputBinding:
    prefix: --input
- id: in_job
  doc: job name [pastajob]
  type: string?
  inputBinding:
    prefix: --job
- id: in_keep_alignment_temps
  doc: "Keep even the realignment temporary running files\n(this only has an effect\
    \ if keeptemp is also\nselected)."
  type: boolean?
  inputBinding:
    prefix: --keepalignmenttemps
- id: in_keep_temp
  doc: 'Keep temporary running files? [default: disabled]'
  type: boolean?
  inputBinding:
    prefix: --keeptemp
- id: in_missing
  doc: "How to deal with missing data symbols. Specify either\n\"Ambiguous\" or \"\
    Absent\" if the input data contains\n?-symbols"
  type: string?
  inputBinding:
    prefix: --missing
- id: in_multilocus
  doc: "Analyze multi-locus data? NOT SUPPORTED IN CURRENT\nPASTA version."
  type: boolean?
  inputBinding:
    prefix: --multilocus
- id: in_ra_xml_search_after
  doc: "If used, the completion of the PASTA algorithm will be\nfollowed by a tree\
    \ search using RAxML on the masked\nalignment. This can be useful if a very fast\
    \ and\napproximate tree estimator is used during the PASTA\nalgorithm. [default:\
    \ disabled]"
  type: boolean?
  inputBinding:
    prefix: --raxml-search-after
- id: in_temporaries
  doc: "directory that will be the parent for this job's\ntemporary file [default\
    \ in PASTA home]"
  type: File?
  inputBinding:
    prefix: --temporaries
- id: in_times_file
  doc: "optional file that will store the times of events\nduring the PASTA run. If\
    \ the file exists, new lines\nwill be"
  type: File?
  inputBinding:
    prefix: --timesfile
- id: in_tree_file
  doc: starting tree file
  type: File?
  inputBinding:
    prefix: --treefile
- id: in_two_phase
  doc: "If used, then the program will not perform the PASTA\nalgorithm. Instead it\
    \ will simply call the sequence\naligner to align the entire dataset then will\
    \ call the\ntree estimator to obtain the tree."
  type: boolean?
  inputBinding:
    prefix: --two-phase
- id: in_untrusted
  doc: "If used, then the data in the input file will be\nparsed using a more careful\
    \ procedure. This will\ngenerate more helpful error messages, but will use\nmore\
    \ memory and be much slower for large inputs. If\nthis option is omitted, the\
    \ error messages resulting\nfrom invalid input data will be more cryptic."
  type: boolean?
  inputBinding:
    prefix: --untrusted
- id: in_blind_after_iter_without_imp
  doc: "=#\nMaximum number of iterations without an improvement in\nlikelihood score\
    \ that PASTA will run before switching\nto blind mode. [default: disabled]"
  type: boolean?
  inputBinding:
    prefix: --blind-after-iter-without-imp
- id: in_blind_after_time_without_imp
  doc: "=#.#\nMaximum time (in seconds) that PASTA will run without\nan improvement\
    \ in likelihood score before switching to\nblind mode. [default: disabled]"
  type: boolean?
  inputBinding:
    prefix: --blind-after-time-without-imp
- id: in_blind_after_total_iter
  doc: "=#\nMaximum number of iterations that PASTA will run\nbefore switching to\
    \ blind mode. [default: 0]"
  type: boolean?
  inputBinding:
    prefix: --blind-after-total-iter
- id: in_blind_after_total_time
  doc: "=#.#\nMaximum time (in seconds) that PASTA will run before\nswitching to blind\
    \ mode. [default: disabled]"
  type: boolean?
  inputBinding:
    prefix: --blind-after-total-time
- id: in_no_blind_mode_is_final
  doc: "When the blind mode is final, then PASTA will never\nleave blind mode once\
    \ it is has entered blind mode."
  type: boolean?
  inputBinding:
    prefix: --no-blind-mode-is-final
- id: in_move_to_blind_on_worse_score
  doc: "If True then PASTA will move to the blind mode as soon\nit encounters a tree/alignment\
    \ pair with a worse\nscore. This is essentially the same as running in\nblind\
    \ mode from the beginning, but it does allow one\nto terminate a run at an interval\
    \ from the first time\nthe algorithm fails to improve the score."
  type: boolean?
  inputBinding:
    prefix: --move-to-blind-on-worse-score
- id: in_break_strategy
  doc: "The method for choosing an edge when bisecting the\ntree during decomposition\
    \ [default: centroid]"
  type: string?
  inputBinding:
    prefix: --break-strategy
- id: in_max_subproblem_frac
  doc: "=#.#\nThe maximum size (number of leaves) of subproblems\nspecified in terms\
    \ as a proportion of the total number\nof leaves.  When a subproblem contains\
    \ this number of\nleaves (or fewer), then it will not be decomposed\nfurther.\
    \ [default: automatically picked based on\nalignment size]"
  type: boolean?
  inputBinding:
    prefix: --max-subproblem-frac
- id: in_max_subproblem_size
  doc: "=#\nThe maximum size (number of leaves) of subproblems.\nWhen a subproblem\
    \ contains this number of leaves (or\nfewer), then it will not be decomposed further.\n\
    [default: automatically picked based on alignment\nsize]"
  type: boolean?
  inputBinding:
    prefix: --max-subproblem-size
- id: in_output_directory
  doc: "directory for output files (defaults to input file\ndirectory)"
  type: Directory?
  inputBinding:
    prefix: --output-directory
- id: in_no_return_final_tree_and_alignment
  doc: "Return the best likelihood tree and alignment pair\ninstead of those from\
    \ the last iteration; this is\ndiscouraged with masking option enabled."
  type: boolean?
  inputBinding:
    prefix: --no-return-final-tree-and-alignment
- id: in_max_mem_mb
  doc: "=#      The maximum memory available to OPAL (for the Java\nheap size when\
    \ running Java tools)."
  type: boolean?
  inputBinding:
    prefix: --max-mem-mb
- id: in_num_cpus
  doc: "=#        The number of processing cores that you would like to\nassign to\
    \ PASTA.  This number should not exceed the\nnumber of cores on your machine.\
    \ [default: number of\ncores available on the machine]"
  type: boolean?
  inputBinding:
    prefix: --num-cpus
- id: in_mask_gap_py_sites
  doc: "=#\nThe minimum number of non-gap characters required in\neach column passed\
    \ to the tree estimation step.\nColumns with fewer non-gap characters than the\
    \ given\nthreshold will be masked out before passing the\nalignment into the tree\
    \ estimation module. These\ncolumns will be present in the final alignment.\n\
    [default: 0.1% of alignment size]"
  type: boolean?
  inputBinding:
    prefix: --mask-gappy-sites
- id: in_start_tree_search_from_current
  doc: "If selected that the tree from the previous iteration\nwill be given to the\
    \ tree searching tool as a starting\ntree."
  type: boolean?
  inputBinding:
    prefix: --start-tree-search-from-current
- id: in_after_blind_iter_term_limit
  doc: "=#\nThe maximum number of iteration that the PASTA\nalgorithm will run after\
    \ PASTA has entered blind mode.\nIf the number is less than 1, then no iteration\
    \ limit\nwill be used. [default: disabled]"
  type: boolean?
  inputBinding:
    prefix: --after-blind-iter-term-limit
- id: in_after_blind_iter_without_imp_limit
  doc: "=#\nThe maximum number of iterations without an\nimprovement in score that\
    \ the PASTA algorithm will run\nafter entering BLIND mode.  If the number is less\
    \ than\n1, then no iteration limit will be used. [default:\ndisabled]"
  type: boolean?
  inputBinding:
    prefix: --after-blind-iter-without-imp-limit
- id: in_after_blind_time_term_limit
  doc: "=#.#\nMaximum time (in seconds) that PASTA will continue\nstarting new iterations\
    \ of realigning and tree\nsearching after PASTA has entered blind mode. If the\n\
    number is less than 0, then no time limit will be\nused. [default: disabled]"
  type: boolean?
  inputBinding:
    prefix: --after-blind-time-term-limit
- id: in_after_blind_time_without_imp_limit
  doc: "=#.#\nMaximum time (in seconds) since the last improvement\nin score that\
    \ PASTA will continue starting new\niterations of realigning and tree searching\
    \ after\nentering BLIND mode. If the number is less than 0,\nthen no time limit\
    \ will be used. [default: disabled]"
  type: boolean?
  inputBinding:
    prefix: --after-blind-time-without-imp-limit
- id: in_iter_limit
  doc: "=#      The maximum number of iteration that the PASTA\nalgorithm will run.\
    \  If the number is less than 1,\nthen no iteration limit will be used. [default:\
    \ 3]"
  type: boolean?
  inputBinding:
    prefix: --iter-limit
- id: in_iter_without_imp_limit
  doc: "=#\nThe maximum number of iterations without an\nimprovement in score that\
    \ the PASTA algorithm will\nrun.  If the number is less than 1, then no iteration\n\
    limit will be used. [default: disabled]"
  type: boolean?
  inputBinding:
    prefix: --iter-without-imp-limit
- id: in_time_limit
  doc: "=#.#    Maximum time (in seconds) that PASTA will continue\nstarting new iterations\
    \ of realigning and tree\nsearching. If the number is less than 0, then no time\n\
    limit will be used. [default: disabled]"
  type: boolean?
  inputBinding:
    prefix: --time-limit
- id: in_time_without_imp_limit
  doc: "=#.#\nMaximum time (in seconds) since the last improvement\nin score that\
    \ PASTA will continue starting new\niterations of realigning and tree searching.\
    \ If the\nnumber is less than 0, then no time limit will be\nused. [default: disabled]"
  type: boolean?
  inputBinding:
    prefix: --time-without-imp-limit
- id: in_aligner
  doc: "The name of the alignment program to use for\nsubproblems. [default: mafft]"
  type: string?
  inputBinding:
    prefix: --aligner
- id: in_merger
  doc: "The name of the alignment program to use to merge\nsubproblems. [default:\
    \ OPAL]"
  type: string?
  inputBinding:
    prefix: --merger
- id: in_tree_estimator
  doc: "The name of the tree inference program to use to find\ntrees on fixed alignments.\
    \ [default: fasttree]\n"
  type: string?
  inputBinding:
    prefix: --tree-estimator
- id: in_pasta
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_performs
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_iterative
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_realignment
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_and
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_tree
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_inference
  doc: ''
  type: string
  inputBinding:
    position: 6
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: "directory for output files (defaults to input file\ndirectory)"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
hints: []
cwlVersion: v1.1
baseCommand:
- run_pasta.py
