class: CommandLineTool
id: ../../../hmmsearch.cwl
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
- id: in_t_format
  doc: ': assert target <seqfile> is in format <s>: no autodetection'
  type: string
  inputBinding:
    prefix: --tformat
- id: in_cpu
  doc: ': number of parallel CPU workers to use for multithreads  [2]'
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
- hmmsearch
