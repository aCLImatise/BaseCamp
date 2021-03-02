class: CommandLineTool
id: ssu_cmscore.cwl
inputs:
- id: in__generate_sequences
  doc: ': generate <n> sequences  [10]'
  type: long?
  inputBinding:
    prefix: -n
- id: in_align_locally_model
  doc: ': align locally w.r.t. the model'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_set_rng_seed
  doc: ': set RNG seed to <n> (if 0: one-time arbitrary seed)  [181]'
  type: long?
  inputBinding:
    prefix: -s
- id: in_print_individual_timings
  doc: ': print individual timings & scores, not just a summary'
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_sub
  doc: ': build sub CM for columns b/t HMM predicted start/end points'
  type: boolean?
  inputBinding:
    prefix: --sub
- id: in_mx_size
  doc: ': set maximum allowable DP matrix size to <x> Mb  [2048.0]'
  type: long?
  inputBinding:
    prefix: --mxsize
- id: in_devhelp
  doc: ': show list of undocumented developer options'
  type: boolean?
  inputBinding:
    prefix: --devhelp
- id: in_emit
  doc: ': emit <n> sequences from each CM  [default]'
  type: boolean?
  inputBinding:
    prefix: --emit
- id: in_random
  doc: ': emit <n> random seq from cm->null model'
  type: boolean?
  inputBinding:
    prefix: --random
- id: in_in_file
  doc: ': read sequences to align from file <s>'
  type: File?
  inputBinding:
    prefix: --infile
- id: in_outfile
  doc: ': save seqs to file <s> in FASTA format'
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_lm_in
  doc: ': with --random, specify minimum length of random sequences as <n>'
  type: long?
  inputBinding:
    prefix: --Lmin
- id: in_lmax
  doc: ': with --random, specify maximum length of random sequences as <n>'
  type: long?
  inputBinding:
    prefix: --Lmax
- id: in_pad
  doc: ': with --emit, pad (W-L) residues on each side of emitted seqs'
  type: boolean?
  inputBinding:
    prefix: --pad
- id: in_h_banded
  doc: ': compare d&c optimal CYK versus HMM banded CYK  [default]'
  type: boolean?
  inputBinding:
    prefix: --hbanded
- id: in_tau
  doc: ': set tail loss prob for --hbanded to <x>  [1E-7]  (0<x<1)'
  type: double?
  inputBinding:
    prefix: --tau
- id: in_aln_two_bands
  doc: ': w/--hbanded derive HMM bands w/o scanning Forward/Backward'
  type: boolean?
  inputBinding:
    prefix: --aln2bands
- id: in_h_safe
  doc: ': realign (non-banded) seqs with HMM banded CYK score < 0 bits'
  type: boolean?
  inputBinding:
    prefix: --hsafe
- id: in_non_banded
  doc: ': compare divide and conquer (d&c) versus standard non-banded CYK'
  type: boolean?
  inputBinding:
    prefix: --nonbanded
- id: in_score_only
  doc: ': with --nonbanded, do only score, save memory'
  type: boolean?
  inputBinding:
    prefix: --scoreonly
- id: in_viterbi
  doc: ': align to a CM Plan 9 HMM with the Viterbi algorithm'
  type: boolean?
  inputBinding:
    prefix: --viterbi
- id: in_search
  doc: ': run algorithms in scanning search mode'
  type: boolean?
  inputBinding:
    prefix: --search
- id: in_inside
  doc: ': with --search, use Inside instead of CYK'
  type: boolean?
  inputBinding:
    prefix: --inside
- id: in_forward
  doc: ': with --search, use HMM  Forward instead of CYK'
  type: boolean?
  inputBinding:
    prefix: --forward
- id: in_taus
  doc: ': set initial (stage 2) tail loss prob to 1E-<x> for HMM banding'
  type: long?
  inputBinding:
    prefix: --taus
- id: in_tau_e
  doc: ': set final   (stage N) tail loss prob to 1E-<x> for HMM banding'
  type: long?
  inputBinding:
    prefix: --taue
- id: in_t_file
  doc: ': dump parsetrees to file <f>'
  type: File?
  inputBinding:
    prefix: --tfile
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -options
- id: in_cm_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ssu-cmscore
