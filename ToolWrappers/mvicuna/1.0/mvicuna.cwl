class: CommandLineTool
id: mvicuna.cwl
inputs:
- id: in_i_pfq
  doc: ': comma separated input paired fastq files; the ith and (i+1)th files form
    a pair (i is an odd number)'
  type: boolean?
  inputBinding:
    prefix: -ipfq
- id: in_is_fq
  doc: ': comma separated input single end fastq files'
  type: boolean?
  inputBinding:
    prefix: -isfq
- id: in_fa
  doc: ': comma separated input single end fasta files'
  type: boolean?
  inputBinding:
    prefix: -fa
- id: in_op_fq
  doc: ': comma separated final 2 output fastq paired files'
  type: boolean?
  inputBinding:
    prefix: -opfq
- id: in_osf_q
  doc: ': final output singleton fastq file'
  type: File?
  inputBinding:
    prefix: -osfq
- id: in_batch
  doc: ': default 500000; number of sequence (pairs) to be loaded in the memory (>=10000)-pthreads:
    default 8; number of cores to use'
  type: boolean?
  inputBinding:
    prefix: -batch
- id: in_w_two
  doc: ': default 17, 5; sketching window sizes'
  type: boolean?
  inputBinding:
    prefix: -w2
- id: in_lc_mono
  doc: ": default 30, 50, 80; defining low complexity sequence\nmax percentage of\
    \ ambiguous bases, mono nucleotides, and dinucleotides"
  type: boolean?
  inputBinding:
    prefix: -lc_mono
- id: in_tasks
  doc: ": default DupRm,Trim,PairedReadMerge,SFrqEst;\na list of comma separated tasks\
    \ {DupRm, Trim, PairedReadMerge, SFrqEst}"
  type: boolean?
  inputBinding:
    prefix: -tasks
- id: in_silent
  doc: ': default false; no screen print-out'
  type: boolean?
  inputBinding:
    prefix: -silent
- id: in_no_clean
  doc: ': default false; do not remove intermediate files'
  type: boolean?
  inputBinding:
    prefix: -noclean
- id: in_drm_op
  doc: ': comma separated output paired fq files post dup rm'
  type: boolean?
  inputBinding:
    prefix: -drm_op
- id: in_drm_perc_sim
  doc: ': default 98; percent similarity'
  type: boolean?
  inputBinding:
    prefix: -drm_perc_sim
- id: in_drm_max_mismatch
  doc: ': default 5; max mismatches allowed'
  type: boolean?
  inputBinding:
    prefix: -drm_max_mismatch
- id: in_prm_op
  doc: ': 2 comma separated output unmerged fq files'
  type: boolean?
  inputBinding:
    prefix: -prm_op
- id: in_prm_os
  doc: ': merged single-end fq file'
  type: boolean?
  inputBinding:
    prefix: -prm_os
- id: in_trm_ve_cfa
  doc: ': input fasta file storing vectors/primers'
  type: boolean?
  inputBinding:
    prefix: -trm_vecfa
- id: in_trm_op
  doc: ': comma separated output fq paired files'
  type: boolean?
  inputBinding:
    prefix: -trm_op
- id: in_trm_os
  doc: ': merged single-end fq files'
  type: boolean?
  inputBinding:
    prefix: -trm_os
- id: in_trm_min_match
  doc: ': default 13; min match b/t vector and a read to be trimmed'
  type: boolean?
  inputBinding:
    prefix: -trm_min_match
- id: in_trm_min_rlen
  doc: ': default 70; min read length post-trimming'
  type: boolean?
  inputBinding:
    prefix: -trm_min_rlen
- id: in_trm_q
  doc: ': default 2 (ASCII 35 #); min phred score (ASCII >= 33)'
  type: boolean?
  inputBinding:
    prefix: -trm_q
- id: in_fe_k
  doc: ': default 14 (<= 16); substring length to calibrate'
  type: boolean?
  inputBinding:
    prefix: -fe_k
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_osf_q
  doc: ': final output singleton fastq file'
  type: File?
  outputBinding:
    glob: $(inputs.in_osf_q)
hints: []
cwlVersion: v1.1
baseCommand:
- mvicuna
