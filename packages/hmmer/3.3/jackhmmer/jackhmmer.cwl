class: CommandLineTool
id: jackhmmer.cwl
inputs:
- id: in_set_maximum_number
  doc: ': set maximum number of iterations to <n>  [5]  (n>0)'
  type: long
  inputBinding:
    prefix: -N
- id: in_direct_output_file
  doc: ': direct output to file <f>, not stdout'
  type: File
  inputBinding:
    prefix: -o
- id: in_save_multiple_alignment
  doc: ': save multiple alignment of hits to file <f>'
  type: File
  inputBinding:
    prefix: -A
- id: in_tbl_out
  doc: ': save parseable table of per-sequence hits to file <f>'
  type: File
  inputBinding:
    prefix: --tblout
- id: in_dom_tbl_out
  doc: ': save parseable table of per-domain hits to file <f>'
  type: File
  inputBinding:
    prefix: --domtblout
- id: in_chk_hmm
  doc: ': save HMM checkpoints to files <f>-<iteration>.hmm'
  type: string
  inputBinding:
    prefix: --chkhmm
- id: in_ch_kali
  doc: ': save alignment checkpoints to files <f>-<iteration>.sto'
  type: string
  inputBinding:
    prefix: --chkali
- id: in_acc
  doc: ': prefer accessions over names in output'
  type: boolean
  inputBinding:
    prefix: --acc
- id: in_no_ali
  doc: ": don't output alignments, so output is smaller"
  type: boolean
  inputBinding:
    prefix: --noali
- id: in_no_text_w
  doc: ': unlimit ASCII text output line width'
  type: boolean
  inputBinding:
    prefix: --notextw
- id: in_text_w
  doc: ': set max width of ASCII text output lines  [120]  (n>=120)'
  type: long
  inputBinding:
    prefix: --textw
- id: in_popen
  doc: ': gap open probability'
  type: string
  inputBinding:
    prefix: --popen
- id: in_p_extend
  doc: ': gap extend probability'
  type: string
  inputBinding:
    prefix: --pextend
- id: in_mx
  doc: ': substitution score matrix choice (of some built-in matrices)'
  type: string
  inputBinding:
    prefix: --mx
- id: in_mx_file
  doc: ': read substitution score matrix from file <f>'
  type: File
  inputBinding:
    prefix: --mxfile
- id: in_report_sequences_evalue_threshold
  doc: ': report sequences <= this E-value threshold in output  [10.0]  (x>0)'
  type: double
  inputBinding:
    prefix: -E
- id: in_report_sequences_score_threshold
  doc: ': report sequences >= this score threshold in output'
  type: string
  inputBinding:
    prefix: -T
- id: in_dome
  doc: ': report domains <= this E-value threshold in output  [10.0]  (x>0)'
  type: double
  inputBinding:
    prefix: --domE
- id: in_do_mt
  doc: ': report domains >= this score cutoff in output'
  type: string
  inputBinding:
    prefix: --domT
- id: in_ince
  doc: ': consider sequences <= this E-value threshold as significant'
  type: string
  inputBinding:
    prefix: --incE
- id: in_in_ct
  doc: ': consider sequences >= this score threshold as significant'
  type: string
  inputBinding:
    prefix: --incT
- id: in_inc_dome
  doc: ': consider domains <= this E-value threshold as significant'
  type: string
  inputBinding:
    prefix: --incdomE
- id: in_inc_do_mt
  doc: ': consider domains >= this score threshold as significant'
  type: string
  inputBinding:
    prefix: --incdomT
- id: in_max
  doc: ': Turn all heuristic filters off (less speed, more power)'
  type: boolean
  inputBinding:
    prefix: --max
- id: in_fone
  doc: ': Stage 1 (MSV) threshold: promote hits w/ P <= F1  [0.02]'
  type: long
  inputBinding:
    prefix: --F1
- id: in_f_two
  doc: ': Stage 2 (Vit) threshold: promote hits w/ P <= F2  [1e-3]'
  type: long
  inputBinding:
    prefix: --F2
- id: in_f_three
  doc: ': Stage 3 (Fwd) threshold: promote hits w/ P <= F3  [1e-5]'
  type: long
  inputBinding:
    prefix: --F3
- id: in_no_bias
  doc: ': turn off composition bias filter'
  type: boolean
  inputBinding:
    prefix: --nobias
- id: in_frag_thresh
  doc: ': if L <= x*alen, tag sequence as a fragment  [0.5]  (0<=x<=1)'
  type: double
  inputBinding:
    prefix: --fragthresh
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
- id: in_w_blosum
  doc: ': Henikoff simple filter weights'
  type: boolean
  inputBinding:
    prefix: --wblosum
- id: in_w_none
  doc: ": don't do any relative weighting; set all to 1"
  type: boolean
  inputBinding:
    prefix: --wnone
- id: in_wid
  doc: ': for --wblosum: set identity cutoff  [0.62]  (0<=x<=1)'
  type: double
  inputBinding:
    prefix: --wid
- id: in_e_ent
  doc: ': adjust eff seq # to achieve relative entropy target'
  type: boolean
  inputBinding:
    prefix: --eent
- id: in_e_ent_exp
  doc: ': adjust eff seq # to reach rel. ent. target using exp scaling'
  type: boolean
  inputBinding:
    prefix: --eentexp
- id: in_ec_lust
  doc: ': eff seq # is # of single linkage clusters'
  type: boolean
  inputBinding:
    prefix: --eclust
- id: in_en_one
  doc: ': no effective seq # weighting: just use nseq'
  type: boolean
  inputBinding:
    prefix: --enone
- id: in_e_set
  doc: ': set eff seq # for all models to <x>'
  type: string
  inputBinding:
    prefix: --eset
- id: in_ere
  doc: ': for --eent[exp]: set minimum rel entropy/position to <x>'
  type: string
  inputBinding:
    prefix: --ere
- id: in_e_sigma
  doc: ': for --eent[exp]: set sigma param to <x>'
  type: string
  inputBinding:
    prefix: --esigma
- id: in_eid
  doc: ': for --eclust: set fractional identity cutoff to <x>'
  type: string
  inputBinding:
    prefix: --eid
- id: in_p_none
  doc: ": don't use any prior; parameters are frequencies"
  type: boolean
  inputBinding:
    prefix: --pnone
- id: in_pla_place
  doc: ': use a Laplace +1 prior'
  type: boolean
  inputBinding:
    prefix: --plaplace
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
- id: in_no_null_two
  doc: ': turn off biased composition score corrections'
  type: boolean
  inputBinding:
    prefix: --nonull2
- id: in_set_comparisons_done
  doc: ': set # of comparisons done, for E-value calculation'
  type: string
  inputBinding:
    prefix: -Z
- id: in_do_mz
  doc: ': set # of significant seqs, for domain E-value calculation'
  type: string
  inputBinding:
    prefix: --domZ
- id: in_seed
  doc: ': set RNG seed to <n> (if 0: one-time arbitrary seed)  [42]'
  type: long
  inputBinding:
    prefix: --seed
- id: in_q_format
  doc: ': assert query <seqfile> is in format <s>: no autodetection'
  type: string
  inputBinding:
    prefix: --qformat
- id: in_t_format
  doc: ': assert target <seqdb> is in format <s>>: no autodetection'
  type: string
  inputBinding:
    prefix: --tformat
- id: in_cpu
  doc: ': number of parallel CPU workers to use for multithreads  [2]'
  type: long
  inputBinding:
    prefix: --cpu
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: in_seq_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_seq_db
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_direct_output_file
  doc: ': direct output to file <f>, not stdout'
  type: File
  outputBinding:
    glob: $(inputs.in_direct_output_file)
cwlVersion: v1.1
baseCommand:
- jackhmmer
