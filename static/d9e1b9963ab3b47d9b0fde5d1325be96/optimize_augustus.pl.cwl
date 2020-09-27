class: CommandLineTool
id: optimize_augustus.pl.cwl
inputs:
- id: in_meta_pars
  doc: "metapars.cfg contains the names and their ranges of the\nmeta parameters that\
    \ are subject to optimization.\n(default: generic_metapars.cfg)"
  type: string
  inputBinding:
    prefix: --metapars
- id: in_rounds
  doc: 'r is the number of rounds (default: 5)'
  type: long
  inputBinding:
    prefix: --rounds
- id: in_cpus
  doc: 'n is the number of CPUs to use (default: 1)'
  type: long
  inputBinding:
    prefix: --cpus
- id: in_only_train
  doc: "an optional genbank file that is used in addition to train.gb\nbut only for\
    \ etrain not for intermediate evaluation of accuracy.\nThese genes may e.g. be\
    \ incomplete."
  type: File
  inputBinding:
    prefix: --onlytrain
- id: in_k_fold
  doc: 'Make a k-fold cross validation (default: 8)'
  type: long
  inputBinding:
    prefix: --kfold
- id: in_p_step
  doc: "For integer and floating parameters start with p tests equidistributed\nin\
    \ the allowed range of values (default: 5)"
  type: long
  inputBinding:
    prefix: --pstep
- id: in_augustus_config_path
  doc: Specify the config directory d if not set as environment variable
  type: Directory
  inputBinding:
    prefix: --AUGUSTUS_CONFIG_PATH
- id: in_opt_trans_matrix
  doc: /species/nt/generic/generic_trans_shadow_partial.pbl
  type: string[]
  inputBinding:
    prefix: --opt_trans_matrix
- id: in_matrix_constraints
  doc: A file with try list, normed list and bindings.
  type: File
  inputBinding:
    prefix: --matrix_constraints
- id: in_utr
  doc: Turn untranslated region model on for training and prediction.
  type: string
  inputBinding:
    prefix: --UTR
- id: in_aug_exec_dir
  doc: "Path to augustus and etraining executable. If not specified\nit must be in\
    \ \\$PATH environment variable."
  type: File
  inputBinding:
    prefix: --aug_exec_dir
- id: in_train_only_utr
  doc: 'Use this option, if the exon, intron and intergenic models need not be trained.
    (default: 0)'
  type: long
  inputBinding:
    prefix: --trainOnlyUtr
- id: in_not_rain_pars
  doc: 'Use this option, if the parameters to optimize do not affect training. The
    training step (etraining) is omitted completely. (default: 0)'
  type: long
  inputBinding:
    prefix: --noTrainPars
- id: in_sens_spec_bias
  doc: 'increase sensitivity weight by factor f. (default: 1)'
  type: long
  inputBinding:
    prefix: --sens_spec_bias
- id: in_nice
  doc: "execute all time consuming system calls with bash nice (default nice level)\n\
    Default value for execution of optmize_augustus.pl is --nice=0."
  type: long
  inputBinding:
    prefix: --nice
- id: in_cleanup
  doc: 'Delete tmp_opt_* folder after optimization (default: 0)'
  type: long
  inputBinding:
    prefix: --cleanup
- id: in_stop_codon_excluded_from_cds
  doc: "Use this option, if the stop codons are excluded from the CDS features in\
    \ 'eval.gtf' (default: 0)."
  type: long
  inputBinding:
    prefix: --stopCodonExcludedFromCDS
- id: in_eval_exec_dir
  doc: "Directory that contains the executable evaluate_gtf.pl from the eval package.\n\
    If not specified it must be in \\$PATH environment variable."
  type: File
  inputBinding:
    prefix: --eval_exec_dir
- id: in_eval_against
  doc: "s is the species identifier to which 'eval.gtf' belongs to. Caution, if not\
    \ specified, the\nreference species in the alignment (first s-line in Maf block)\
    \ is assumed."
  type: string
  inputBinding:
    prefix: --eval_against
- id: in_chunksize
  doc: "when more than 1 CPU is used, the alignment is split into multiple smaller\
    \ alignments each approximately covering a\nsequence range of length n (in the\
    \ reference genome). The prediction step is executed in parallel on these chunks\
    \ (default: 5000000)."
  type: long
  inputBinding:
    prefix: --chunksize
- id: in_dbaccess
  doc: "retrieve genomes either from a MySQL or from an SQLITE database. In the SQLITE\
    \ case, 'db' is a database file\nwith extension .db, e.g. --dbaccess=vertebrates.db.\
    \ In the MySQL case, 'db' is a string that contains the connection\ninformation,\
    \ e.g. --dbaccess=dbname,host,user,passwd (the parameter --speciesfilenames is\
    \ not required, here)."
  type: File
  inputBinding:
    prefix: --dbaccess
- id: in_jg
  doc: "Use this option, if you want to filter out duplicates from the prediction\
    \ with the external tool 'joingenes' (default: 0,\nhowever --jg=1 is recommended).\
    \ The tool 'joingenes' is part of the augustus package and can be found in the\
    \ 'auxprogs' folder."
  type: Directory
  inputBinding:
    prefix: --jg
- id: in_jg_exec_dir
  doc: Directory that contains the exectuable 'joingenes' (only required when --jg=1)
  type: Directory
  inputBinding:
    prefix: --jg_exec_dir
- id: in_prefix_species_name
  doc: prefix of the species name
  type: string
  inputBinding:
    position: 0
- id: in_train_dot_gb
  doc: genbank file for training with bona fide gene structures
  type: string
  inputBinding:
    position: 1
- id: in_prefix_model_species
  doc: prefix of the model species
  type: string
  inputBinding:
    position: 0
- id: in_tree_dot_nwk
  doc: a phylogenetic tree of the species in NEWICK format
  type: string
  inputBinding:
    position: 1
- id: in_aln_dot_maf
  doc: an alignment of the genomes in MAF format
  type: string
  inputBinding:
    position: 2
- id: in_genomes_dot_tbl
  doc: "a text file containing the locations of the genomes. Each line starts with\
    \ the species identifier\nfollowed by the location of the corresponding genome\
    \ file, e.g.\nhg19 /path/to/human/genome.fa\nmm9  /path/to/mouse/genome.fa\n..."
  type: string
  inputBinding:
    position: 3
- id: in_eval_dot_gtf
  doc: annotation file in GTF format. Accuracy values are computed by comparing the
    predictions against this reference set.
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_jg
  doc: "Use this option, if you want to filter out duplicates from the prediction\
    \ with the external tool 'joingenes' (default: 0,\nhowever --jg=1 is recommended).\
    \ The tool 'joingenes' is part of the augustus package and can be found in the\
    \ 'auxprogs' folder."
  type: Directory
  outputBinding:
    glob: $(inputs.in_jg)
cwlVersion: v1.1
baseCommand:
- optimize_augustus.pl
