class: CommandLineTool
id: ../../../phmmer.cwl
inputs:
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
- id: in_pfam_tbl_out
  doc: ': save table of hits and domains to file, in Pfam format <f>'
  type: File
  inputBinding:
    prefix: --pfamtblout
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
- phmmer
