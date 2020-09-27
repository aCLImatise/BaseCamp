class: CommandLineTool
id: hmmsim.cwl
inputs:
- id: in_obtain_length_statistics
  doc: ': obtain alignment length statistics too'
  type: boolean
  inputBinding:
    prefix: -a
- id: in_verbose_print_scores
  doc: ': verbose: print scores'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_length_random_target
  doc: ': length of random target seqs  [100]  (n>0)'
  type: long
  inputBinding:
    prefix: -L
- id: in_number_random_target
  doc: ': number of random target seqs  [1000]  (n>0)'
  type: long
  inputBinding:
    prefix: -N
- id: in_direct_output_file
  doc: ': direct output to file <f>, not stdout'
  type: File
  inputBinding:
    prefix: -o
- id: in_a_file
  doc: ': output alignment lengths to file <f>'
  type: File
  inputBinding:
    prefix: --afile
- id: in_e_file
  doc: ': output E vs. E plots to <f> in xy format'
  type: string
  inputBinding:
    prefix: --efile
- id: in_f_file
  doc: ': output filter fraction: # seqs passing P thresh'
  type: string
  inputBinding:
    prefix: --ffile
- id: in_pfile
  doc: ': output P(S>x) plots to <f> in xy format'
  type: string
  inputBinding:
    prefix: --pfile
- id: in_x_file
  doc: ': output bitscores as binary double vector to <f>'
  type: string
  inputBinding:
    prefix: --xfile
- id: in_fs
  doc: ': multihit local alignment  [default]'
  type: boolean
  inputBinding:
    prefix: --fs
- id: in_sw
  doc: ': unihit local alignment'
  type: boolean
  inputBinding:
    prefix: --sw
- id: in_ls
  doc: ': multihit glocal alignment'
  type: boolean
  inputBinding:
    prefix: --ls
- id: in_unihit_glocal_alignment
  doc: ': unihit glocal alignment'
  type: boolean
  inputBinding:
    prefix: --s
- id: in_v_it
  doc: ': score seqs with the Viterbi algorithm  [default]'
  type: boolean
  inputBinding:
    prefix: --vit
- id: in_fwd
  doc: ': score seqs with the Forward algorithm'
  type: boolean
  inputBinding:
    prefix: --fwd
- id: in_hyb
  doc: ': score seqs with the Hybrid algorithm'
  type: boolean
  inputBinding:
    prefix: --hyb
- id: in_msv
  doc: ': score seqs with the MSV algorithm'
  type: boolean
  inputBinding:
    prefix: --msv
- id: in_fast
  doc: ': use the optimized versions of the above'
  type: boolean
  inputBinding:
    prefix: --fast
- id: in_tm_in
  doc: ': set lower bound tail mass for fwd,island  [0.02]'
  type: double
  inputBinding:
    prefix: --tmin
- id: in_tmax
  doc: ': set lower bound tail mass for fwd,island  [0.02]'
  type: double
  inputBinding:
    prefix: --tmax
- id: in_t_points
  doc: ': set number of tail probs to try  [1]'
  type: long
  inputBinding:
    prefix: --tpoints
- id: in_t_linear
  doc: ': use linear not log spacing of tail probs'
  type: boolean
  inputBinding:
    prefix: --tlinear
- id: in_eml
  doc: ': length of sequences for MSV Gumbel mu fit  [200]  (n>0)'
  type: long
  inputBinding:
    prefix: --EmL
- id: in_emn
  doc: ': number of sequences for MSV Gumbel mu fit  [200]  (n>0)'
  type: long
  inputBinding:
    prefix: --EmN
- id: in_evl
  doc: ': length of sequences for Viterbi Gumbel mu fit  [200]  (n>0)'
  type: long
  inputBinding:
    prefix: --EvL
- id: in_evn
  doc: ': number of sequences for Viterbi Gumbel mu fit  [200]  (n>0)'
  type: long
  inputBinding:
    prefix: --EvN
- id: in_efl
  doc: ': length of sequences for Forward exp tail tau fit  [100]  (n>0)'
  type: long
  inputBinding:
    prefix: --EfL
- id: in_efn
  doc: ': number of sequences for Forward exp tail tau fit  [200]  (n>0)'
  type: long
  inputBinding:
    prefix: --EfN
- id: in_eft
  doc: ': tail mass for Forward exponential tail tau fit  [0.04]  (0<x<1)'
  type: double
  inputBinding:
    prefix: --Eft
- id: in_stall
  doc: ': arrest after start: for debugging MPI under gdb'
  type: boolean
  inputBinding:
    prefix: --stall
- id: in_seed
  doc: ': set random number seed to <n>  [0]'
  type: long
  inputBinding:
    prefix: --seed
- id: in_bg_flat
  doc: ': set uniform background frequencies'
  type: boolean
  inputBinding:
    prefix: --bgflat
- id: in_bg_comp
  doc: ": set bg frequencies to model's average composition"
  type: boolean
  inputBinding:
    prefix: --bgcomp
- id: in_x_no_length_model
  doc: ': turn the H3 length model off'
  type: boolean
  inputBinding:
    prefix: --x-no-lengthmodel
- id: in_nu
  doc: ': set nu parameter (# expected HSPs) for GMSV  [2.0]'
  type: double
  inputBinding:
    prefix: --nu
- id: in_p_thresh
  doc: ': set P-value threshold for --ffile  [0.02]'
  type: double
  inputBinding:
    prefix: --pthresh
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: in_hmm_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_direct_output_file
  doc: ': direct output to file <f>, not stdout'
  type: File
  outputBinding:
    glob: $(inputs.in_direct_output_file)
- id: out_a_file
  doc: ': output alignment lengths to file <f>'
  type: File
  outputBinding:
    glob: $(inputs.in_a_file)
cwlVersion: v1.1
baseCommand:
- hmmsim
