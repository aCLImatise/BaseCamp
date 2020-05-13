class: CommandLineTool
id: cmbuild.cwl
inputs:
- id: cm_file_out
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: msa_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: n
  doc: ': name the CM(s) <s>, (only if single aln in file)'
  type: string
  inputBinding:
    prefix: -n
- id: f
  doc: ': force; allow overwriting of <cmfile_out>'
  type: boolean
  inputBinding:
    prefix: -F
- id: o
  doc: ': direct summary output to file <f>, not stdout'
  type: string
  inputBinding:
    prefix: -o
- id: o
  doc: ': resave consensus/insert column annotated MSA to file <f>'
  type: string
  inputBinding:
    prefix: -O
- id: devhelp
  doc: ': show list of otherwise hidden developer/expert options'
  type: boolean
  inputBinding:
    prefix: --devhelp
- id: fast
  doc: ': assign cols w/ >= symfrac residues as consensus'
  type: boolean
  inputBinding:
    prefix: --fast
- id: hand
  doc: ': use reference coordinate annotation to specify consensus'
  type: boolean
  inputBinding:
    prefix: --hand
- id: sym_frac
  doc: ': fraction of non-gaps to require in a consensus column [0..1]'
  type: string
  inputBinding:
    prefix: --symfrac
- id: noss
  doc: ': ignore secondary structure annotation in input alignment'
  type: boolean
  inputBinding:
    prefix: --noss
- id: r_search
  doc: ': use RSEARCH parameterization with RIBOSUM matrix file <f>'
  type: string
  inputBinding:
    prefix: --rsearch
- id: 'null'
  doc: ': read null (random sequence) model from file <f>'
  type: string
  inputBinding:
    prefix: --null
- id: prior
  doc: ': read priors from file <f>'
  type: string
  inputBinding:
    prefix: --prior
- id: wpb
  doc: ': Henikoff position-based weights  [default]'
  type: boolean
  inputBinding:
    prefix: --wpb
- id: wgs_c
  doc: ': Gerstein/Sonnhammer/Chothia tree weights'
  type: boolean
  inputBinding:
    prefix: --wgsc
- id: w_none
  doc: ": don't do any relative weighting; set all to 1"
  type: boolean
  inputBinding:
    prefix: --wnone
- id: w_given
  doc: ': use weights as given in MSA file'
  type: boolean
  inputBinding:
    prefix: --wgiven
- id: w_blosum
  doc: ': Henikoff simple filter weights'
  type: boolean
  inputBinding:
    prefix: --wblosum
- id: wid
  doc: ': for --wblosum: set identity cutoff  [0.62]  (0<=x<=1)'
  type: string
  inputBinding:
    prefix: --wid
- id: e_ent
  doc: ': adjust eff seq # to achieve relative entropy target  [default]'
  type: boolean
  inputBinding:
    prefix: --eent
- id: en_one
  doc: ': no effective seq # weighting: just use nseq'
  type: boolean
  inputBinding:
    prefix: --enone
- id: ere
  doc: ': for --eent: set CM target relative entropy to <x>'
  type: string
  inputBinding:
    prefix: --ere
- id: e_set
  doc: ': set eff seq # for all models to <x>'
  type: string
  inputBinding:
    prefix: --eset
- id: emin_seq
  doc: ': for --eent: set minimum effective sequence number to <x>  [0.1]'
  type: string
  inputBinding:
    prefix: --eminseq
- id: e_hmm_re
  doc: ': for --eent: set minimum HMM relative entropy to <x>'
  type: string
  inputBinding:
    prefix: --ehmmre
- id: e_sigma
  doc: ': for --eent: set sigma param to <x>  [45.0]'
  type: string
  inputBinding:
    prefix: --esigma
- id: p7ere
  doc: ': for the filter p7 HMM, set minimum rel entropy/posn to <x>'
  type: string
  inputBinding:
    prefix: --p7ere
- id: p7ml
  doc: ': define the filter p7 HMM as the ML p7 HMM'
  type: boolean
  inputBinding:
    prefix: --p7ml
- id: emn
  doc: ': number of sampled seqs to use for p7 local MSV calibration  [200]'
  type: string
  inputBinding:
    prefix: --EmN
- id: evn
  doc: ': number of sampled seqs to use for p7 local Vit calibration  [200]'
  type: string
  inputBinding:
    prefix: --EvN
- id: elf_n
  doc: ': number of sampled seqs to use for p7 local Fwd calibration  [200]'
  type: string
  inputBinding:
    prefix: --ElfN
- id: eg_fn
  doc: ': number of sampled seqs to use for p7 glocal Fwd calibration  [200]'
  type: string
  inputBinding:
    prefix: --EgfN
- id: refine
  doc: ': refine input aln w/Expectation-Maximization, save to <f>'
  type: string
  inputBinding:
    prefix: --refine
- id: l
  doc: ': w/--refine, configure model for local alignment [default: global]'
  type: boolean
  inputBinding:
    prefix: -l
- id: gibbs
  doc: ': w/--refine, use Gibbs sampling instead of EM'
  type: boolean
  inputBinding:
    prefix: --gibbs
- id: seed
  doc: ': w/--gibbs, set RNG seed to <n> (if 0: one-time arbitrary seed)'
  type: string
  inputBinding:
    prefix: --seed
- id: cy_k
  doc: ': w/--refine, use CYK instead of optimal accuracy'
  type: boolean
  inputBinding:
    prefix: --cyk
- id: not_run_c
  doc: ': w/--refine, do not use truncated alignment algorithm'
  type: boolean
  inputBinding:
    prefix: --notrunc
outputs: []
cwlVersion: v1.1
baseCommand:
- cmbuild
