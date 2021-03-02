class: CommandLineTool
id: design.py_sliding_window_auto_from_args.cwl
inputs:
- id: in_guide_length
  doc: Length of guide to construct
  type: long?
  inputBinding:
    prefix: --guide-length
- id: in_obj
  doc: "Objective function to solve. 'maximize-activity'\nmaximizes the expected activity\
    \ of the guide set of\nthe target genomes subject to soft and hard\nconstraints\
    \ on the size of the guide set. 'minimize-\nguides' minimizes the number of guides\
    \ in the guide\nset subject to coverage constraints across the target\ngenomes."
  type: string?
  inputBinding:
    prefix: --obj
- id: in_guide_mismatches
  doc: "Allow for this number of mismatches when determining\nwhether a guide covers\
    \ a sequence"
  type: long?
  inputBinding:
    prefix: --guide-mismatches
- id: in_guide_cover_frac
  doc: "The fraction of all sequences that must be covered by\nthe guides."
  type: string?
  inputBinding:
    prefix: --guide-cover-frac
- id: in_soft_guide_constraint
  doc: "Soft constraint on the number of guides. There is no\npenalty for a number\
    \ of guides <=\nSOFT_GUIDE_CONSTRAINT, and having a number of guides\nbeyond this\
    \ is penalized. See --penalty-strength. This\nvalue must be <= HARD_GUIDE_CONSTRAINT."
  type: long?
  inputBinding:
    prefix: --soft-guide-constraint
- id: in_hard_guide_constraint
  doc: "Hard constraint on the number of guides. The number of\nguides designed for\
    \ a target will be <=\nHARD_GUIDE_CONSTRAINT."
  type: long?
  inputBinding:
    prefix: --hard-guide-constraint
- id: in_penalty_strength
  doc: "Importance of the penalty when the number of guides\nexceeds the soft guide\
    \ constraint. Namely, for a guide\nset G, if the penalty strength is L and the\
    \ soft guide\nconstraint is h, then the penalty in the objective\nfunction is\
    \ L*max(0, |G|-h). Must be >= 0. The value\ndepends on the output of activity\
    \ model and reflects a\ntolerance for more guides; for the default activity\n\
    model reasonable values are in the range [0.1, 0.5]."
  type: long?
  inputBinding:
    prefix: --penalty-strength
- id: in_maximization_algorithm
  doc: "Algorithm to use for solving submodular maximization\nproblem. 'greedy' is\
    \ the canonical deterministic\ngreedy algorithm (Nemhauser 1978) for constrained\n\
    monotone submodular maximization, which may perform\nwell in practice but has\
    \ poor theoretical guarantees\nhere because the function is not monotone (unless\n\
    --penalty-strength is 0). 'random-greedy' is the\nrandomized greedy algorithm\
    \ (Buchbinder 2014) for\nconstrained non-monotone submodular maximization that\n\
    has good worst-case theoretical guarantees."
  type: string?
  inputBinding:
    prefix: --maximization-algorithm
- id: in_missing_th_res
  doc: "MISSING_THRES MISSING_THRES\n<A> <B> <C>; parameters governing the threshold\
    \ on\nwhich sites to ignore due to too much missing data.\nThe 3 values specify\
    \ not to attempt to design guides\noverlapping sites where the fraction of sequences\
    \ with\nmissing data is > min(A, max(B, C*m)) where m is the\nmedian fraction\
    \ of sequences with missing data over\nthe alignment. Set a=1 and b=1 to not ignore\
    \ sites due\nto missing data."
  type: long?
  inputBinding:
    prefix: --missing-thres
- id: in_id_m
  doc: "Allow for this number of mismatches when determining\nwhether a guide 'hits'\
    \ a sequence in a group/taxon\nother than the for which it is being designed;\
    \ higher\nvalues correspond to more specificity."
  type: long?
  inputBinding:
    prefix: --id-m
- id: in_id_frac
  doc: "Decide that a guide 'hits' a group/taxon if it 'hits'\na fraction of sequences\
    \ in that group/taxon that\nexceeds this value; lower values correspond to more\n\
    specificity."
  type: string?
  inputBinding:
    prefix: --id-frac
- id: in_id_method
  doc: "Choice of method to query for specificity. 'lshnn' for\nLSH near-neighbor\
    \ approach. 'shard' for approach that\nshards k-mers across small tries."
  type: string?
  inputBinding:
    prefix: --id-method
- id: in_specific_against_fast_as
  doc: "Path to one or more FASTA files giving sequences, such\nthat guides are designed\
    \ to be specific against (i.e.,\nnot hit) these sequences, according to --id-m\
    \ and\n--id-frac. This is equivalent to specifying the FASTAs\nin the main input\
    \ (as positional inputs), except that,\nwhen provided here, guides are not designed\
    \ for them\nand they do not need to be aligned."
  type: string[]
  inputBinding:
    prefix: --specific-against-fastas
- id: in_specific_against_tax_a
  doc: "Path to TSV file giving giving taxonomies from which\nto download all genomes\
    \ and ensure guides are specific\nagainst (i.e., not hit) these. The TSV file\
    \ has 2\ncolumns: (1) a taxonomic ID; (2) segment label, or\n'None' if unsegmented"
  type: File?
  inputBinding:
    prefix: --specific-against-taxa
- id: in_do_not_allow_gu_pairing
  doc: "When determining whether a guide binds to a region of\ntarget sequence, do\
    \ not count G-U (wobble) base pairs\nas matching. Default is to tolerate G-U pairing:\n\
    namely, A in an output guide sequence matches G in the\ntarget and C in an output\
    \ guide sequence matches T in\nthe target (since the synthesized guide is the\
    \ reverse\ncomplement of the output guide sequence)"
  type: boolean?
  inputBinding:
    prefix: --do-not-allow-gu-pairing
- id: in_required_guides
  doc: "Path to a file that gives guide sequences that will be\nincluded in the guide\
    \ cover and output for the windows\nin which they belong, e.g., if certain guide\
    \ sequences\nare shown experimentally to perform well. The file\nmust have 3 columns:\
    \ col 1 gives an identifier for the\nalignment that the guide covers, such that\
    \ i\nrepresents the i'th FASTA given as input (0-based);\ncol 2 gives a guide\
    \ sequence; col 3 gives the start\nposition of the guide (0-based) in the alignment"
  type: File?
  inputBinding:
    prefix: --required-guides
- id: in_blacklisted_ranges
  doc: "Path to a file that gives ranges in alignments from\nwhich guides will not\
    \ be constructed. The file must\nhave 3 columns: col 1 gives an identifier for\
    \ the\nalignment that the range corresponds to, such that i\nrepresents the i'th\
    \ FASTA given as input (0-based);\ncol 2 gives the start position of the range\n\
    (inclusive); col 3 gives the end position of the range\n(exclusive)"
  type: File?
  inputBinding:
    prefix: --blacklisted-ranges
- id: in_blacklisted_km_ers
  doc: "Path to a FASTA file that gives k-mers to blacklisted\nfrom guide sequences.\
    \ No guide sequences will be\nconstructed that contain these k-mers. The k-mers\
    \ make\nup the sequences in the FASTA file; the sequence names\nare ignored. k-mers\
    \ should be long enough so that not\ntoo many guide sequences are deemed to be\
    \ unsuitable,\nand should be at most the length of the guide"
  type: long?
  inputBinding:
    prefix: --blacklisted-kmers
- id: in_require_flanking_five
  doc: "Require the given sequence on the 5' protospacer\nflanking site (PFS) of each\
    \ designed guide; this\ntolerates ambiguity in the sequence (e.g., 'H'\nrequires\
    \ 'A', 'C', or 'T', or, equivalently, avoids\nguides flanked by 'G'). Note that\
    \ this is the 5' end\nin the target sequence (not the spacer sequence)."
  type: long?
  inputBinding:
    prefix: --require-flanking5
- id: in_require_flanking_three
  doc: "Require the given sequence on the 3' protospacer\nflanking site (PFS) of each\
    \ designed guide; this\ntolerates ambiguity in the sequence (e.g., 'H'\nrequires\
    \ 'A', 'C', or 'T', or, equivalently, avoids\nguides flanked by 'G'). Note that\
    \ this is the 3' end\nin the target sequence (not the spacer sequence)."
  type: long?
  inputBinding:
    prefix: --require-flanking3
- id: in_seed
  doc: "SEED will set the random seed, guaranteeing the same\noutput given the same\
    \ inputs. If SEED is not set to\nthe same value, output may vary across different\
    \ runs."
  type: string?
  inputBinding:
    prefix: --seed
- id: in_predict_activity_model_path
  doc: "PREDICT_ACTIVITY_MODEL_PATH\nPaths to directories containing serialized models\
    \ in\nTensorFlow's SavedModel format for predicting guide-\ntarget activity. There\
    \ are two arguments: (1)\nclassification model to determine which guides are\n\
    active; (2) regression model, which is used to\ndetermine which guides (among\
    \ active ones) are highly\nactive. The models/ directory contains example models.\n\
    If not set, ADAPT does not predict activities to use\nduring design."
  type: File?
  inputBinding:
    prefix: --predict-activity-model-path
- id: in_predict_activity_th_res
  doc: "PREDICT_ACTIVITY_THRES\nThresholds to use for decisions on output of\npredictive\
    \ models. There are two arguments: (1)\nclassification threshold for deciding\
    \ which guide-\ntarget pairs are active (in [0,1], where higher values\nhave higher\
    \ precision but less recall); (2) regression\nthreshold for deciding which guide-target\
    \ pairs are\nhighly active (>= 0, where higher values limit the\nnumber determined\
    \ to be highly active). If not set but\n--predict-activity-model-path is set,\
    \ then ADAPT uses\ndefault thresholds stored with the models."
  type: long?
  inputBinding:
    prefix: --predict-activity-thres
- id: in_use_simple_binary_activity_prediction
  doc: "If set, predict activity using a simple binary\nprediction between guide and\
    \ target according to their\ndistance, with the threshold determined based on\n\
    --guide-mismatches. This is only applicable when OBJ\nis 'maxmimize-activity'.\
    \ This does not use a\nserialized model for predicting activity, so\n--predict-activity-model-path\
    \ should not be set when\nthis is set."
  type: boolean?
  inputBinding:
    prefix: --use-simple-binary-activity-prediction
- id: in_do_not_memoize_guide_computations
  doc: "If set, do not memoize computations during the search,\nincluding of guides\
    \ identified at each site and of\nspecificity queries. This can be helpful for\n\
    benchmarking the improvement of memoization, or if\nthere is reason to believe\
    \ memoization will slow the\nsearch (e.g., if possible amplicons rarely overlap).\n\
    Note that activity predictions are still memoized."
  type: boolean?
  inputBinding:
    prefix: --do-not-memoize-guide-computations
- id: in_debug
  doc: Debug output
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_verbose
  doc: Verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_window_size
  doc: "Ensure that selected guides are all a window of this\nsize"
  type: long?
  inputBinding:
    prefix: --window-size
- id: in_window_step
  doc: "Amount by which to increase the window start position\nfor every iteration"
  type: string?
  inputBinding:
    prefix: --window-step
- id: in_sort
  doc: "If set, sort output TSV by number of guides\n(ascending) then by score (descending);\
    \ default is to\nsort by window position"
  type: boolean?
  inputBinding:
    prefix: --sort
- id: in_path_mafft_used
  doc: "Path to mafft executable, used for generating\nalignments"
  type: File?
  inputBinding:
    prefix: --mafft-path
- id: in_prep_memoize_dir
  doc: "Path to directory in which to memoize alignments and\nstatistics on them.\
    \ If set to \"s3://BUCKET/PATH\", it\nwill save to the S3 bucket if boto3 and\
    \ botocore are\ninstalled and access key information exists via\nAWS_ACCESS_KEY_ID\
    \ and AWS_SECRET_ACCESS_KEY or via AWS\nCLI. If not set, this does not memoize\
    \ this\ninformation."
  type: File?
  inputBinding:
    prefix: --prep-memoize-dir
- id: in_sample_seqs
  doc: "After fetching accessions, randomly select SAMPLE_SEQS\nof them with replacement\
    \ from each taxonomy any move\nforward in the design with these. This is useful\
    \ for\ntesting and measuring output growth as input size\ngrows, as well as assessing\
    \ the dispersion in output\nassociated with some input sample."
  type: long?
  inputBinding:
    prefix: --sample-seqs
- id: in_prep_influenza
  doc: "If set, fetch sequences using the NCBI Influenza\ndatabase; should only be\
    \ used for Influenza A or B\nvirus taxonomies"
  type: boolean?
  inputBinding:
    prefix: --prep-influenza
- id: in_cover_by_year_decay
  doc: "COVER_BY_YEAR_DECAY\n<A> <B>; if set, group input sequences by year and set\n\
    a desired partial cover for each year (fraction of\nsequences that must be covered\
    \ by guides) as follows:\nAll years >= A receive a desired cover fraction of\n\
    GUIDE_COVER_FRAC for guides (and PRIMER_COVER_FRAC for\nprimers). Each preceding\
    \ year receives a desired cover\nfraction that decays by B -- i.e., year n is\
    \ given\nB*(desired cover fraction of year n+1)."
  type: long?
  inputBinding:
    prefix: --cover-by-year-decay
- id: in_cluster_threshold
  doc: "Maximum inter-cluster distance to use when clustering\ninput sequences prior\
    \ to alignment. Expressed as\naverage nucleotide dissimilarity (1-ANI, where ANI\
    \ is\naverage nucleotide identity); higher values result in\nfewer clusters"
  type: long?
  inputBinding:
    prefix: --cluster-threshold
- id: in_use_accessions
  doc: "If set, use specified accessions instead of fetching\nneighbors for the given\
    \ taxonomic ID(s). This provides\na path to a TSV file with 3 columns: (1) a taxonomic\n\
    ID; (2) segment label, or 'None' if unsegmented; (3)\naccession. Each row specifies\
    \ an accession to use in\nthe input, and values for columns 1 and 2 can appear\n\
    in multiple rows."
  type: File?
  inputBinding:
    prefix: --use-accessions
- id: in_use_fast_a
  doc: "If set, use sequences in fasta instead of fetching\nneighbors for the given\
    \ taxonomic ID(s). This provides\na path to a TSV file with 3 columns: (1) a taxonomic\n\
    ID; (2) segment label, or 'None' if unsegmented; (3)\npath to FASTA."
  type: File?
  inputBinding:
    prefix: --use-fasta
- id: in_only_design_for
  doc: "If set, only design for given taxonomies. This\nprovides a path to a TSV file\
    \ with 2 columns: (1) a\ntaxonomic ID; (2) segment label, or 'None' if\nunsegmented"
  type: File?
  inputBinding:
    prefix: --only-design-for
- id: in_tax_a_to_ignore_for_specificity
  doc: "If set, specify which taxa should be ignored when\nenforcing specificity while\
    \ designing for other taxa.\nThis provides a path to a TSV file with 2 columns:\
    \ (1)\na taxonomic ID A; (2) a taxonomic ID B such that B\nshould be ignored when\
    \ determining specificity for A.\nWhen designing for A, this masks taxonomy B\
    \ from all\nspecificity queries. This is useful, e.g., if B is a\nsubset of A."
  type: File?
  inputBinding:
    prefix: --taxa-to-ignore-for-specificity
- id: in_ncbi_api_key
  doc: "API key to use for NCBI e-utils. Using this increases\nthe limit on requests/second\
    \ and may prevent an IP\naddress from being blocked due to too many requests"
  type: string?
  inputBinding:
    prefix: --ncbi-api-key
- id: in_aws_access_key_id
  doc: "User Account Access Key for AWS. This is only\nnecessary if using S3 for memoization\
    \ via\nPREP_MEMOIZE_DIR and AWS CLI is not installed and\nconfigured."
  type: long?
  inputBinding:
    prefix: --aws-access-key-id
- id: in_aws_secret_access_key
  doc: "User Account Secret Access Key for AWS. This is only\nnecessary if using S3\
    \ for memoization via\nPREP_MEMOIZE_DIR and AWS CLI is not installed and\nconfigured."
  type: long?
  inputBinding:
    prefix: --aws-secret-access-key
- id: in_ref_accs
  doc: "Accession(s) of reference sequence(s) to use for\ncuration (comma-separated).\
    \ If not set, ADAPT will\nautomatically get accessions for reference sequences\n\
    from NCBI based on the taxonomic ID"
  type: string[]
  inputBinding:
    prefix: --ref-accs
- id: in_metadata_filter
  doc: "Only include accessions of specified taxonomic ID that\nmatch this metadata\
    \ in the design. Metadata options\nare year, taxid, and country. Format as\n'metadata=value'\
    \ or 'metadata!=value'. Separate\nmultiple values with commas and different metadata\n\
    filters with spaces (e.g. '--metadata-filter\nyear!=2020,2019 taxid=11060')"
  type: string[]
  inputBinding:
    prefix: --metadata-filter
- id: in_specific_against_metadata_filter
  doc: "Only include accessions of the specified taxonomic ID\nthat do not match this\
    \ metadata in the design, and be\nspecific against any accession that does match\
    \ this\nmetadata. Metadata options are year, taxid, and\ncountry. Format as 'metadata=value'\
    \ or\n'metadata!=value'. Separate multiple values with\ncommas and different metadata\
    \ filters with spaces\n(e.g. '--specific-against-metadata-filter\nyear!=2020,2019\
    \ taxid=11060')"
  type: string[]
  inputBinding:
    prefix: --specific-against-metadata-filter
- id: in_write_input_seqs
  doc: "Path to a file to which to write the sequences\n(accession.version) being\
    \ used as input for design"
  type: File?
  inputBinding:
    prefix: --write-input-seqs
- id: in_write_input_aln
  doc: "Prefix of path to files to which to write the\nalignments being used as input\
    \ for design; filenames\nare 'WRITE_INPUT_ALN.[cluster-number]'\n"
  type: long?
  inputBinding:
    prefix: --write-input-aln
- id: in_var_48
  doc: '[--prep-memoize-dir PREP_MEMOIZE_DIR]'
  type: string
  inputBinding:
    position: 0
- id: in_tax_id
  doc: Taxonomic (e.g., species) ID from NCBI
  type: string
  inputBinding:
    position: 0
- id: in_segment
  doc: "Label of segment (e.g., 'S') if there is one, or\n'None' if unsegmented"
  type: string
  inputBinding:
    position: 1
- id: in_out_tsv
  doc: "Path to output TSVs, with one per cluster; output TSVs\nare OUT_TSV.{cluster-number}"
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/adapt:1.2.0--py_0
cwlVersion: v1.1
baseCommand:
- design.py
- sliding-window
- auto-from-args
