class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fastme.cwl
inputs:
- id: minput_data_filem
  doc: "\e[00;04minput data file\e[00;01m, --input_data=\e[00;04minput data file\e\
    [00;00m The \e[00;04minput data file\e[00;00m contains sequence alignment(s)\e\
    [00;00m or a distance matrix(ces)."
  type: boolean
  inputBinding:
    prefix: -i
- id: minput_user_tree
  doc: "\e[00;04minput user tree file\e[00;01m, --user_tree=\e[00;04minput user tree\
    \ file\e[00;00m \e[00;01mFastME \e[00;00mmay use an existing topology available\
    \ in the \e[00;04minput user tree file\e[00;00m which corresponds to the input\
    \ dataset."
  type: boolean
  inputBinding:
    prefix: -u
- id: moutput_tree_filem
  doc: "\e[00;04moutput tree file\e[00;01m, --output_tree=\e[00;04moutput tree file\e\
    [00;00m \e[00;01mFastME \e[00;00mwill write the infered tree into the \e[00;04moutput\
    \ tree file\e[00;00m."
  type: boolean
  inputBinding:
    prefix: -o
- id: moutput_matrix_filem
  doc: "\e[00;04moutput matrix file\e[00;01m, --output_matrix=\e[00;04moutput matrix\
    \ file\e[00;00m Use this option if you want \e[00;01mFastME \e[00;00mto write\
    \ the distances\e[00;00m matrix computed from the input alignment in the \e[00;04moutput\
    \ matrix file\e[00;00m."
  type: boolean
  inputBinding:
    prefix: -O
- id: moutput_information_filem
  doc: "\e[00;04moutput information file\e[00;01m, --output_info=\e[00;04moutput information\
    \ file\e[00;00m Use this option if you want \e[00;01mFastME \e[00;00mto write\
    \ information\e[00;00m about its execution in the \e[00;04moutput information\
    \ file\e[00;00m."
  type: boolean
  inputBinding:
    prefix: -I
- id: moutput_bootstrap_trees
  doc: "\e[00;04moutput bootstrap trees file\e[00;01m, --output_boot=\e[00;04moutput\
    \ bootstrap trees file\e[00;00m Use this option if you want \e[00;01mFastME \e\
    [00;00mto write bootstrap trees\e[00;00m in the \e[00;04mbootstrap trees file\e\
    [00;00m."
  type: boolean
  inputBinding:
    prefix: -B
- id: mmethodm__methodmmethodm
  doc: "\e[00;04mmethod\e[00;01m, --method=\e[00;04mmethod\e[00;00m \e[00;01mFastME\
    \ \e[00;00mcomputes a tree using a distance algorithm.\e[00;00m You may choose\
    \ this \e[00;04mmethod\e[00;00m from:\e[00;00m \e[00;01mTaxAdd_(B)alME\e[00;00m,\
    \ \e[00;01mTaxAdd_(O)LSME\e[00;00m, \e[00;01mB(I)ONJ\e[00;00m (default),\e[00;00m\
    \ \e[00;01m(N)J\e[00;00m or \e[00;01m(U)NJ\e[00;00m."
  type: boolean
  inputBinding:
    prefix: -m
- id: can_choosen_mry
  doc: "\e[00;04m[model]\e[00;01m, --dna=\e[00;04m[model]\e[00;00m Use this option\
    \ if your input data file contains DNA sequences alignment(s).\e[00;00m You may\
    \ also indicate the evolutionary \e[00;04m[model]\e[00;00m which can be choosen\
    \ from:\e[00;00m \e[00;01m(p)-distance\e[00;00m, \e[00;01mR(Y) symmetric\e[00;00m,\
    \ \e[00;01m(R)Y\e[00;00m, \e[00;01m(J)C69\e[00;00m, \e[00;01m(K)2P\e[00;00m, \e\
    [00;01mF8(1)\e[00;00m, \e[00;01mF8(4)\e[00;00m (default), \e[00;01m(T)N93\e[00;00m,\
    \ \e[00;01m(L)ogDet\e[00;00m."
  type: boolean
  inputBinding:
    prefix: -d
- id: mpdistancem_mf_mf
  doc: "\e[00;04m[model]\e[00;01m, --protein=\e[00;04m[model]\e[00;00m Use this option\
    \ if your input data file contains protein sequences alignment(s).\e[00;00m You\
    \ may also indicate the evolutionary \e[00;04m[model]\e[00;00m which can be choosen\
    \ from:\e[00;00m \e[00;01m(p)-distance\e[00;00m, \e[00;01m(F)81 like\e[00;00m,\
    \ \e[00;01m(L)G\e[00;00m (default), \e[00;01m(W)AG\e[00;00m, \e[00;01m(J)TT\e\
    [00;00m, \e[00;01mDay(h)off\e[00;00m, \e[00;00m \e[00;01m(D)CMut\e[00;00m, \e\
    [00;01m(C)pRev\e[00;00m, \e[00;01m(M)tREV\e[00;00m, \e[00;01m(R)tREV\e[00;00m,\
    \ \e[00;01mHIV(b)\e[00;00m, \e[00;01mH(I)Vw\e[00;00m or \e[00;01mFL(U)\e[00;00m."
  type: boolean
  inputBinding:
    prefix: -p
- id: m_default_value
  doc: "\e[00;04m[alpha]\e[00;01m, --gamma=\e[00;04m[alpha]\e[00;00m Use this option\
    \ if you wish to have gamma distributed rates across sites.\e[00;00m By default,\
    \ FastME runs with no gamma variation.\e[00;00m If running FastME with gamma distributed\
    \ rates across sites, the \e[00;04m[alpha]\e[00;00m default value is 1.0.\e[00;00m\
    \ Only helpful when the input data file contains sequences alignment(s)."
  type: boolean
  inputBinding:
    prefix: -g
- id: m_type_fromm
  doc: "\e[00;04m[NNI]\e[00;01m, --nni=\e[00;04m[NNI]\e[00;00m Use this option to\
    \ do \e[00;04m[NNI]\e[00;00m tree topology improvement.\e[00;00m You may choose\
    \ the \e[00;04m[NNI]\e[00;00m type from:\e[00;00m \e[00;01mNNI_(B)alME\e[00;00m\
    \ (default) or \e[00;01mNNI_(O)LS\e[00;00m."
  type: boolean
  inputBinding:
    prefix: -n
- id: mbranchm__use
  doc: "\e[00;04mbranch\e[00;01m, --branch_length=\e[00;04mbranch\e[00;00m Use this\
    \ option to indicate the \e[00;04mbranch\e[00;00m length to assign to the tree.\e\
    [00;00m You may choose the \e[00;04mbranch\e[00;00m length from: \e[00;01m(B)alLS\e\
    [00;00m (default), \e[00;01m(O)LS\e[00;00m or \e[00;01m(n)one\e[00;00m. \e[00;01m(n)one\
    \ \e[00;00mis only available with BIONJ, NJ or UNJ.\e[00;00m Only helpful when\
    \ not improving the tree topology (no NNI nor SPR)."
  type: boolean
  inputBinding:
    prefix: -w
- id: mdatasetsm__datasetsmdatasetsm
  doc: "\e[00;04mdatasets\e[00;01m, --datasets=\e[00;04mdatasets\e[00;00m Use this\
    \ option to indicate the number of \e[00;04mdatasets\e[00;00m in your input\e\
    [00;00m data file. Default value is 1."
  type: boolean
  inputBinding:
    prefix: -D
- id: mreplicatesm__bootstrapmreplicatesm
  doc: "\e[00;04mreplicates\e[00;01m, --bootstrap=\e[00;04mreplicates\e[00;00m Use\
    \ this option to indicate the number of \e[00;04mreplicates\e[00;01m FastME \e\
    [00;00mwill\e[00;00m do for bootstrapping. Default value is 0.\e[00;00m Only helpful\
    \ when the input data file contains sequences alignment(s)."
  type: boolean
  inputBinding:
    prefix: -b
- id: mseedm__seedmseedm
  doc: "\e[00;04mseed\e[00;01m, --seed=\e[00;04mseed\e[00;00m Use this option to initialize\
    \ randomization with \e[00;04mseed\e[00;00m value.\e[00;00m Only helpful when\
    \ bootstrapping."
  type: boolean
  inputBinding:
    prefix: -z
- id: use_option_want
  doc: "\e[00;00m Use this option if you want FastME only to compute distance matrix.\e\
    [00;00m Only helpful when the input data file contains sequences alignment(s)."
  type: boolean
  inputBinding:
    prefix: -c
- id: mnumber_digitsm_use
  doc: "\e[00;04mnumber of digits\e[00;00m Use this option to set the number of digits\
    \ after the dot to use on output.\e[00;00m Default precision is 12."
  type: boolean
  inputBinding:
    prefix: -f
- id: mnumber_threadsm_nbthreadsmnumber
  doc: "\e[00;04mnumber of threads\e[00;01m, --nb_threads=\e[00;04mnumber of threads\e\
    [00;00m Use this option to set the number of threads to use.\e[00;00m Default\
    \ \e[00;04mnumber of threads\e[00;00m is 8."
  type: boolean
  inputBinding:
    prefix: -T
- id: m_default_mvaluem
  doc: "\e[00;04mvalue\e[00;01m, --verbose=\e[00;04mvalue\e[00;00m Sets the verbose\
    \ level to \e[00;04mvalue\e[00;00m [0-3].\e[00;00m Default \e[00;04mvalue\e[00;00m\
    \ is 0."
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- fastme
