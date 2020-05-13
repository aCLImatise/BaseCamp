class: CommandLineTool
id: nhmmer.cwl
inputs:
- id: o
  doc: ': direct output to file <f>, not stdout'
  type: string
  inputBinding:
    prefix: -o
- id: a
  doc: ': save multiple alignment of all hits to file <f>'
  type: string
  inputBinding:
    prefix: -A
- id: tbl_out
  doc: ': save parseable table of hits to file <f>'
  type: string
  inputBinding:
    prefix: --tblout
- id: df_am_tbl_out
  doc: ': save table of hits to file, in Dfam format <f>'
  type: string
  inputBinding:
    prefix: --dfamtblout
- id: ali_scores_out
  doc: ': save scores for each position in each alignment to <f>'
  type: string
  inputBinding:
    prefix: --aliscoresout
- id: hmm_out
  doc: ': if input is alignment(s), write produced hmms to file <f>'
  type: string
  inputBinding:
    prefix: --hmmout
- id: acc
  doc: ': prefer accessions over names in output'
  type: boolean
  inputBinding:
    prefix: --acc
- id: no_ali
  doc: ": don't output alignments, so output is smaller"
  type: boolean
  inputBinding:
    prefix: --noali
- id: no_text_w
  doc: ': unlimit ASCII text output line width'
  type: boolean
  inputBinding:
    prefix: --notextw
- id: text_w
  doc: ': set max width of ASCII text output lines  [120]  (n>=120)'
  type: string
  inputBinding:
    prefix: --textw
- id: single_mx
  doc: ': use substitution score matrix w/ single-sequence MSA-format inputs'
  type: boolean
  inputBinding:
    prefix: --singlemx
- id: popen
  doc: ': gap open probability  [0.03125]  (0<=x<0.5)'
  type: string
  inputBinding:
    prefix: --popen
- id: p_extend
  doc: ': gap extend probability  [0.75]  (0<=x<1)'
  type: string
  inputBinding:
    prefix: --pextend
- id: mx_file
  doc: ': read substitution score matrix from file <f>'
  type: string
  inputBinding:
    prefix: --mxfile
- id: e
  doc: ': report sequences <= this E-value threshold in output  [10.0]  (x>0)'
  type: string
  inputBinding:
    prefix: -E
- id: t
  doc: ': report sequences >= this score threshold in output'
  type: string
  inputBinding:
    prefix: -T
- id: ince
  doc: ': consider sequences <= this E-value threshold as significant  [0.01]  (x>0)'
  type: string
  inputBinding:
    prefix: --incE
- id: in_ct
  doc: ': consider sequences >= this score threshold as significant'
  type: string
  inputBinding:
    prefix: --incT
- id: cut_ga
  doc: ": use profile's GA gathering cutoffs to set all thresholding"
  type: boolean
  inputBinding:
    prefix: --cut_ga
- id: cut_nc
  doc: ": use profile's NC noise cutoffs to set all thresholding"
  type: boolean
  inputBinding:
    prefix: --cut_nc
- id: cut_tc
  doc: ": use profile's TC trusted cutoffs to set all thresholding"
  type: boolean
  inputBinding:
    prefix: --cut_tc
- id: max
  doc: ': Turn all heuristic filters off (less speed, more power)'
  type: boolean
  inputBinding:
    prefix: --max
- id: f1
  doc: ': Stage 1 (SSV) threshold: promote hits w/ P <= F1'
  type: string
  inputBinding:
    prefix: --F1
- id: f2
  doc: ': Stage 2 (Vit) threshold: promote hits w/ P <= F2  [3e-3]'
  type: string
  inputBinding:
    prefix: --F2
- id: f3
  doc: ': Stage 3 (Fwd) threshold: promote hits w/ P <= F3  [3e-5]'
  type: string
  inputBinding:
    prefix: --F3
- id: no_bias
  doc: ': turn off composition bias filter'
  type: boolean
  inputBinding:
    prefix: --nobias
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
- id: seed_max_depth
  doc: ': seed length at which bit threshold must be met  [15]'
  type: string
  inputBinding:
    prefix: --seed_max_depth
- id: seed_sc_thresh
  doc: ': Default req. score for FM seed (bits)  [15]'
  type: string
  inputBinding:
    prefix: --seed_sc_thresh
- id: seed_sc_density
  doc: ': seed must maintain this bit density from one of two ends  [0.8]'
  type: string
  inputBinding:
    prefix: --seed_sc_density
- id: seed_drop_max_len
  doc: ': maximum run length with score under (max - [fm_drop_lim])  [4]'
  type: string
  inputBinding:
    prefix: --seed_drop_max_len
- id: seed_drop_lim
  doc: ': in seed, max drop in a run of length [fm_drop_max_len]  [0.3]'
  type: string
  inputBinding:
    prefix: --seed_drop_lim
- id: seed_req_pos
  doc: ': minimum number consecutive positive scores in seed  [5]'
  type: string
  inputBinding:
    prefix: --seed_req_pos
- id: seed_con_sens_match
  doc: ': <n> consecutive matches to consensus will override score threshold  [11]'
  type: string
  inputBinding:
    prefix: --seed_consens_match
- id: seed_ssv_length
  doc: ': length of window around FM seed to get full SSV diagonal  [70]'
  type: string
  inputBinding:
    prefix: --seed_ssv_length
- id: q_hmm
  doc: ': assert query is an hmm file'
  type: boolean
  inputBinding:
    prefix: --qhmm
- id: q_fast_a
  doc: ': assert query is an unaligned fasta file'
  type: boolean
  inputBinding:
    prefix: --qfasta
- id: qms_a
  doc: ': assert query is an aligned file format; can use --qformat to specify'
  type: boolean
  inputBinding:
    prefix: --qmsa
- id: q_format
  doc: ': assert query msa <seqfile> is in format <s>'
  type: string
  inputBinding:
    prefix: --qformat
- id: t_format
  doc: ': assert target <seqdb> is in format <s>'
  type: string
  inputBinding:
    prefix: --tformat
- id: nonull2
  doc: ': turn off biased composition score corrections'
  type: boolean
  inputBinding:
    prefix: --nonull2
- id: z
  doc: ': set database size (Megabases) to <x> for E-value calculations  (x>0)'
  type: string
  inputBinding:
    prefix: -Z
- id: seed
  doc: ': set RNG seed to <n> (if 0: one-time arbitrary seed)  [42]  (n>=0)'
  type: string
  inputBinding:
    prefix: --seed
- id: w_beta
  doc: ': tail mass at which window length is determined'
  type: string
  inputBinding:
    prefix: --w_beta
- id: w_length
  doc: ': window length - essentially max expected hit length'
  type: string
  inputBinding:
    prefix: --w_length
- id: block_length
  doc: ': length of blocks read from target database (threaded)   (n>=50000)'
  type: string
  inputBinding:
    prefix: --block_length
- id: watson
  doc: ': only search the top strand'
  type: boolean
  inputBinding:
    prefix: --watson
- id: crick
  doc: ': only search the bottom strand'
  type: boolean
  inputBinding:
    prefix: --crick
- id: cpu
  doc: ': number of parallel CPU workers to use for multithreads  [2]  (n>=0)'
  type: string
  inputBinding:
    prefix: --cpu
outputs: []
cwlVersion: v1.1
baseCommand:
- nhmmer
