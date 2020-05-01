#!/usr/bin/env cwl-runner

baseCommand:
- cmbuild
class: CommandLineTool
cwlVersion: v1.0
id: cmbuild
inputs:
- doc: ''
  id: cm_file_out
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: msa_file
  inputBinding:
    position: 1
  type: string
- doc: ': name the CM(s) <s>, (only if single aln in file)'
  id: n
  inputBinding:
    prefix: -n
  type: string
- doc: ': force; allow overwriting of <cmfile_out>'
  id: f
  inputBinding:
    prefix: -F
  type: boolean
- doc: ': direct summary output to file <f>, not stdout'
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ': resave consensus/insert column annotated MSA to file <f>'
  id: o
  inputBinding:
    prefix: -O
  type: string
- doc: ': show list of otherwise hidden developer/expert options'
  id: devhelp
  inputBinding:
    prefix: --devhelp
  type: boolean
- doc: ': assign cols w/ >= symfrac residues as consensus'
  id: fast
  inputBinding:
    prefix: --fast
  type: boolean
- doc: ': use reference coordinate annotation to specify consensus'
  id: hand
  inputBinding:
    prefix: --hand
  type: boolean
- doc: ': fraction of non-gaps to require in a consensus column [0..1]'
  id: sym_frac
  inputBinding:
    prefix: --symfrac
  type: string
- doc: ': ignore secondary structure annotation in input alignment'
  id: noss
  inputBinding:
    prefix: --noss
  type: boolean
- doc: ': use RSEARCH parameterization with RIBOSUM matrix file <f>'
  id: r_search
  inputBinding:
    prefix: --rsearch
  type: string
- doc: ': read null (random sequence) model from file <f>'
  id: 'null'
  inputBinding:
    prefix: --null
  type: string
- doc: ': read priors from file <f>'
  id: prior
  inputBinding:
    prefix: --prior
  type: string
- doc: ': Henikoff position-based weights  [default]'
  id: wpb
  inputBinding:
    prefix: --wpb
  type: boolean
- doc: ': Gerstein/Sonnhammer/Chothia tree weights'
  id: wgs_c
  inputBinding:
    prefix: --wgsc
  type: boolean
- doc: ": don't do any relative weighting; set all to 1"
  id: w_none
  inputBinding:
    prefix: --wnone
  type: boolean
- doc: ': use weights as given in MSA file'
  id: w_given
  inputBinding:
    prefix: --wgiven
  type: boolean
- doc: ': Henikoff simple filter weights'
  id: w_blosum
  inputBinding:
    prefix: --wblosum
  type: boolean
- doc: ': for --wblosum: set identity cutoff  [0.62]  (0<=x<=1)'
  id: wid
  inputBinding:
    prefix: --wid
  type: string
- doc: ': adjust eff seq # to achieve relative entropy target  [default]'
  id: e_ent
  inputBinding:
    prefix: --eent
  type: boolean
- doc: ': no effective seq # weighting: just use nseq'
  id: en_one
  inputBinding:
    prefix: --enone
  type: boolean
- doc: ': for --eent: set CM target relative entropy to <x>'
  id: ere
  inputBinding:
    prefix: --ere
  type: string
- doc: ': set eff seq # for all models to <x>'
  id: e_set
  inputBinding:
    prefix: --eset
  type: string
- doc: ': for --eent: set minimum effective sequence number to <x>  [0.1]'
  id: emin_seq
  inputBinding:
    prefix: --eminseq
  type: string
- doc: ': for --eent: set minimum HMM relative entropy to <x>'
  id: e_hmm_re
  inputBinding:
    prefix: --ehmmre
  type: string
- doc: ': for --eent: set sigma param to <x>  [45.0]'
  id: e_sigma
  inputBinding:
    prefix: --esigma
  type: string
- doc: ': for the filter p7 HMM, set minimum rel entropy/posn to <x>'
  id: p7ere
  inputBinding:
    prefix: --p7ere
  type: string
- doc: ': define the filter p7 HMM as the ML p7 HMM'
  id: p7ml
  inputBinding:
    prefix: --p7ml
  type: boolean
- doc: ': number of sampled seqs to use for p7 local MSV calibration  [200]'
  id: emn
  inputBinding:
    prefix: --EmN
  type: string
- doc: ': number of sampled seqs to use for p7 local Vit calibration  [200]'
  id: evn
  inputBinding:
    prefix: --EvN
  type: string
- doc: ': number of sampled seqs to use for p7 local Fwd calibration  [200]'
  id: elf_n
  inputBinding:
    prefix: --ElfN
  type: string
- doc: ': number of sampled seqs to use for p7 glocal Fwd calibration  [200]'
  id: eg_fn
  inputBinding:
    prefix: --EgfN
  type: string
- doc: ': refine input aln w/Expectation-Maximization, save to <f>'
  id: refine
  inputBinding:
    prefix: --refine
  type: string
- doc: ': w/--refine, configure model for local alignment [default: global]'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: ': w/--refine, use Gibbs sampling instead of EM'
  id: gibbs
  inputBinding:
    prefix: --gibbs
  type: boolean
- doc: ': w/--gibbs, set RNG seed to <n> (if 0: one-time arbitrary seed)'
  id: seed
  inputBinding:
    prefix: --seed
  type: string
- doc: ': w/--refine, use CYK instead of optimal accuracy'
  id: cy_k
  inputBinding:
    prefix: --cyk
  type: boolean
- doc: ': w/--refine, do not use truncated alignment algorithm'
  id: not_run_c
  inputBinding:
    prefix: --notrunc
  type: boolean
