#!/usr/bin/env cwl-runner

baseCommand:
- nhmmer
class: CommandLineTool
cwlVersion: v1.0
id: nhmmer
inputs:
- doc: ': direct output to file <f>, not stdout'
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ': save multiple alignment of all hits to file <f>'
  id: a
  inputBinding:
    prefix: -A
  type: string
- doc: ': save parseable table of hits to file <f>'
  id: tbl_out
  inputBinding:
    prefix: --tblout
  type: string
- doc: ': save table of hits to file, in Dfam format <f>'
  id: df_am_tbl_out
  inputBinding:
    prefix: --dfamtblout
  type: string
- doc: ': save scores for each position in each alignment to <f>'
  id: ali_scores_out
  inputBinding:
    prefix: --aliscoresout
  type: string
- doc: ': if input is alignment(s), write produced hmms to file <f>'
  id: hmm_out
  inputBinding:
    prefix: --hmmout
  type: string
- doc: ': prefer accessions over names in output'
  id: acc
  inputBinding:
    prefix: --acc
  type: boolean
- doc: ": don't output alignments, so output is smaller"
  id: no_ali
  inputBinding:
    prefix: --noali
  type: boolean
- doc: ': unlimit ASCII text output line width'
  id: no_text_w
  inputBinding:
    prefix: --notextw
  type: boolean
- doc: ': set max width of ASCII text output lines  [120]  (n>=120)'
  id: text_w
  inputBinding:
    prefix: --textw
  type: string
- doc: ': use substitution score matrix w/ single-sequence MSA-format inputs'
  id: single_mx
  inputBinding:
    prefix: --singlemx
  type: boolean
- doc: ': gap open probability  [0.03125]  (0<=x<0.5)'
  id: popen
  inputBinding:
    prefix: --popen
  type: string
- doc: ': gap extend probability  [0.75]  (0<=x<1)'
  id: p_extend
  inputBinding:
    prefix: --pextend
  type: string
- doc: ': read substitution score matrix from file <f>'
  id: mx_file
  inputBinding:
    prefix: --mxfile
  type: string
- doc: ': report sequences <= this E-value threshold in output  [10.0]  (x>0)'
  id: e
  inputBinding:
    prefix: -E
  type: string
- doc: ': report sequences >= this score threshold in output'
  id: t
  inputBinding:
    prefix: -T
  type: string
- doc: ': consider sequences <= this E-value threshold as significant  [0.01]  (x>0)'
  id: ince
  inputBinding:
    prefix: --incE
  type: string
- doc: ': consider sequences >= this score threshold as significant'
  id: in_ct
  inputBinding:
    prefix: --incT
  type: string
- doc: ": use profile's GA gathering cutoffs to set all thresholding"
  id: cut_ga
  inputBinding:
    prefix: --cut_ga
  type: boolean
- doc: ": use profile's NC noise cutoffs to set all thresholding"
  id: cut_nc
  inputBinding:
    prefix: --cut_nc
  type: boolean
- doc: ": use profile's TC trusted cutoffs to set all thresholding"
  id: cut_tc
  inputBinding:
    prefix: --cut_tc
  type: boolean
- doc: ': Turn all heuristic filters off (less speed, more power)'
  id: max
  inputBinding:
    prefix: --max
  type: boolean
- doc: ': Stage 1 (SSV) threshold: promote hits w/ P <= F1'
  id: f1
  inputBinding:
    prefix: --F1
  type: string
- doc: ': Stage 2 (Vit) threshold: promote hits w/ P <= F2  [3e-3]'
  id: f2
  inputBinding:
    prefix: --F2
  type: string
- doc: ': Stage 3 (Fwd) threshold: promote hits w/ P <= F3  [3e-5]'
  id: f3
  inputBinding:
    prefix: --F3
  type: string
- doc: ': turn off composition bias filter'
  id: no_bias
  inputBinding:
    prefix: --nobias
  type: boolean
- doc: ': input alignment is DNA sequence data'
  id: dna
  inputBinding:
    prefix: --dna
  type: boolean
- doc: ': input alignment is RNA sequence data'
  id: rna
  inputBinding:
    prefix: --rna
  type: boolean
- doc: ': seed length at which bit threshold must be met  [15]'
  id: seed_max_depth
  inputBinding:
    prefix: --seed_max_depth
  type: string
- doc: ': Default req. score for FM seed (bits)  [15]'
  id: seed_sc_thresh
  inputBinding:
    prefix: --seed_sc_thresh
  type: string
- doc: ': seed must maintain this bit density from one of two ends  [0.8]'
  id: seed_sc_density
  inputBinding:
    prefix: --seed_sc_density
  type: string
- doc: ': maximum run length with score under (max - [fm_drop_lim])  [4]'
  id: seed_drop_max_len
  inputBinding:
    prefix: --seed_drop_max_len
  type: string
- doc: ': in seed, max drop in a run of length [fm_drop_max_len]  [0.3]'
  id: seed_drop_lim
  inputBinding:
    prefix: --seed_drop_lim
  type: string
- doc: ': minimum number consecutive positive scores in seed  [5]'
  id: seed_req_pos
  inputBinding:
    prefix: --seed_req_pos
  type: string
- doc: ': <n> consecutive matches to consensus will override score threshold  [11]'
  id: seed_con_sens_match
  inputBinding:
    prefix: --seed_consens_match
  type: string
- doc: ': length of window around FM seed to get full SSV diagonal  [70]'
  id: seed_ssv_length
  inputBinding:
    prefix: --seed_ssv_length
  type: string
- doc: ': assert query is an hmm file'
  id: q_hmm
  inputBinding:
    prefix: --qhmm
  type: boolean
- doc: ': assert query is an unaligned fasta file'
  id: q_fast_a
  inputBinding:
    prefix: --qfasta
  type: boolean
- doc: ': assert query is an aligned file format; can use --qformat to specify'
  id: qms_a
  inputBinding:
    prefix: --qmsa
  type: boolean
- doc: ': assert query msa <seqfile> is in format <s>'
  id: q_format
  inputBinding:
    prefix: --qformat
  type: string
- doc: ': assert target <seqdb> is in format <s>'
  id: t_format
  inputBinding:
    prefix: --tformat
  type: string
- doc: ': turn off biased composition score corrections'
  id: nonull2
  inputBinding:
    prefix: --nonull2
  type: boolean
- doc: ': set database size (Megabases) to <x> for E-value calculations  (x>0)'
  id: z
  inputBinding:
    prefix: -Z
  type: string
- doc: ': set RNG seed to <n> (if 0: one-time arbitrary seed)  [42]  (n>=0)'
  id: seed
  inputBinding:
    prefix: --seed
  type: string
- doc: ': tail mass at which window length is determined'
  id: w_beta
  inputBinding:
    prefix: --w_beta
  type: string
- doc: ': window length - essentially max expected hit length'
  id: w_length
  inputBinding:
    prefix: --w_length
  type: string
- doc: ': length of blocks read from target database (threaded)   (n>=50000)'
  id: block_length
  inputBinding:
    prefix: --block_length
  type: string
- doc: ': only search the top strand'
  id: watson
  inputBinding:
    prefix: --watson
  type: boolean
- doc: ': only search the bottom strand'
  id: crick
  inputBinding:
    prefix: --crick
  type: boolean
- doc: ': number of parallel CPU workers to use for multithreads  [2]  (n>=0)'
  id: cpu
  inputBinding:
    prefix: --cpu
  type: string
