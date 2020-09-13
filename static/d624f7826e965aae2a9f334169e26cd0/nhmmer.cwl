class: CommandLineTool
id: ../../../nhmmer.cwl
inputs:
- id: in_direct_output_file
  doc: ': direct output to file <f>, not stdout'
  type: File
  inputBinding:
    prefix: -o
- id: in_save_multiple_alignment
  doc: ': save multiple alignment of all hits to file <f>'
  type: File
  inputBinding:
    prefix: -A
- id: in_tbl_out
  doc: ': save parseable table of hits to file <f>'
  type: File
  inputBinding:
    prefix: --tblout
- id: in_df_am_tbl_out
  doc: ': save table of hits to file, in Dfam format <f>'
  type: File
  inputBinding:
    prefix: --dfamtblout
- id: in_ali_scores_out
  doc: ': save scores for each position in each alignment to <f>'
  type: string
  inputBinding:
    prefix: --aliscoresout
- id: in_hmm_out
  doc: ': if input is alignment(s), write produced hmms to file <f>'
  type: File
  inputBinding:
    prefix: --hmmout
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
- id: in_single_mx
  doc: ': use substitution score matrix w/ single-sequence MSA-format inputs'
  type: boolean
  inputBinding:
    prefix: --singlemx
- id: in_popen
  doc: ': gap open probability  [0.03125]  (0<=x<0.5)'
  type: double
  inputBinding:
    prefix: --popen
- id: in_p_extend
  doc: ': gap extend probability  [0.75]  (0<=x<1)'
  type: double
  inputBinding:
    prefix: --pextend
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
- id: in_ince
  doc: ': consider sequences <= this E-value threshold as significant  [0.01]  (x>0)'
  type: double
  inputBinding:
    prefix: --incE
- id: in_in_ct
  doc: ': consider sequences >= this score threshold as significant'
  type: string
  inputBinding:
    prefix: --incT
- id: in_cut_ga
  doc: ": use profile's GA gathering cutoffs to set all thresholding"
  type: boolean
  inputBinding:
    prefix: --cut_ga
- id: in_cut_nc
  doc: ": use profile's NC noise cutoffs to set all thresholding"
  type: boolean
  inputBinding:
    prefix: --cut_nc
- id: in_cut_tc
  doc: ": use profile's TC trusted cutoffs to set all thresholding"
  type: boolean
  inputBinding:
    prefix: --cut_tc
- id: in_max
  doc: ': Turn all heuristic filters off (less speed, more power)'
  type: boolean
  inputBinding:
    prefix: --max
- id: in_fone
  doc: ': Stage 1 (SSV) threshold: promote hits w/ P <= F1'
  type: long
  inputBinding:
    prefix: --F1
- id: in_f_two
  doc: ': Stage 2 (Vit) threshold: promote hits w/ P <= F2  [3e-3]'
  type: long
  inputBinding:
    prefix: --F2
- id: in_f_three
  doc: ': Stage 3 (Fwd) threshold: promote hits w/ P <= F3  [3e-5]'
  type: long
  inputBinding:
    prefix: --F3
- id: in_no_bias
  doc: ': turn off composition bias filter'
  type: boolean
  inputBinding:
    prefix: --nobias
- id: in_dna
  doc: ': input alignment is DNA sequence data'
  type: boolean
  inputBinding:
    prefix: --dna
- id: in_rna
  doc: ': input alignment is RNA sequence data'
  type: boolean
  inputBinding:
    prefix: --rna
- id: in_seed_max_depth
  doc: ': seed length at which bit threshold must be met  [15]'
  type: long
  inputBinding:
    prefix: --seed_max_depth
- id: in_seed_sc_thresh
  doc: ': Default req. score for FM seed (bits)  [15]'
  type: long
  inputBinding:
    prefix: --seed_sc_thresh
- id: in_seed_sc_density
  doc: ': seed must maintain this bit density from one of two ends  [0.8]'
  type: double
  inputBinding:
    prefix: --seed_sc_density
- id: in_seed_drop_max_len
  doc: ': maximum run length with score under (max - [fm_drop_lim])  [4]'
  type: long
  inputBinding:
    prefix: --seed_drop_max_len
- id: in_seed_drop_lim
  doc: ': in seed, max drop in a run of length [fm_drop_max_len]  [0.3]'
  type: long
  inputBinding:
    prefix: --seed_drop_lim
- id: in_seed_req_pos
  doc: ': minimum number consecutive positive scores in seed  [5]'
  type: long
  inputBinding:
    prefix: --seed_req_pos
- id: in_seed_con_sens_match
  doc: ': <n> consecutive matches to consensus will override score threshold  [11]'
  type: long
  inputBinding:
    prefix: --seed_consens_match
- id: in_seed_ssv_length
  doc: ': length of window around FM seed to get full SSV diagonal  [70]'
  type: long
  inputBinding:
    prefix: --seed_ssv_length
- id: in_q_hmm
  doc: ': assert query is an hmm file'
  type: boolean
  inputBinding:
    prefix: --qhmm
- id: in_q_fast_a
  doc: ': assert query is an unaligned fasta file'
  type: boolean
  inputBinding:
    prefix: --qfasta
- id: in_qms_a
  doc: ': assert query is an aligned file format; can use --qformat to specify'
  type: boolean
  inputBinding:
    prefix: --qmsa
- id: in_q_format
  doc: ': assert query msa <seqfile> is in format <s>'
  type: string
  inputBinding:
    prefix: --qformat
- id: in_t_format
  doc: ': assert target <seqdb> is in format <s>'
  type: string
  inputBinding:
    prefix: --tformat
- id: in_no_null_two
  doc: ': turn off biased composition score corrections'
  type: boolean
  inputBinding:
    prefix: --nonull2
- id: in_set_size_megabases
  doc: ': set database size (Megabases) to <x> for E-value calculations  (x>0)'
  type: long
  inputBinding:
    prefix: -Z
- id: in_seed
  doc: ': set RNG seed to <n> (if 0: one-time arbitrary seed)  [42]  (n>=0)'
  type: long
  inputBinding:
    prefix: --seed
- id: in_w_beta
  doc: ': tail mass at which window length is determined'
  type: long
  inputBinding:
    prefix: --w_beta
- id: in_w_length
  doc: ': window length - essentially max expected hit length'
  type: long
  inputBinding:
    prefix: --w_length
- id: in_block_length
  doc: ': length of blocks read from target database (threaded)   (n>=50000)'
  type: long
  inputBinding:
    prefix: --block_length
- id: in_watson
  doc: ': only search the top strand'
  type: boolean
  inputBinding:
    prefix: --watson
- id: in_crick
  doc: ': only search the bottom strand'
  type: boolean
  inputBinding:
    prefix: --crick
- id: in_cpu
  doc: ': number of parallel CPU workers to use for multithreads  [2]  (n>=0)'
  type: long
  inputBinding:
    prefix: --cpu
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
- nhmmer
