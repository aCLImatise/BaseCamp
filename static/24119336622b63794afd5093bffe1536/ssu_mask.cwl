class: CommandLineTool
id: ssu_mask.cwl
inputs:
- id: a
  doc: ': the command-line argument is a stockholm alignment, not a directory'
  type: boolean
  inputBinding:
    prefix: -a
- id: d
  doc: ': use default ssu-align-0.1 masks'
  type: boolean
  inputBinding:
    prefix: -d
- id: s
  doc: ': use single mask in existing file <f> to mask single alignment'
  type: string
  inputBinding:
    prefix: -s
- id: k
  doc: ": use mask file named <modelname>.<s>.mask for masking (<modelname> might\
    \ be 'archaea', 'bacteria' or 'eukarya')"
  type: string
  inputBinding:
    prefix: -k
- id: m
  doc: ': CM file <f> created the alignment(s) (with ssu-align -m <f>)'
  type: string
  inputBinding:
    prefix: -m
- id: t
  doc: ': for structure diagrams, use template file <f>, not the default'
  type: string
  inputBinding:
    prefix: -t
- id: i
  doc: ': -i used with ssu-align, alignments are interleaved'
  type: boolean
  inputBinding:
    prefix: -i
- id: pf
  doc: ': include columns w/<x> fraction of seqs w/prob >= --pt <y> [df: 0.95]'
  type: string
  inputBinding:
    prefix: --pf
- id: pt
  doc: ': set probability threshold as <y> [default=0.95]'
  type: string
  inputBinding:
    prefix: --pt
- id: rf_only
  doc: ': exclude insert (gap in RF) columns only'
  type: boolean
  inputBinding:
    prefix: --rfonly
- id: gap_thresh
  doc: ': only consider columns with <= <x> fraction gaps'
  type: string
  inputBinding:
    prefix: --gapthresh
- id: gap_only
  doc: ': do not consider posterior probabilities, only gap frequencies'
  type: boolean
  inputBinding:
    prefix: --gaponly
- id: afa
  doc: ': output aligned FASTA (.afa) alignments, not Stockholm ones'
  type: boolean
  inputBinding:
    prefix: --afa
- id: dna
  doc: ': output alignments as DNA, default is RNA (even if input is DNA)'
  type: boolean
  inputBinding:
    prefix: --dna
- id: key_out
  doc: ': add <s> to all output file names, before the suffix'
  type: string
  inputBinding:
    prefix: --key-out
- id: ps2pdf
  doc: ': <s> (!= "ps2pdf") is the command for converting ps to pdf'
  type: string
  inputBinding:
    prefix: --ps2pdf
- id: ps_only
  doc: ": save postscript secondary structure diagrams, don't convert to pdf"
  type: boolean
  inputBinding:
    prefix: --ps-only
- id: no_draw
  doc: ': do not draw mask diagrams'
  type: boolean
  inputBinding:
    prefix: --no-draw
- id: list
  doc: ': output list file(s) of sequence names in alignment(s)'
  type: boolean
  inputBinding:
    prefix: --list
- id: stk2afa
  doc: ': convert Stockholm alignment(s) to aligned FASTA'
  type: boolean
  inputBinding:
    prefix: --stk2afa
- id: seq_k
  doc: ': with -a, remove all sequences *except* those listed in file <f>'
  type: string
  inputBinding:
    prefix: --seq-k
- id: seq_r
  doc: ': with -a, remove sequences with names listed in file <f>'
  type: string
  inputBinding:
    prefix: --seq-r
outputs: []
cwlVersion: v1.1
baseCommand:
- ssu-mask
