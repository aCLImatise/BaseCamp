class: CommandLineTool
id: hmmbuild.cwl
inputs:
- id: in__name_hmm
  doc: ': name the HMM <s>'
  type: string?
  inputBinding:
    prefix: -n
- id: in_direct_summary_output
  doc: ': direct summary output to file <f>, not stdout'
  type: File?
  inputBinding:
    prefix: -o
- id: in_annotated_possibly_modified
  doc: ': resave annotated, possibly modified MSA to file <f>'
  type: File?
  inputBinding:
    prefix: -O
- id: in_amino
  doc: ': input alignment is protein sequence data'
  type: boolean?
  inputBinding:
    prefix: --amino
- id: in_dna
  doc: ': input alignment is DNA sequence data'
  type: boolean?
  inputBinding:
    prefix: --dna
- id: in_rna
  doc: ': input alignment is RNA sequence data'
  type: boolean?
  inputBinding:
    prefix: --rna
- id: in_fast
  doc: ': assign cols w/ >= symfrac residues as consensus  [default]'
  type: boolean?
  inputBinding:
    prefix: --fast
- id: in_hand
  doc: ': manual construction (requires reference annotation)'
  type: boolean?
  inputBinding:
    prefix: --hand
- id: in_sym_frac
  doc: ': sets sym fraction controlling --fast construction  [0.5]'
  type: double?
  inputBinding:
    prefix: --symfrac
- id: in_frag_thresh
  doc: ': if L <= x*alen, tag sequence as a fragment  [0.5]'
  type: double?
  inputBinding:
    prefix: --fragthresh
- id: in_wpb
  doc: ': Henikoff position-based weights  [default]'
  type: boolean?
  inputBinding:
    prefix: --wpb
- id: in_wgs_c
  doc: ': Gerstein/Sonnhammer/Chothia tree weights'
  type: boolean?
  inputBinding:
    prefix: --wgsc
- id: in_w_blosum
  doc: ': Henikoff simple filter weights'
  type: boolean?
  inputBinding:
    prefix: --wblosum
- id: in_w_none
  doc: ": don't do any relative weighting; set all to 1"
  type: boolean?
  inputBinding:
    prefix: --wnone
- id: in_w_given
  doc: ': use weights as given in MSA file'
  type: boolean?
  inputBinding:
    prefix: --wgiven
- id: in_wid
  doc: ': for --wblosum: set identity cutoff  [0.62]  (0<=x<=1)'
  type: double?
  inputBinding:
    prefix: --wid
- id: in_e_ent
  doc: ': adjust eff seq # to achieve relative entropy target  [default]'
  type: boolean?
  inputBinding:
    prefix: --eent
- id: in_ec_lust
  doc: ': eff seq # is # of single linkage clusters'
  type: boolean?
  inputBinding:
    prefix: --eclust
- id: in_en_one
  doc: ': no effective seq # weighting: just use nseq'
  type: boolean?
  inputBinding:
    prefix: --enone
- id: in_e_set
  doc: ': set eff seq # for all models to <x>'
  type: string?
  inputBinding:
    prefix: --eset
- id: in_ere
  doc: ': for --eent: set minimum rel entropy/position to <x>'
  type: string?
  inputBinding:
    prefix: --ere
- id: in_e_sigma
  doc: ': for --eent: set sigma param to <x>  [45.0]'
  type: double?
  inputBinding:
    prefix: --esigma
- id: in_eid
  doc: ': for --eclust: set fractional identity cutoff to <x>  [0.62]'
  type: double?
  inputBinding:
    prefix: --eid
- id: in_p_none
  doc: ": don't use any prior; parameters are frequencies"
  type: boolean?
  inputBinding:
    prefix: --pnone
- id: in_pla_place
  doc: ': use a Laplace +1 prior'
  type: boolean?
  inputBinding:
    prefix: --plaplace
- id: in_single_mx
  doc: ': use substitution score matrix for single-sequence inputs'
  type: boolean?
  inputBinding:
    prefix: --singlemx
- id: in_mx
  doc: ': substitution score matrix (built-in matrices, with --singlemx)'
  type: string?
  inputBinding:
    prefix: --mx
- id: in_mx_file
  doc: ': read substitution score matrix from file <f> (with --singlemx)'
  type: File?
  inputBinding:
    prefix: --mxfile
- id: in_popen
  doc: ': force gap open prob. (w/ --singlemx, aa default 0.02, nt 0.031)'
  type: double?
  inputBinding:
    prefix: --popen
- id: in_p_extend
  doc: ': force gap extend prob. (w/ --singlemx, aa default 0.4, nt 0.75)'
  type: double?
  inputBinding:
    prefix: --pextend
- id: in_eml
  doc: ': length of sequences for MSV Gumbel mu fit  [200]  (n>0)'
  type: long?
  inputBinding:
    prefix: --EmL
- id: in_emn
  doc: ': number of sequences for MSV Gumbel mu fit  [200]  (n>0)'
  type: long?
  inputBinding:
    prefix: --EmN
- id: in_evl
  doc: ': length of sequences for Viterbi Gumbel mu fit  [200]  (n>0)'
  type: long?
  inputBinding:
    prefix: --EvL
- id: in_evn
  doc: ': number of sequences for Viterbi Gumbel mu fit  [200]  (n>0)'
  type: long?
  inputBinding:
    prefix: --EvN
- id: in_efl
  doc: ': length of sequences for Forward exp tail tau fit  [100]  (n>0)'
  type: long?
  inputBinding:
    prefix: --EfL
- id: in_efn
  doc: ': number of sequences for Forward exp tail tau fit  [200]  (n>0)'
  type: long?
  inputBinding:
    prefix: --EfN
- id: in_eft
  doc: ': tail mass for Forward exponential tail tau fit  [0.04]  (0<x<1)'
  type: double?
  inputBinding:
    prefix: --Eft
- id: in_cpu
  doc: ': number of parallel CPU workers for multithreads  [2]'
  type: long?
  inputBinding:
    prefix: --cpu
- id: in_stall
  doc: ': arrest after start: for attaching debugger to process'
  type: boolean?
  inputBinding:
    prefix: --stall
- id: in_in_format
  doc: ': assert input alifile is in format <s> (no autodetect)'
  type: string?
  inputBinding:
    prefix: --informat
- id: in_seed
  doc: ': set RNG seed to <n> (if 0: one-time arbitrary seed)  [42]'
  type: long?
  inputBinding:
    prefix: --seed
- id: in_w_beta
  doc: ': tail mass at which window length is determined'
  type: long?
  inputBinding:
    prefix: --w_beta
- id: in_w_length
  doc: ': window length'
  type: long?
  inputBinding:
    prefix: --w_length
- id: in_max_insert_len
  doc: ': pretend all inserts are length <= <n>'
  type: long?
  inputBinding:
    prefix: --maxinsertlen
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -options
- id: in_hmm_file_out
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
  type: File?
  outputBinding:
    glob: $(inputs.in_direct_summary_output)
hints: []
cwlVersion: v1.1
baseCommand:
- hmmbuild
