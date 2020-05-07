class: CommandLineTool
id: optimize_augustus.pl.cwl
inputs:
- id: meta_pars
  doc: 'metapars.cfg contains the names and their ranges of the meta parameters that
    are subject to optimization. (default: generic_metapars.cfg)'
  type: string
  inputBinding:
    prefix: --metapars
- id: rounds
  doc: 'r is the number of rounds (default: 5)'
  type: string
  inputBinding:
    prefix: --rounds
- id: cpus
  doc: 'n is the number of CPUs to use (default: 1)'
  type: string
  inputBinding:
    prefix: --cpus
- id: only_train
  doc: an optional genbank file that is used in addition to train.gb but only for
    etrain not for intermediate evaluation of accuracy. These genes may e.g. be incomplete.
  type: string
  inputBinding:
    prefix: --onlytrain
- id: k_fold
  doc: 'Make a k-fold cross validation (default: 8)'
  type: string
  inputBinding:
    prefix: --kfold
- id: p_step
  doc: 'For integer and floating parameters start with p tests equidistributed in
    the allowed range of values (default: 5)'
  type: string
  inputBinding:
    prefix: --pstep
- id: augustus_config_path
  doc: Specify the config directory d if not set as environment variable
  type: string
  inputBinding:
    prefix: --AUGUSTUS_CONFIG_PATH
- id: opt_trans_matrix
  doc: Optimize the transition matrix file s. s must be the transition file used.
    e.g. ../species/nt/generic/generic_trans_shadow_partial.pbl
  type: string
  inputBinding:
    prefix: --opt_trans_matrix
- id: matrix_constraints
  doc: A file with try list, normed list and bindings.
  type: string
  inputBinding:
    prefix: --matrix_constraints
- id: utr
  doc: Turn untranslated region model on for training and prediction.
  type: string
  inputBinding:
    prefix: --UTR
- id: aug_exec_dir
  doc: Path to augustus and etraining executable. If not specified it must be in \$PATH
    environment variable.
  type: string
  inputBinding:
    prefix: --aug_exec_dir
- id: train_only_utr
  doc: '=1           Use this option, if the exon, intron and intergenic models need
    not be trained. (default: 0)'
  type: boolean
  inputBinding:
    prefix: --trainOnlyUtr
- id: not_rain_pars
  doc: '=1            Use this option, if the parameters to optimize do not affect
    training. The training step (etraining) is omitted completely. (default: 0)'
  type: boolean
  inputBinding:
    prefix: --noTrainPars
- id: sens_spec_bias
  doc: 'increase sensitivity weight by factor f. (default: 1)'
  type: string
  inputBinding:
    prefix: --sens_spec_bias
- id: nice
  doc: =1                   execute all time consuming system calls with bash nice
    (default nice level) Default value for execution of optmize_augustus.pl is --nice=0.
  type: boolean
  inputBinding:
    prefix: --nice
- id: cleanup
  doc: '=1                Delete tmp_opt_* folder after optimization (default: 0)'
  type: boolean
  inputBinding:
    prefix: --cleanup
- id: stop_codon_excluded_from_cds
  doc: "=1 Use this option, if the stop codons are excluded from the CDS features\
    \ in 'eval.gtf' (default: 0)."
  type: boolean
  inputBinding:
    prefix: --stopCodonExcludedFromCDS
- id: eval_exec_dir
  doc: Directory that contains the executable evaluate_gtf.pl from the eval package.
    If not specified it must be in \$PATH environment variable.
  type: string
  inputBinding:
    prefix: --eval_exec_dir
- id: eval_against
  doc: s is the species identifier to which 'eval.gtf' belongs to. Caution, if not
    specified, the reference species in the alignment (first s-line in Maf block)
    is assumed.
  type: string
  inputBinding:
    prefix: --eval_against
- id: chunksize
  doc: 'when more than 1 CPU is used, the alignment is split into multiple smaller
    alignments each approximately covering a sequence range of length n (in the reference
    genome). The prediction step is executed in parallel on these chunks (default:
    5000000).'
  type: string
  inputBinding:
    prefix: --chunksize
- id: dbaccess
  doc: retrieve genomes either from a MySQL or from an SQLITE database. In the SQLITE
    case, 'db' is a database file with extension .db, e.g. --dbaccess=vertebrates.db.
    In the MySQL case, 'db' is a string that contains the connection information,
    e.g. --dbaccess=dbname,host,user,passwd (the parameter --speciesfilenames is not
    required, here).
  type: string
  inputBinding:
    prefix: --dbaccess
- id: jg
  doc: "=1                       Use this option, if you want to filter out duplicates\
    \ from the prediction with the external tool 'joingenes' (default: 0, however\
    \ --jg=1 is recommended). The tool 'joingenes' is part of the augustus package\
    \ and can be found in the 'auxprogs' folder."
  type: boolean
  inputBinding:
    prefix: --jg
- id: jg_exec_dir
  doc: Directory that contains the exectuable 'joingenes' (only required when --jg=1)
  type: string
  inputBinding:
    prefix: --jg_exec_dir
- id: meta_pars
  doc: 'see usage 1 above (default: generic_metapars.cgp.cfg)'
  type: string
  inputBinding:
    prefix: --metapars
- id: cpus
  doc: see usage 1 above
  type: string
  inputBinding:
    prefix: --cpus
- id: p_step
  doc: see usage 1 above
  type: string
  inputBinding:
    prefix: --pstep
- id: augustus_config_path
  doc: see usage 1 above
  type: string
  inputBinding:
    prefix: --AUGUSTUS_CONFIG_PATH
- id: aug_exec_dir
  doc: see usage 1 above
  type: string
  inputBinding:
    prefix: --aug_exec_dir
- id: sens_spec_bias
  doc: see usage 1 above
  type: string
  inputBinding:
    prefix: --sens_spec_bias
outputs: []
cwlVersion: v1.1
baseCommand:
- optimize_augustus.pl
