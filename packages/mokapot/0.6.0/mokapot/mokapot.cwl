class: CommandLineTool
id: mokapot.cwl
inputs:
- id: in_dest_dir
  doc: "The directory in which to write the result files.\nDefaults to the current\
    \ working directory"
  type: Directory?
  inputBinding:
    prefix: --dest_dir
- id: in_file_root
  doc: The prefix added to all file names.
  type: File?
  inputBinding:
    prefix: --file_root
- id: in_proteins
  doc: "The FASTA file used for the database search. Using\nthis option enable protein-level\
    \ confidence estimates\nusing the 'picked-protein' approach. Note that the\nFASTA\
    \ file must contain both target and decoy\nsequences. Additionally, verify that\
    \ the '--enzyme', '\n--missed_cleavages, '--min_length', '--max_length', '\n--semi',\
    \ '--clip_nterm_methionine', and '--\ndecoy_prefix' parameters match your search\
    \ engine\nconditions."
  type: File?
  inputBinding:
    prefix: --proteins
- id: in_decoy_prefix
  doc: "The prefix used to indicate a decoy protein in the\nFASTA file. For mokapot\
    \ to provide accurate confidence\nestimates, decoy proteins should have same description\n\
    as the target proteins they were generated from, but\nthis string prepended."
  type: File?
  inputBinding:
    prefix: --decoy_prefix
- id: in_enzyme
  doc: "A regular expression defining the enzyme specificity.\nThe cleavage site is\
    \ interpreted as the end of the\nmatch. The default is trypsin, without proline\n\
    suppression: [KR]"
  type: string?
  inputBinding:
    prefix: --enzyme
- id: in_missed_cleavages
  doc: The allowed number of missed cleavages
  type: long?
  inputBinding:
    prefix: --missed_cleavages
- id: in_clip_n_term_methionine
  doc: "Remove methionine residues that occur at the protein\nN-terminus."
  type: boolean?
  inputBinding:
    prefix: --clip_nterm_methionine
- id: in_min_length
  doc: The minimum peptide length to consider.
  type: long?
  inputBinding:
    prefix: --min_length
- id: in_max_length
  doc: The maximum peptide length to consider.
  type: long?
  inputBinding:
    prefix: --max_length
- id: in_semi
  doc: "Was a semi-enzymatic digest used to assign PSMs? If\nso, the protein database\
    \ will likely contain shared\npeptides and yield unhelpful protein-level confidence\n\
    estimates. We do not recommend using this option."
  type: boolean?
  inputBinding:
    prefix: --semi
- id: in_train_fdr
  doc: "The maximum false discovery rate at which to consider\na target PSM as a positive\
    \ example during model\ntraining."
  type: string?
  inputBinding:
    prefix: --train_fdr
- id: in_test_fdr
  doc: "The false-discovery rate threshold at which to\nevaluate the learned models."
  type: string?
  inputBinding:
    prefix: --test_fdr
- id: in_max_iter
  doc: The number of iterations to use for training.
  type: long?
  inputBinding:
    prefix: --max_iter
- id: in_seed
  doc: An integer to use as the random seed.
  type: long?
  inputBinding:
    prefix: --seed
- id: in_direction
  doc: "The name of the feature to use as the initial\ndirection for ranking PSMs.\
    \ The default automatically\nselects the feature that finds the most PSMs below\
    \ the\n`train_fdr`."
  type: string?
  inputBinding:
    prefix: --direction
- id: in_aggregate
  doc: "If used, PSMs from multiple PIN files will be\naggregated and analyzed together.\
    \ Otherwise, a joint\nmodel will be trained, but confidence estimates will\nbe\
    \ calculated separately for each PIN file. This flag\nonly has an effect when\
    \ multiple PIN files are\nprovided."
  type: boolean?
  inputBinding:
    prefix: --aggregate
- id: in_subset_max_train
  doc: "Use only a random subset of PSMs for training. This is\nuseful for very large\
    \ datasets."
  type: long?
  inputBinding:
    prefix: --subset_max_train
- id: in_override
  doc: "Use the learned model even if it performs worse than\nthe best feature."
  type: boolean?
  inputBinding:
    prefix: --override
- id: in_save_models
  doc: Save the models learned by mokapot as pickled Python
  type: boolean?
  inputBinding:
    prefix: --save_models
- id: in_open_modification_bin_size
  doc: "This parameter only affect reading PSMs from PepXML\nfiles. If specified,\
    \ modification masses are binned\naccording to the value. The binned mass difference\
    \ is\nappended to the end of the peptide and will be used\nwhen grouping peptides\
    \ for peptide-level confidence\nestimation. Using this option for open modification\n\
    search results. We reommend 0.01 as a good starting\npoint."
  type: double?
  inputBinding:
    prefix: --open_modification_bin_size
- id: in_verbosity
  doc: "Specify the verbosity of the current process. Each\nlevel prints the following\
    \ messages, including all\nthose at a lower verbosity: 0-errors, 1-warnings,\n\
    2-messages, 3-debug info.\n"
  type: string?
  inputBinding:
    prefix: --verbosity
- id: in_psm_files
  doc: "A collection of PSMs in the Percolator tab-delimited\nor PepXML format."
  type: string
  inputBinding:
    position: 0
- id: in_objects_dot
  doc: --folds FOLDS         The number of cross-validation folds to use. PSMs
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mokapot:0.6.0--py_0
cwlVersion: v1.1
baseCommand:
- mokapot
