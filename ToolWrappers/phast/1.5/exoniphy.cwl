class: CommandLineTool
id: exoniphy.cwl
inputs:
- id: in_tree_models
  doc: "List of tree model (*.mod) files, one for each state in the\nHMM.  Order of\
    \ models must correspond to order of states in\nHMM file.  By default, a set of\
    \ models appropriate for human,\nmouse, and rat are used (estimated as described\
    \ in Siepel &\nHaussler, 2004)."
  type: File
  inputBinding:
    prefix: --tree-models
- id: in_hmm
  doc: "Name of HMM file defining states and transition probabilities.\nBy default,\
    \ the 60-state HMM described in Siepel & Haussler\n(2004) is used, with transition\
    \ probabilities appropriate for\nmammalian genomes (estimated as described in\
    \ that paper)."
  type: File
  inputBinding:
    prefix: --hmm
- id: in_cat_map
  doc: "|<string>\nMapping of feature types to category numbers.  Can give either\n\
    a filename or an \"inline\" description of a simple category\nmap, e.g., --catmap\
    \ \"NCATS = 3 ; CDS 1-3\".  By default, a\ncategory map is used that is appropriate\
    \ for the 60-state HMM\nmentioned above."
  type: File
  inputBinding:
    prefix: --catmap
- id: in_extrapolate
  doc: "| default\nExtrapolate to a larger set of species based on the given\nphylogeny\
    \ (Newick-format).  The trees in the given tree models\n(*.mod files) must be\
    \ subtrees of the larger phylogeny.  For\neach tree model M, a copy will be created\
    \ of the larger\nphylogeny, then scaled such that the total branch length of\n\
    the subtree corresponding to M's tree equals the total branch\nlength of M's tree;\
    \ this new version will then be used in\nplace of M's tree.  (Any species name\
    \ present in this tree but\nnot in the data will be ignored.)  If the string \"\
    default\"\nis given instead of a filename, then a phylogeny for 25\nvertebrate\
    \ species, estimated from sequence data for Target 1\n(CFTR) of the NISC Comparative\
    \ Sequencing Program (Thomas et\nal., 2003), will be assumed."
  type: long
  inputBinding:
    prefix: --extrapolate
- id: in_data_path
  doc: "Path to the directory with phast data. Exoniphy default models should\nbe\
    \ in <path>/exoniphy/. Default is set at compile time."
  type: File
  inputBinding:
    prefix: --data-path
- id: in_msa_format
  doc: "|PHYLIP|MPM|MAF|SS\nFile format of input alignment.  Default is to guess alignment\n\
    format from file contents."
  type: File
  inputBinding:
    prefix: --msa-format
- id: in_score
  doc: "Report log-odds scores for predictions, equal to their log\ntotal probability\
    \ under an exon model minus their log total\nprobability under a background model.\
    \  The exon model can be\naltered using --cds-types and --signal-types and the\n\
    background model can be altered using --backgd-types (see below)."
  type: boolean
  inputBinding:
    prefix: --score
- id: in_seqname
  doc: "Use specified string as \"seqname\" field in GFF output.\nDefault is obtained\
    \ from input file name (double filename\nroot, e.g., \"chr22\" if input file is\
    \ \"chr22.35.ss\")."
  type: File
  inputBinding:
    prefix: --seqname
- id: in_id_pref
  doc: "Use specified string as prefix of generated ids in GFF output.\nCan be used\
    \ to ensure ids are unique.  Default is obtained\nfrom input file name (single\
    \ filename root, e.g., \"chr22.35\"\nif input file is \"chr22.35.ss\")."
  type: File
  inputBinding:
    prefix: --idpref
- id: in_group_tag
  doc: "Use specified string as the tag denoting groups in GFF output\n(default is\
    \ \"transcript_id\")."
  type: string
  inputBinding:
    prefix: --grouptag
- id: in_alias
  doc: "Alias names in input alignment according to given definition,\ne.g., \"hg17=human;\
    \ mm5=mouse; rn3=rat\".  Useful with default\ntree models and with --extrapolate.\
    \  (Default models\nuse generic common names such as \"human\", \"mouse\", and\n\
    \"rat\".  This option allows a mapping to be established\nbetween the leaves of\
    \ trees in these files and the sequences\nof an alignment that uses an alternative\
    \ naming convention.)"
  type: long
  inputBinding:
    prefix: --alias
- id: in_no_cns
  doc: "Eliminate the state/category for conserved noncoding sequence\nfrom the default\
    \ HMM and category map.  Ignored if non-default\nHMM and category map are selected."
  type: boolean
  inputBinding:
    prefix: --no-cns
- id: in_reflect_strand
  doc: "Given an HMM describing the forward strand, create a larger\nHMM that allows\
    \ for features on both strands by \"reflecting\"\nthe HMM about all states associated\
    \ with background categories\n(see --backgd-cats).  The new HMM will be used for\
    \ predictions\non both strands.  If the default HMM is used, then this option\n\
    will be used automatically."
  type: boolean
  inputBinding:
    prefix: --reflect-strand
- id: in_bias
  doc: "Set \"coding bias\" equal to the specified value (default\n-3.33 if default\
    \ HMM is used, 0 otherwise).  The coding bias\nis added to the log probabilities\
    \ of transitions from\nbackground states to non-background states (see\n--backgd-cats),\
    \ then all transition probabilities are\nrenormalized.  If the coding bias is\
    \ positive, then more\npredictions will tend to be made and sensitivity will tend\
    \ to\nimprove, at some cost to specificity; if it is negative, then\nfewer predictions\
    \ will tend to be made, and specificity will\ntend to improve, at some cost to\
    \ sensitivity."
  type: double
  inputBinding:
    prefix: --bias
- id: in_sens_spec
  doc: "Make predictions for a range of different coding\nbiases (see --bias), and\
    \ write results to files with given\nfilename root.  This allows the sensitivity/specificity\n\
    tradeoff to be examined.  The range is fixed at -20 to 10,\nand 10 different sets\
    \ of predictions are produced."
  type: File
  inputBinding:
    prefix: --sens-spec
- id: in_back_gd_types
  doc: "Feature types to be considered \"background\" (default value:\n\"background,CNS\"\
    ).  Affects --reflect-strand,\n--score, and --bias."
  type: string
  inputBinding:
    prefix: --backgd-types
- id: in_cds_types
  doc: "(for use with --score) Feature types that represent protein-coding\nregions\
    \ (default value: \"CDS\")."
  type: string
  inputBinding:
    prefix: --cds-types
- id: in_signal_types
  doc: "(for use with --score) Types of features to be considered\n\"signals\" during\
    \ scoring (default value:\n\"start_codon,stop_codon,5'splice,3'splice,prestart,cds5'ss,cds3'ss\"\
    ).\nOne score is produced for a CDS feature (as defined by\n--cds-types) and the\
    \ adjacent signal features; the score is\nthen assigned to the CDS feature."
  type: long
  inputBinding:
    prefix: --signal-types
- id: in_indels
  doc: Use the indel model described in Siepel & Haussler (2004).
  type: boolean
  inputBinding:
    prefix: --indels
- id: in_no_gaps
  doc: "Prohibit gaps in sites of the specified categories (gaps result in\nemission\
    \ probabilities of zero).  If the default category map\nis used (see --catmap),\
    \ then gaps are prohibited in start and\nstop codons and at the canonical GT and\
    \ AG positions of splice\nsites (with or without --indels).  In all other cases,\
    \ the\ndefault behavior is to treat gaps as missing data, or to address\nthem\
    \ with the indel model (--indels)."
  type: string
  inputBinding:
    prefix: --no-gaps
- id: in_require_informative
  doc: "Require \"informative\" columns (i.e., columns with more than\ntwo non-missing-data\
    \ characters, excluding sequences specified\nby --not-informative) in the given\
    \ categories (list by name\nor number).  Non-informative columns will be given\
    \ emission\nprobabilities of zero.  If the default category map is used\n(see\
    \ --catmap), then this option applies automatically to\nCDSs, start and stop codons,\
    \ and the canonical GT and AG\npositions of splice sites.  Note that alignment\
    \ gaps *are*\nconsidered informative; the way they are handled is defined by\n\
    --indels and --no-gaps."
  type: long
  inputBinding:
    prefix: --require-informative
- id: in_not_informative
  doc: "Do not consider the specified sequences (listed by name) when\ndeciding whether\
    \ a column is informative.  This option can be\nuseful when sequences are present\
    \ that are very close to the\nreference sequence and thus do not contribute much\
    \ in the way\nof phylogenetic information.  E.g., one might use\n\"--not-informative\
    \ chimp\" with a human-referenced multiple\nalignment including chimp sequence."
  type: string
  inputBinding:
    prefix: --not-informative
- id: in_quiet
  doc: Proceed quietly (without messages to stderr).
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_msa_fname
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- exoniphy
