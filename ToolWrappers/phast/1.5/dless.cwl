class: CommandLineTool
id: dless.cwl
inputs:
- id: in_rho
  doc: (default 0.3)
  type: double
  inputBinding:
    prefix: --rho
- id: in_transitions
  doc: "[~]<mu>,<nu>\nSet the transition probabilities of the two-state HMM using\n\
    the specified values of <mu> and <nu> (both between 0 and 1)."
  type: boolean
  inputBinding:
    prefix: --transitions
- id: in_target_coverage
  doc: "[~]<gamma>\n(Alternative to transitions, use with --expected-length) Set\n\
    the transition parameters such that the expected fraction of\nsites in conserved\
    \ elements is <gamma> (betwen 0 and 1).  This\nis a *prior* rather than *posterior*\
    \ expectation and assumes\nstationarity of the state-transition process.  This\
    \ option\ncauses the ratio mu/nu to be fixed at (1-gamma)/gamma, and\ntogether\
    \ with --expected-length, completely defines the\ntransition probabilities."
  type: boolean
  inputBinding:
    prefix: --target-coverage
- id: in_expected_length
  doc: "[~]<omega>\n(Alternative to --transitions, use with --target-coverage) Set\n\
    transition probabilities such that the (prior) expected length\nof a conserved\
    \ element is <omega>.  The parameter mu is set to\n1/omega."
  type: boolean
  inputBinding:
    prefix: --expected-length
- id: in_msa_format
  doc: "|PHYLIP|MPM|MAF|SS\nAlignment format (default is to guess format from file\
    \ contents).\nNote that the program msa_view can be used for conversion."
  type: File
  inputBinding:
    prefix: --msa-format
- id: in_refseq
  doc: "(for use with --msa-format MAF) Read the complete text of the\nreference sequence\
    \ from <fname> (FASTA format) and combine it\nwith the contents of the MAF file\
    \ to produce a complete,\nordered representation of the alignment.  The reference\n\
    sequence of the MAF file is assumed to be the one that appears\nfirst in each\
    \ block."
  type: File
  inputBinding:
    prefix: --refseq
- id: in_ref_idx
  doc: "Use coordinate frame of specified sequence in output.  Default\nvalue is 1,\
    \ first sequence in alignment; 0 indicates\ncoordinate frame of entire multiple\
    \ alignment."
  type: long
  inputBinding:
    prefix: --refidx
- id: in_seqname
  doc: "Use specified string for 'seqname' (GFF) or 'chrom' field in\noutput file.\
    \  Default is obtained from input file name (double\nfilename root, e.g., \"chr22\"\
    \ if input file is \"chr22.35.ss\")."
  type: File
  inputBinding:
    prefix: --seqname
- id: in_id_pref
  doc: "Use specified string as prefix of generated ids in output\nfile.  Can be used\
    \ to ensure ids are unique.  Default is\nobtained from input file name (single\
    \ filename root, e.g.,\n\"chr22.35\" if input file is \"chr22.35.ss\")."
  type: File
  inputBinding:
    prefix: --idpref
- id: in_in_del_model
  doc: ",beta,tau[,alpha2,beta2,tau2]\nUse a simple model of insertions and deletions\
    \ that assumes a known\nindel history and at most one indel per branch of the\
    \ tree at any\ngiven position.  The parameters alpha and beta are rates of\ninsertion\
    \ and deletion, respectively, per expected substitution per\nsite, and the parameter\
    \ tau is approximately the inverse of the\nexpected indel length (see indelFit).\
    \  If two sets are parameters\nare given the first will be used for nonconserved\
    \ regions and the\nsecond for conserved regions.  If --indel-history is not used,\
    \ a\nhistory will be inferred on the fly using a simple parsimony\nalgorithm."
  type: long
  inputBinding:
    prefix: --indel-model
- id: in_in_del_history
  doc: "(for use with --indel-model) Use the specified indel history (see\nindelHistory)."
  type: File
  inputBinding:
    prefix: --indel-history
- id: in_phylo_hmm_dot
  doc: In particular, detects elements that have been under
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dless
