#!/usr/bin/env cwl-runner

baseCommand:
- esl-alimanip
class: CommandLineTool
cwlVersion: v1.0
id: esl-alimanip
inputs:
- doc: ''
  id: msa_file
  inputBinding:
    position: 0
  type: string
- doc: ': output the alignment to file <f>, not stdout'
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ': specify that input file is in format <s>'
  id: in_format
  inputBinding:
    prefix: --informat
  type: string
- doc: ': specify that output format be <s>'
  id: out_format
  inputBinding:
    prefix: --outformat
  type: string
- doc: ': show list of undocumented developer options'
  id: devhelp
  inputBinding:
    prefix: --devhelp
  type: boolean
- doc: ': remove sequences w/length < <x> fraction of median length'
  id: ln_fract
  inputBinding:
    prefix: --lnfract
  type: string
- doc: ': remove sequences w/length > <x> fraction of median length'
  id: lx_fract
  inputBinding:
    prefix: --lxfract
  type: string
- doc: ': remove sequences w/length < <n> residues'
  id: lm_in
  inputBinding:
    prefix: --lmin
  type: string
- doc: ': remove sequences w/length > <n> residues'
  id: lmax
  inputBinding:
    prefix: --lmax
  type: string
- doc: ': remove seqs w/nongap RF len < <x> fraction of aln nongap RF len'
  id: rf_fract
  inputBinding:
    prefix: --rffract
  type: string
- doc: ": remove seqs w/gaps in >= <n> 5' or 3'-most nongap #=GC RF cols"
  id: de_trunc
  inputBinding:
    prefix: --detrunc
  type: string
- doc: ': remove sequences with >= <n> ambiguous residues'
  id: x_am_big
  inputBinding:
    prefix: --xambig
  type: string
- doc: ': remove sequences with names listed in file <f>'
  id: seq_r
  inputBinding:
    prefix: --seq-r
  type: string
- doc: ': remove all seqs *except* those listed in <f>'
  id: seq_k
  inputBinding:
    prefix: --seq-k
  type: string
- doc: ': w/--seq-r or --seq-k use minimal RAM (no seq reordering)'
  id: small
  inputBinding:
    prefix: --small
  type: boolean
- doc: ': with --seq-k <f>, reorder sequences to order in <f>'
  id: k_reorder
  inputBinding:
    prefix: --k-reorder
  type: boolean
- doc: ': keep only seqs w/an insert after nongap RF col <n>'
  id: seq_ins
  inputBinding:
    prefix: --seq-ins
  type: string
- doc: ': w/--seq-ins require at least <n> residue insertions  [1]'
  id: seq_ni
  inputBinding:
    prefix: --seq-ni
  type: string
- doc: ': w/--seq-ins require at most  <n> residue insertions  [1000000]'
  id: seq_xi
  inputBinding:
    prefix: --seq-xi
  type: string
- doc: ': trim aligned seqs in <msafile> to subseqs in <f>'
  id: trim
  inputBinding:
    prefix: --trim
  type: string
- doc: ': w/--trim keep GC RF annotation in msa, if it exists'
  id: t_keep_rf
  inputBinding:
    prefix: --t-keeprf
  type: boolean
- doc: ': replace residues with posterior probabilities < <x> with gaps'
  id: min_pp
  inputBinding:
    prefix: --minpp
  type: string
- doc: ': reorder MSA to tree order following SLC, save Newick tree to <f>'
  id: tree
  inputBinding:
    prefix: --tree
  type: string
- doc: ': reorder seqs to the order listed in <f>, all seqs must be listed'
  id: reorder
  inputBinding:
    prefix: --reorder
  type: string
- doc: ': set #=GC RF as x=1, gap=0 from 1/0s in 1-line <f>'
  id: mask2rf
  inputBinding:
    prefix: --mask2rf
  type: string
- doc: ": with --mask2rf, do not overwrite nongap RF characters with 'x'"
  id: m_keep_rf
  inputBinding:
    prefix: --m-keeprf
  type: boolean
- doc: ': add annotation numbering all columns'
  id: num_all
  inputBinding:
    prefix: --num-all
  type: boolean
- doc: ': add annotation numbering the nongap RF columns'
  id: num_rf
  inputBinding:
    prefix: --num-rf
  type: boolean
- doc: ': remove GC <s> markup, <s> must be RF|SS_cons|SA_cons|PP_cons'
  id: rm_gc
  inputBinding:
    prefix: --rm-gc
  type: string
- doc: ': annotate individual secondary structures by imposing consensus'
  id: sindi
  inputBinding:
    prefix: --sindi
  type: boolean
- doc: ': convert infernal 0.72-1.0.2 POST posterior prob annotation to PP'
  id: post_2pp
  inputBinding:
    prefix: --post2pp
  type: boolean
- doc: ': <msafile> contains protein alignments'
  id: amino
  inputBinding:
    prefix: --amino
  type: boolean
- doc: ': <msafile> contains DNA alignments'
  id: dna
  inputBinding:
    prefix: --dna
  type: boolean
- doc: ': <msafile> contains RNA alignments'
  id: rna
  inputBinding:
    prefix: --rna
  type: boolean
