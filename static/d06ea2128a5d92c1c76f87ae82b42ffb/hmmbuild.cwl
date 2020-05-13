class: CommandLineTool
id: hmmbuild.cwl
inputs:
- id: hmm_file_out
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
  doc: ': name the HMM <s>'
  type: string
  inputBinding:
    prefix: -n
- id: o
  doc: ': direct summary output to file <f>, not stdout'
  type: string
  inputBinding:
    prefix: -o
- id: o
  doc: ': resave annotated, possibly modified MSA to file <f>'
  type: string
  inputBinding:
    prefix: -O
- id: amino
  doc: ': input alignment is protein sequence data'
  type: boolean
  inputBinding:
    prefix: --amino
- id: dna
  doc: ': input alignment is DNA sequence data'
  type: boolean
  inputBinding:
    prefix: --dna
- id: rna
  doc: ': input alignment is RNA sequence data'
  type: boolean
  inputBinding:
    prefix: --rna
- id: fast
  doc: ': assign cols w/ >= symfrac residues as consensus  [default]'
  type: boolean
  inputBinding:
    prefix: --fast
- id: hand
  doc: ': manual construction (requires reference annotation)'
  type: boolean
  inputBinding:
    prefix: --hand
- id: sym_frac
  doc: ': sets sym fraction controlling --fast construction  [0.5]'
  type: string
  inputBinding:
    prefix: --symfrac
- id: frag_thresh
  doc: ': if L <= x*alen, tag sequence as a fragment  [0.5]'
  type: string
  inputBinding:
    prefix: --fragthresh
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
- id: w_blosum
  doc: ': Henikoff simple filter weights'
  type: boolean
  inputBinding:
    prefix: --wblosum
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
- id: ec_lust
  doc: ': eff seq # is # of single linkage clusters'
  type: boolean
  inputBinding:
    prefix: --eclust
- id: en_one
  doc: ': no effective seq # weighting: just use nseq'
  type: boolean
  inputBinding:
    prefix: --enone
- id: e_set
  doc: ': set eff seq # for all models to <x>'
  type: string
  inputBinding:
    prefix: --eset
- id: ere
  doc: ': for --eent: set minimum rel entropy/position to <x>'
  type: string
  inputBinding:
    prefix: --ere
- id: e_sigma
  doc: ': for --eent: set sigma param to <x>  [45.0]'
  type: string
  inputBinding:
    prefix: --esigma
- id: eid
  doc: ': for --eclust: set fractional identity cutoff to <x>  [0.62]'
  type: string
  inputBinding:
    prefix: --eid
- id: p_none
  doc: ": don't use any prior; parameters are frequencies"
  type: boolean
  inputBinding:
    prefix: --pnone
- id: pla_place
  doc: ': use a Laplace +1 prior'
  type: boolean
  inputBinding:
    prefix: --plaplace
- id: single_mx
  doc: ': use substitution score matrix for single-sequence inputs'
  type: boolean
  inputBinding:
    prefix: --singlemx
- id: popen
  doc: ': gap open probability (with --singlemx)'
  type: string
  inputBinding:
    prefix: --popen
- id: p_extend
  doc: ': gap extend probability (with --singlemx)'
  type: string
  inputBinding:
    prefix: --pextend
- id: mx
  doc: ': substitution score matrix (built-in matrices, with --singlemx)'
  type: string
  inputBinding:
    prefix: --mx
- id: mx_file
  doc: ': read substitution score matrix from file <f> (with --singlemx)'
  type: string
  inputBinding:
    prefix: --mxfile
- id: eml
  doc: ': length of sequences for MSV Gumbel mu fit  [200]  (n>0)'
  type: string
  inputBinding:
    prefix: --EmL
- id: emn
  doc: ': number of sequences for MSV Gumbel mu fit  [200]  (n>0)'
  type: string
  inputBinding:
    prefix: --EmN
- id: evl
  doc: ': length of sequences for Viterbi Gumbel mu fit  [200]  (n>0)'
  type: string
  inputBinding:
    prefix: --EvL
- id: evn
  doc: ': number of sequences for Viterbi Gumbel mu fit  [200]  (n>0)'
  type: string
  inputBinding:
    prefix: --EvN
- id: efl
  doc: ': length of sequences for Forward exp tail tau fit  [100]  (n>0)'
  type: string
  inputBinding:
    prefix: --EfL
- id: efn
  doc: ': number of sequences for Forward exp tail tau fit  [200]  (n>0)'
  type: string
  inputBinding:
    prefix: --EfN
- id: eft
  doc: ': tail mass for Forward exponential tail tau fit  [0.04]  (0<x<1)'
  type: string
  inputBinding:
    prefix: --Eft
- id: cpu
  doc: ': number of parallel CPU workers for multithreads'
  type: string
  inputBinding:
    prefix: --cpu
- id: stall
  doc: ': arrest after start: for attaching debugger to process'
  type: boolean
  inputBinding:
    prefix: --stall
- id: in_format
  doc: ': assert input alifile is in format <s> (no autodetect)'
  type: string
  inputBinding:
    prefix: --informat
- id: seed
  doc: ': set RNG seed to <n> (if 0: one-time arbitrary seed)  [42]'
  type: string
  inputBinding:
    prefix: --seed
- id: w_beta
  doc: ': tail mass at which window length is determined'
  type: string
  inputBinding:
    prefix: --w_beta
- id: w_length
  doc: ': window length '
  type: string
  inputBinding:
    prefix: --w_length
- id: max_insert_len
  doc: ': pretend all inserts are length <= <n>'
  type: string
  inputBinding:
    prefix: --maxinsertlen
outputs: []
cwlVersion: v1.1
baseCommand:
- hmmbuild
