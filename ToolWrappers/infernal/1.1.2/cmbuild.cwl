class: CommandLineTool
id: cmbuild.cwl
inputs:
- id: in_name_cms_s
  doc: ': name the CM(s) <s>, (only if single aln in file)'
  type: File
  inputBinding:
    prefix: -n
- id: in_force_allow_overwriting
  doc: ': force; allow overwriting of <cmfile_out>'
  type: boolean
  inputBinding:
    prefix: -F
- id: in_direct_summary_output
  doc: ': direct summary output to file <f>, not stdout'
  type: File
  inputBinding:
    prefix: -o
- id: in_resave_consensusinsert_column
  doc: ': resave consensus/insert column annotated MSA to file <f>'
  type: File
  inputBinding:
    prefix: -O
- id: in_devhelp
  doc: ': show list of otherwise hidden developer/expert options'
  type: boolean
  inputBinding:
    prefix: --devhelp
- id: in_fast
  doc: ': assign cols w/ >= symfrac residues as consensus'
  type: boolean
  inputBinding:
    prefix: --fast
- id: in_hand
  doc: ': use reference coordinate annotation to specify consensus'
  type: boolean
  inputBinding:
    prefix: --hand
- id: in_sym_frac
  doc: ': fraction of non-gaps to require in a consensus column [0..1]'
  type: double
  inputBinding:
    prefix: --symfrac
- id: in_noss
  doc: ': ignore secondary structure annotation in input alignment'
  type: boolean
  inputBinding:
    prefix: --noss
- id: in_r_search
  doc: ': use RSEARCH parameterization with RIBOSUM matrix file <f>'
  type: File
  inputBinding:
    prefix: --rsearch
- id: in_null
  doc: ': read null (random sequence) model from file <f>'
  type: File
  inputBinding:
    prefix: --null
- id: in_prior
  doc: ': read priors from file <f>'
  type: File
  inputBinding:
    prefix: --prior
- id: in_wpb
  doc: ': Henikoff position-based weights  [default]'
  type: boolean
  inputBinding:
    prefix: --wpb
- id: in_wgs_c
  doc: ': Gerstein/Sonnhammer/Chothia tree weights'
  type: boolean
  inputBinding:
    prefix: --wgsc
- id: in_w_none
  doc: ": don't do any relative weighting; set all to 1"
  type: boolean
  inputBinding:
    prefix: --wnone
- id: in_w_given
  doc: ': use weights as given in MSA file'
  type: boolean
  inputBinding:
    prefix: --wgiven
- id: in_w_blosum
  doc: ': Henikoff simple filter weights'
  type: boolean
  inputBinding:
    prefix: --wblosum
- id: in_wid
  doc: ': for --wblosum: set identity cutoff  [0.62]  (0<=x<=1)'
  type: double
  inputBinding:
    prefix: --wid
- id: in_e_ent
  doc: ': adjust eff seq # to achieve relative entropy target  [default]'
  type: boolean
  inputBinding:
    prefix: --eent
- id: in_en_one
  doc: ': no effective seq # weighting: just use nseq'
  type: boolean
  inputBinding:
    prefix: --enone
- id: in_ere
  doc: ': for --eent: set CM target relative entropy to <x>'
  type: string
  inputBinding:
    prefix: --ere
- id: in_e_set
  doc: ': set eff seq # for all models to <x>'
  type: string
  inputBinding:
    prefix: --eset
- id: in_emin_seq
  doc: ': for --eent: set minimum effective sequence number to <x>  [0.1]'
  type: long
  inputBinding:
    prefix: --eminseq
- id: in_e_hmm_re
  doc: ': for --eent: set minimum HMM relative entropy to <x>'
  type: string
  inputBinding:
    prefix: --ehmmre
- id: in_e_sigma
  doc: ': for --eent: set sigma param to <x>  [45.0]'
  type: double
  inputBinding:
    prefix: --esigma
- id: in_pse_venere
  doc: ': for the filter p7 HMM, set minimum rel entropy/posn to <x>'
  type: long
  inputBinding:
    prefix: --p7ere
- id: in_p_seven_ml
  doc: ': define the filter p7 HMM as the ML p7 HMM'
  type: boolean
  inputBinding:
    prefix: --p7ml
- id: in_emn
  doc: ': number of sampled seqs to use for p7 local MSV calibration  [200]'
  type: long
  inputBinding:
    prefix: --EmN
- id: in_evn
  doc: ': number of sampled seqs to use for p7 local Vit calibration  [200]'
  type: long
  inputBinding:
    prefix: --EvN
- id: in_elf_n
  doc: ': number of sampled seqs to use for p7 local Fwd calibration  [200]'
  type: long
  inputBinding:
    prefix: --ElfN
- id: in_eg_fn
  doc: ': number of sampled seqs to use for p7 glocal Fwd calibration  [200]'
  type: long
  inputBinding:
    prefix: --EgfN
- id: in_refine
  doc: ': refine input aln w/Expectation-Maximization, save to <f>'
  type: string
  inputBinding:
    prefix: --refine
- id: in_wrefine_configure_model
  doc: ': w/--refine, configure model for local alignment [default: global]'
  type: boolean
  inputBinding:
    prefix: -l
- id: in_gibbs
  doc: ': w/--refine, use Gibbs sampling instead of EM'
  type: boolean
  inputBinding:
    prefix: --gibbs
- id: in_seed
  doc: ': w/--gibbs, set RNG seed to <n> (if 0: one-time arbitrary seed)'
  type: long
  inputBinding:
    prefix: --seed
- id: in_cy_k
  doc: ': w/--refine, use CYK instead of optimal accuracy'
  type: boolean
  inputBinding:
    prefix: --cyk
- id: in_not_run_c
  doc: ': w/--refine, do not use truncated alignment algorithm'
  type: boolean
  inputBinding:
    prefix: --notrunc
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: in_cm_file_out
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_msa_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_direct_summary_output
  doc: ': direct summary output to file <f>, not stdout'
  type: File
  outputBinding:
    glob: $(inputs.in_direct_summary_output)
cwlVersion: v1.1
baseCommand:
- cmbuild
