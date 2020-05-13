class: CommandLineTool
id: igphyml.cwl
inputs:
- id: u
  doc: "\e[00;04muser_tree_file\e[00;00m (only if -i used) \e[00;04muser_tree_file\e\
    [00;00m : starting tree filename. The tree must be in Newick format."
  type: boolean
  inputBinding:
    prefix: -u
- id: m
  doc: "\e[00;04mmodel\e[00;00m \e[00;01m(required) \e[00;04mmodel\e[00;00m : substitution\
    \ model name. \e[00;00mCodon\e[00;00m based models: \e[00;04mHLP\e[00;00m (HLP19)\
    \ | \e[00;04mGY\e[00;00m | \e[00;04mHLP17\e[00;00m \e[00;00mUse GY for quick tree\
    \ construction. HLP for B cell specific features (see docs)."
  type: boolean
  inputBinding:
    prefix: -m
- id: t
  doc: "\e[00;04mts/tv_ratio\e[00;00m = [e|ce|i|ci|>0] Set the transition/transversion\
    \ ratio."
  type: boolean
  inputBinding:
    prefix: -t
- id: omega
  doc: "\e[00;04momega\e[00;00m = [e|ce|i|ci|>0] Set number/value of omegas to estimate.\
    \ First value (0) corresponds to FWRs, second (1) to CDRs. May specify multiple\
    \ omegas if partition file(s) specified."
  type: boolean
  inputBinding:
    prefix: --omega
- id: f
  doc: "(or --frequencies) \e[00;04mempirical\e[00;01m, \e[00;04mmodel\e[00;00m, \e\
    [00;04moptimized\e[00;00m, \e[00;04mfT,fC,fA,fG\e[00;00m, \e[00;04mfT1,fC1,fA1,fG1,fT2,fC2,fA2,fG2,fT3,fC3,fA3,fG3\e\
    [00;00m \e[00;01mor\e[00;00m \e[00;04mfC1,fC2, ... ,fC64\e[00;00m \e[00;04mempirical\e\
    [00;00m: (GY default) the equilibrium codon frequencies are estimated by counting\
    \ the occurence of bases or codons in the alignment. \e[00;04moptimize\e[00;00m\
    \ : (HLP17 default) codon frequencies are estimated using maximum likelihood"
  type: boolean
  inputBinding:
    prefix: -f
- id: o
  doc: "(or --optimize) \e[00;04mparams\e[00;00m This option focuses on specific parameter\
    \ optimisation. \e[00;04mparams\e[00;00m = tlr : (default) tree topology (t),\
    \ branch length (l) and rate parameters (r) are optimised. \e[00;04mparams\e[00;00m\
    \ = tl  : tree topology and branch length are optimised. \e[00;04mparams\e[00;00m\
    \ = lr  : branch length and rate parameters are optimised. \e[00;04mparams\e[00;00m\
    \ = l   : branch length are optimised. \e[00;04mparams\e[00;00m = r   : rate parameters\
    \ are optimised. \e[00;04mparams\e[00;00m = n   : no parameter is optimised."
  type: boolean
  inputBinding:
    prefix: -o
- id: s
  doc: "(or --search) \e[00;04mmove\e[00;00m Tree topology search operation option.\
    \ Can be either \e[00;04mNNI\e[00;00m (default, fast) or \e[00;04mSPR\e[00;00m\
    \ (thorough, slow)."
  type: boolean
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- igphyml
