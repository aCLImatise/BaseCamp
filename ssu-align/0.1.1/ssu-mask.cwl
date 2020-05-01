#!/usr/bin/env cwl-runner

baseCommand:
- ssu-mask
class: CommandLineTool
cwlVersion: v1.0
id: ssu-mask
inputs:
- doc: ': the command-line argument is a stockholm alignment, not a directory'
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: ': use default ssu-align-0.1 masks'
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: ': use single mask in existing file <f> to mask single alignment'
  id: s
  inputBinding:
    prefix: -s
  type: string
- doc: ": use mask file named <modelname>.<s>.mask for masking (<modelname> might\
    \ be 'archaea', 'bacteria' or 'eukarya')"
  id: k
  inputBinding:
    prefix: -k
  type: string
- doc: ': CM file <f> created the alignment(s) (with ssu-align -m <f>)'
  id: m
  inputBinding:
    prefix: -m
  type: string
- doc: ': for structure diagrams, use template file <f>, not the default'
  id: t
  inputBinding:
    prefix: -t
  type: string
- doc: ': -i used with ssu-align, alignments are interleaved'
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: ': include columns w/<x> fraction of seqs w/prob >= --pt <y> [df: 0.95]'
  id: pf
  inputBinding:
    prefix: --pf
  type: string
- doc: ': set probability threshold as <y> [default=0.95]'
  id: pt
  inputBinding:
    prefix: --pt
  type: string
- doc: ': exclude insert (gap in RF) columns only'
  id: rf_only
  inputBinding:
    prefix: --rfonly
  type: boolean
- doc: ': only consider columns with <= <x> fraction gaps'
  id: gap_thresh
  inputBinding:
    prefix: --gapthresh
  type: string
- doc: ': do not consider posterior probabilities, only gap frequencies'
  id: gap_only
  inputBinding:
    prefix: --gaponly
  type: boolean
- doc: ': output aligned FASTA (.afa) alignments, not Stockholm ones'
  id: afa
  inputBinding:
    prefix: --afa
  type: boolean
- doc: ': output alignments as DNA, default is RNA (even if input is DNA)'
  id: dna
  inputBinding:
    prefix: --dna
  type: boolean
- doc: ': add <s> to all output file names, before the suffix'
  id: key_out
  inputBinding:
    prefix: --key-out
  type: string
- doc: ': <s> (!= "ps2pdf") is the command for converting ps to pdf'
  id: ps2pdf
  inputBinding:
    prefix: --ps2pdf
  type: string
- doc: ": save postscript secondary structure diagrams, don't convert to pdf"
  id: ps_only
  inputBinding:
    prefix: --ps-only
  type: boolean
- doc: ': do not draw mask diagrams'
  id: no_draw
  inputBinding:
    prefix: --no-draw
  type: boolean
- doc: ': output list file(s) of sequence names in alignment(s)'
  id: list
  inputBinding:
    prefix: --list
  type: boolean
- doc: ': convert Stockholm alignment(s) to aligned FASTA'
  id: stk2afa
  inputBinding:
    prefix: --stk2afa
  type: boolean
- doc: ': with -a, remove all sequences *except* those listed in file <f>'
  id: seq_k
  inputBinding:
    prefix: --seq-k
  type: string
- doc: ': with -a, remove sequences with names listed in file <f>'
  id: seq_r
  inputBinding:
    prefix: --seq-r
  type: string
