class: CommandLineTool
id: ssu_mask.cwl
inputs:
- id: in_commandline_argument_stockholm
  doc: ': the command-line argument is a stockholm alignment, not a directory'
  type: boolean
  inputBinding:
    prefix: -a
- id: in_use_default_masks
  doc: ': use default ssu-align-0.1 masks'
  type: boolean
  inputBinding:
    prefix: -d
- id: in_use_single_mask
  doc: ': use single mask in existing file <f> to mask single alignment'
  type: File
  inputBinding:
    prefix: -s
- id: in_use_mask_file
  doc: ": use mask file named <modelname>.<s>.mask for masking\n(<modelname> might\
    \ be 'archaea', 'bacteria' or 'eukarya')"
  type: File
  inputBinding:
    prefix: -k
- id: in_cm_file_f
  doc: ': CM file <f> created the alignment(s) (with ssu-align -m <f>)'
  type: File
  inputBinding:
    prefix: -m
- id: in_structure_diagrams_use
  doc: ': for structure diagrams, use template file <f>, not the default'
  type: File
  inputBinding:
    prefix: -t
- id: in_i_used_ssualign
  doc: ': -i used with ssu-align, alignments are interleaved'
  type: boolean
  inputBinding:
    prefix: -i
- id: in_pf
  doc: ': include columns w/<x> fraction of seqs w/prob >= --pt <y> [df: 0.95]'
  type: double
  inputBinding:
    prefix: --pf
- id: in_pt
  doc: ': set probability threshold as <y> [default=0.95]'
  type: double
  inputBinding:
    prefix: --pt
- id: in_rf_only
  doc: ': exclude insert (gap in RF) columns only'
  type: boolean
  inputBinding:
    prefix: --rfonly
- id: in_gap_thresh
  doc: ': only consider columns with <= <x> fraction gaps'
  type: string
  inputBinding:
    prefix: --gapthresh
- id: in_gap_only
  doc: ': do not consider posterior probabilities, only gap frequencies'
  type: boolean
  inputBinding:
    prefix: --gaponly
- id: in_afa
  doc: ': output aligned FASTA (.afa) alignments, not Stockholm ones'
  type: boolean
  inputBinding:
    prefix: --afa
- id: in_dna
  doc: ': output alignments as DNA, default is RNA (even if input is DNA)'
  type: boolean
  inputBinding:
    prefix: --dna
- id: in_key_out
  doc: ': add <s> to all output file names, before the suffix'
  type: File
  inputBinding:
    prefix: --key-out
- id: in_pstwo_pdf
  doc: ': <s> (!= "ps2pdf") is the command for converting ps to pdf'
  type: long
  inputBinding:
    prefix: --ps2pdf
- id: in_ps_only
  doc: ": save postscript secondary structure diagrams, don't convert to pdf"
  type: boolean
  inputBinding:
    prefix: --ps-only
- id: in_no_draw
  doc: ': do not draw mask diagrams'
  type: boolean
  inputBinding:
    prefix: --no-draw
- id: in_list
  doc: ': output list file(s) of sequence names in alignment(s)'
  type: File
  inputBinding:
    prefix: --list
- id: in_stk_two_afa
  doc: ': convert Stockholm alignment(s) to aligned FASTA'
  type: boolean
  inputBinding:
    prefix: --stk2afa
- id: in_seq_k
  doc: ': with -a, remove all sequences *except* those listed in file <f>'
  type: File
  inputBinding:
    prefix: --seq-k
- id: in_seq_r
  doc: ': with -a, remove sequences with names listed in file <f>'
  type: File
  inputBinding:
    prefix: --seq-r
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_key_out
  doc: ': add <s> to all output file names, before the suffix'
  type: File
  outputBinding:
    glob: $(inputs.in_key_out)
- id: out_list
  doc: ': output list file(s) of sequence names in alignment(s)'
  type: File
  outputBinding:
    glob: $(inputs.in_list)
cwlVersion: v1.1
baseCommand:
- ssu-mask
