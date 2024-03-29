class: CommandLineTool
id: fastme.cwl
inputs:
- id: in_minput_data_filem
  doc: "\e[00;04minput data file\e[00;01m, --input_data=\e[00;04minput data file\e\
    [00;00m\nThe \e[00;04minput data file\e[00;00m contains sequence alignment(s)\e\
    [00;00m\nor a distance matrix(ces)."
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_minput_user_tree
  doc: "\e[00;04minput user tree file\e[00;01m, --user_tree=\e[00;04minput user tree\
    \ file\e[00;00m\n\e[00;01mFastME \e[00;00mmay use an existing topology available\
    \ in the \e[00;04minput user tree file\e[00;00m\nwhich corresponds to the input\
    \ dataset."
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_moutput_tree_filem
  doc: "\e[00;04moutput tree file\e[00;01m, --output_tree=\e[00;04moutput tree file\e\
    [00;00m\n\e[00;01mFastME \e[00;00mwill write the infered tree into the \e[00;04moutput\
    \ tree file\e[00;00m."
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_moutput_matrix_filem
  doc: "\e[00;04moutput matrix file\e[00;01m, --output_matrix=\e[00;04moutput matrix\
    \ file\e[00;00m\nUse this option if you want \e[00;01mFastME \e[00;00mto write\
    \ the distances\e[00;00m\nmatrix computed from the input alignment in the \e[00;04moutput\
    \ matrix file\e[00;00m."
  type: boolean?
  inputBinding:
    prefix: -O
- id: in_moutput_information_filem
  doc: "\e[00;04moutput information file\e[00;01m, --output_info=\e[00;04moutput information\
    \ file\e[00;00m\nUse this option if you want \e[00;01mFastME \e[00;00mto write\
    \ information\e[00;00m\nabout its execution in the \e[00;04moutput information\
    \ file\e[00;00m."
  type: boolean?
  inputBinding:
    prefix: -I
- id: in_moutput_bootstrap_trees
  doc: "\e[00;04moutput bootstrap trees file\e[00;01m, --output_boot=\e[00;04moutput\
    \ bootstrap trees file\e[00;00m\nUse this option if you want \e[00;01mFastME \e\
    [00;00mto write bootstrap trees\e[00;00m\nin the \e[00;04mbootstrap trees file\e\
    [00;00m."
  type: boolean?
  inputBinding:
    prefix: -B
- id: in_append
  doc: "\e[00;00m\nUse this option to append results to existing output files (if\
    \ any).\e[00;00m\nBy default output files will be overwritten."
  type: boolean?
  inputBinding:
    prefix: --append
- id: in_mmethodm__methodmmethodmmfastme
  doc: "\e[00;04mmethod\e[00;01m, --method=\e[00;04mmethod\e[00;00m\n\e[00;01mFastME\
    \ \e[00;00mcomputes a tree using a distance algorithm.\e[00;00m\nYou may choose\
    \ this \e[00;04mmethod\e[00;00m from:\e[00;00m\n\e[00;01mTaxAdd_(B)alME\e[00;00m,\
    \ \e[00;01mTaxAdd_(O)LSME\e[00;00m, \e[00;01mB(I)ONJ\e[00;00m (default),\e[00;00m\n\
    \e[00;01m(N)J\e[00;00m or \e[00;01m(U)NJ\e[00;00m."
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_muse_option_dna
  doc: "\e[00;04m[model]\e[00;01m, --dna=\e[00;04m[model]\e[00;00m\nUse this option\
    \ if your input data file contains DNA sequences alignment(s).\e[00;00m\nYou may\
    \ also indicate the evolutionary \e[00;04m[model]\e[00;00m which can be choosen\
    \ from:\e[00;00m\n\e[00;01m(p)-distance\e[00;00m, \e[00;01mR(Y) symmetric\e[00;00m,\
    \ \e[00;01m(R)Y\e[00;00m, \e[00;01m(J)C69\e[00;00m, \e[00;01m(K)2P\e[00;00m, \e\
    [00;01mF8(1)\e[00;00m, \e[00;01mF8(4)\e[00;00m (default), \e[00;01m(T)N93\e[00;00m,\
    \ \e[00;01m(L)ogDet\e[00;00m."
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_muse_option_protein
  doc: "\e[00;04m[model]\e[00;01m, --protein=\e[00;04m[model]\e[00;00m\nUse this option\
    \ if your input data file contains protein sequences alignment(s).\e[00;00m\n\
    You may also indicate the evolutionary \e[00;04m[model]\e[00;00m which can be\
    \ choosen from:\e[00;00m\n\e[00;01m(p)-distance\e[00;00m, \e[00;01m(F)81 like\e\
    [00;00m, \e[00;01m(L)G\e[00;00m (default), \e[00;01m(W)AG\e[00;00m, \e[00;01m(J)TT\e\
    [00;00m, \e[00;01mDay(h)off\e[00;00m, \e[00;00m\n\e[00;01m(D)CMut\e[00;00m, \e\
    [00;01m(C)pRev\e[00;00m, \e[00;01m(M)tREV\e[00;00m, \e[00;01m(R)tREV\e[00;00m,\
    \ \e[00;01mHIV(b)\e[00;00m, \e[00;01mH(I)Vw\e[00;00m or \e[00;01mFL(U)\e[00;00m."
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_remove_gap
  doc: "\e[00;00m\nUse this option to completely remove any site which has a gap in\e\
    [00;00m\nany sequence. By default, \e[00;01mFastME \e[00;00mis doing pairwise\
    \ deletion of gaps."
  type: boolean?
  inputBinding:
    prefix: --remove_gap
- id: in_equilibrium
  doc: "\e[00;00m\nThe equilibrium frequencies for DNA are always estimated by counting\e\
    [00;00m\nthe occurence of the nucleotides in the input alignment.\e[00;00m\nFor\
    \ amino-acid sequences, the equilibrium frequencies are estimated\e[00;00m\nusing\
    \ the frequencies defined by the substitution model.\e[00;00m\nUse this option\
    \ if you whish to estimate the amino-acid frequencies\e[00;00m\nby counting their\
    \ occurence in the input alignment."
  type: boolean?
  inputBinding:
    prefix: --equilibrium
- id: in_muse_option_you_wish
  doc: "\e[00;04m[alpha]\e[00;01m, --gamma=\e[00;04m[alpha]\e[00;00m\nUse this option\
    \ if you wish to have gamma distributed rates across sites.\e[00;00m\nBy default,\
    \ FastME runs with no gamma variation.\e[00;00m\nIf running FastME with gamma\
    \ distributed rates across sites, the \e[00;04m[alpha]\e[00;00m default value\
    \ is 1.0.\e[00;00m\nOnly helpful when the input data file contains sequences alignment(s)."
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_muse_option_do_m
  doc: "\e[00;04m[NNI]\e[00;01m, --nni=\e[00;04m[NNI]\e[00;00m\nUse this option to\
    \ do \e[00;04m[NNI]\e[00;00m tree topology improvement.\e[00;00m\nYou may choose\
    \ the \e[00;04m[NNI]\e[00;00m type from:\e[00;00m\n\e[00;01mNNI_(B)alME\e[00;00m\
    \ (default) or \e[00;01mNNI_(O)LS\e[00;00m."
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_spr
  doc: "\e[00;00m\nUse this option to do \e[00;04mSPR\e[00;00m tree topology improvement."
  type: boolean?
  inputBinding:
    prefix: --spr
- id: in_mbranchm__branchlengthmbranchmuse
  doc: "\e[00;04mbranch\e[00;01m, --branch_length=\e[00;04mbranch\e[00;00m\nUse this\
    \ option to indicate the \e[00;04mbranch\e[00;00m length to assign to the tree.\e\
    [00;00m\nYou may choose the \e[00;04mbranch\e[00;00m length from: \e[00;01m(B)alLS\e\
    [00;00m (default), \e[00;01m(O)LS\e[00;00m\nor \e[00;01m(n)one\e[00;00m. \e[00;01m(n)one\
    \ \e[00;00mis only available with BIONJ, NJ or UNJ.\e[00;00m\nOnly helpful when\
    \ not improving the tree topology (no NNI nor SPR)."
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_mdatasetsm__option
  doc: "\e[00;04mdatasets\e[00;01m, --datasets=\e[00;04mdatasets\e[00;00m\nUse this\
    \ option to indicate the number of \e[00;04mdatasets\e[00;00m in your input\e\
    [00;00m\ndata file. Default value is 1."
  type: boolean?
  inputBinding:
    prefix: -D
- id: in_mreplicatesm__bootstrapmreplicatesmuse
  doc: "\e[00;04mreplicates\e[00;01m, --bootstrap=\e[00;04mreplicates\e[00;00m\nUse\
    \ this option to indicate the number of \e[00;04mreplicates\e[00;01m FastME \e\
    [00;00mwill\e[00;00m\ndo for bootstrapping. Default value is 0.\e[00;00m\nOnly\
    \ helpful when the input data file contains sequences alignment(s)."
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_mseedm_seedmseedmuse_option
  doc: "\e[00;04mseed\e[00;01m, --seed=\e[00;04mseed\e[00;00m\nUse this option to\
    \ initialize randomization with \e[00;04mseed\e[00;00m value.\e[00;00m\nOnly helpful\
    \ when bootstrapping."
  type: boolean?
  inputBinding:
    prefix: -z
- id: in_muse_option_you_want
  doc: "\e[00;00m\nUse this option if you want FastME only to compute distance matrix.\e\
    [00;00m\nOnly helpful when the input data file contains sequences alignment(s)."
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_mnumber_digitsmuse_option
  doc: "\e[00;04mnumber of digits\e[00;00m\nUse this option to set the number of digits\
    \ after the dot to use on output.\e[00;00m\nDefault precision is 12."
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_mnumber__nbthreadsmnumber
  doc: "\e[00;04mnumber of threads\e[00;01m, --nb_threads=\e[00;04mnumber of threads\e\
    [00;00m\nUse this option to set the number of threads to use.\e[00;00m\nDefault\
    \ \e[00;04mnumber of threads\e[00;00m is 8."
  type: boolean?
  inputBinding:
    prefix: -T
- id: in_mvaluem__verbosemvaluemsets
  doc: "\e[00;04mvalue\e[00;01m, --verbose=\e[00;04mvalue\e[00;00m\nSets the verbose\
    \ level to \e[00;04mvalue\e[00;00m [0-3].\e[00;00m\nDefault \e[00;04mvalue\e[00;00m\
    \ is 0."
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fastme
