class: CommandLineTool
id: esl_alimanip.cwl
inputs:
- id: msa_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: o
  doc: ': output the alignment to file <f>, not stdout'
  type: string
  inputBinding:
    prefix: -o
- id: in_format
  doc: ': specify that input file is in format <s>'
  type: string
  inputBinding:
    prefix: --informat
- id: out_format
  doc: ': specify that output format be <s>'
  type: string
  inputBinding:
    prefix: --outformat
- id: devhelp
  doc: ': show list of undocumented developer options'
  type: boolean
  inputBinding:
    prefix: --devhelp
- id: ln_fract
  doc: ': remove sequences w/length < <x> fraction of median length'
  type: string
  inputBinding:
    prefix: --lnfract
- id: lx_fract
  doc: ': remove sequences w/length > <x> fraction of median length'
  type: string
  inputBinding:
    prefix: --lxfract
- id: lm_in
  doc: ': remove sequences w/length < <n> residues'
  type: string
  inputBinding:
    prefix: --lmin
- id: lmax
  doc: ': remove sequences w/length > <n> residues'
  type: string
  inputBinding:
    prefix: --lmax
- id: rf_fract
  doc: ': remove seqs w/nongap RF len < <x> fraction of aln nongap RF len'
  type: string
  inputBinding:
    prefix: --rffract
- id: de_trunc
  doc: ": remove seqs w/gaps in >= <n> 5' or 3'-most nongap #=GC RF cols"
  type: string
  inputBinding:
    prefix: --detrunc
- id: x_am_big
  doc: ': remove sequences with >= <n> ambiguous residues'
  type: string
  inputBinding:
    prefix: --xambig
- id: seq_r
  doc: ': remove sequences with names listed in file <f>'
  type: string
  inputBinding:
    prefix: --seq-r
- id: seq_k
  doc: ': remove all seqs *except* those listed in <f>'
  type: string
  inputBinding:
    prefix: --seq-k
- id: small
  doc: ': w/--seq-r or --seq-k use minimal RAM (no seq reordering)'
  type: boolean
  inputBinding:
    prefix: --small
- id: k_reorder
  doc: ': with --seq-k <f>, reorder sequences to order in <f>'
  type: boolean
  inputBinding:
    prefix: --k-reorder
- id: seq_ins
  doc: ': keep only seqs w/an insert after nongap RF col <n>'
  type: string
  inputBinding:
    prefix: --seq-ins
- id: seq_ni
  doc: ': w/--seq-ins require at least <n> residue insertions  [1]'
  type: string
  inputBinding:
    prefix: --seq-ni
- id: seq_xi
  doc: ': w/--seq-ins require at most  <n> residue insertions  [1000000]'
  type: string
  inputBinding:
    prefix: --seq-xi
- id: trim
  doc: ': trim aligned seqs in <msafile> to subseqs in <f>'
  type: string
  inputBinding:
    prefix: --trim
- id: t_keep_rf
  doc: ': w/--trim keep GC RF annotation in msa, if it exists'
  type: boolean
  inputBinding:
    prefix: --t-keeprf
- id: min_pp
  doc: ': replace residues with posterior probabilities < <x> with gaps'
  type: string
  inputBinding:
    prefix: --minpp
- id: tree
  doc: ': reorder MSA to tree order following SLC, save Newick tree to <f>'
  type: string
  inputBinding:
    prefix: --tree
- id: reorder
  doc: ': reorder seqs to the order listed in <f>, all seqs must be listed'
  type: string
  inputBinding:
    prefix: --reorder
- id: mask2rf
  doc: ': set #=GC RF as x=1, gap=0 from 1/0s in 1-line <f>'
  type: string
  inputBinding:
    prefix: --mask2rf
- id: m_keep_rf
  doc: ": with --mask2rf, do not overwrite nongap RF characters with 'x'"
  type: boolean
  inputBinding:
    prefix: --m-keeprf
- id: num_all
  doc: ': add annotation numbering all columns'
  type: boolean
  inputBinding:
    prefix: --num-all
- id: num_rf
  doc: ': add annotation numbering the nongap RF columns'
  type: boolean
  inputBinding:
    prefix: --num-rf
- id: rm_gc
  doc: ': remove GC <s> markup, <s> must be RF|SS_cons|SA_cons|PP_cons'
  type: string
  inputBinding:
    prefix: --rm-gc
- id: sindi
  doc: ': annotate individual secondary structures by imposing consensus'
  type: boolean
  inputBinding:
    prefix: --sindi
- id: post_2pp
  doc: ': convert infernal 0.72-1.0.2 POST posterior prob annotation to PP'
  type: boolean
  inputBinding:
    prefix: --post2pp
- id: amino
  doc: ': <msafile> contains protein alignments'
  type: boolean
  inputBinding:
    prefix: --amino
- id: dna
  doc: ': <msafile> contains DNA alignments'
  type: boolean
  inputBinding:
    prefix: --dna
- id: rna
  doc: ': <msafile> contains RNA alignments'
  type: boolean
  inputBinding:
    prefix: --rna
outputs: []
cwlVersion: v1.1
baseCommand:
- esl-alimanip
