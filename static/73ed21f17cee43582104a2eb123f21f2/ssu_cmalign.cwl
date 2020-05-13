class: CommandLineTool
id: ssu_cmalign.cwl
inputs:
- id: cm_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: sequence_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: o
  doc: ': output the alignment to file <f>, not stdout'
  type: string
  inputBinding:
    prefix: -o
- id: l
  doc: ': align locally w.r.t. the model'
  type: boolean
  inputBinding:
    prefix: -l
- id: q
  doc: ': quiet; suppress banner and scores, print only the alignment'
  type: boolean
  inputBinding:
    prefix: -q
- id: m
  doc: ': meta-cm mode: <cmfile> is a meta-cm built from aln in <f>'
  type: string
  inputBinding:
    prefix: -M
- id: i_leaved
  doc: ': output alnment in interleaved Stockholm format (not 1 line/seq)'
  type: boolean
  inputBinding:
    prefix: --ileaved
- id: no_prob
  doc: ': do not append posterior probabilities to alignment'
  type: boolean
  inputBinding:
    prefix: --no-prob
- id: in_format
  doc: ': specify the input file is in format <x>, not FASTA'
  type: string
  inputBinding:
    prefix: --informat
- id: chunk
  doc: ': num seqs for each temp alnment, for saving memory  [1000]'
  type: string
  inputBinding:
    prefix: --chunk
- id: devhelp
  doc: ': show list of undocumented developer options'
  type: boolean
  inputBinding:
    prefix: --devhelp
- id: opt_acc
  doc: ': align with the Holmes/Durbin optimal accuracy algorithm'
  type: boolean
  inputBinding:
    prefix: --optacc
- id: cy_k
  doc: ': align with the CYK algorithm'
  type: boolean
  inputBinding:
    prefix: --cyk
- id: sample
  doc: ': sample alignment of each seq from posterior distribution'
  type: boolean
  inputBinding:
    prefix: --sample
- id: s
  doc: ': w/--sample, set RNG seed to <n> (if 0: one-time arbitrary seed)'
  type: string
  inputBinding:
    prefix: -s
- id: viterbi
  doc: ': align to a CM Plan 9 HMM with the Viterbi algorithm'
  type: boolean
  inputBinding:
    prefix: --viterbi
- id: sub
  doc: ': build sub CM for columns b/t HMM predicted start/end points'
  type: boolean
  inputBinding:
    prefix: --sub
- id: small
  doc: ': use divide and conquer (d&c) alignment algorithm'
  type: boolean
  inputBinding:
    prefix: --small
- id: h_banded
  doc: ': accelerate using CM plan 9 HMM derived bands  [default]'
  type: boolean
  inputBinding:
    prefix: --hbanded
- id: non_banded
  doc: ': do not use bands to accelerate aln algorithm'
  type: boolean
  inputBinding:
    prefix: --nonbanded
- id: tau
  doc: ': set tail loss prob for --hbanded to <x>  [1E-7]  (0<x<1)'
  type: string
  inputBinding:
    prefix: --tau
- id: mx_size
  doc: ': set maximum allowable DP matrix size to <x> Mb  [2048.0]  (x>0.)'
  type: string
  inputBinding:
    prefix: --mxsize
- id: rna
  doc: ': output alignment as RNA sequence data'
  type: boolean
  inputBinding:
    prefix: --rna
- id: dna
  doc: ': output alignment as DNA (not RNA) sequence data'
  type: boolean
  inputBinding:
    prefix: --dna
- id: match_only
  doc: ': include only match columns in output alignment'
  type: boolean
  inputBinding:
    prefix: --matchonly
- id: with_ali
  doc: ': incl. alignment in <f> (must be aln <cm file> was built from)'
  type: string
  inputBinding:
    prefix: --withali
- id: with_p_knots
  doc: ': incl. structure (w/pknots) from <f> from --withali <f>'
  type: boolean
  inputBinding:
    prefix: --withpknots
- id: rf
  doc: ': --rf was originally used with cmbuild'
  type: boolean
  inputBinding:
    prefix: --rf
- id: gap_thresh
  doc: ': --gapthresh <x> was originally used with cmbuild  [0.5]'
  type: string
  inputBinding:
    prefix: --gapthresh
- id: cm_idx
  doc: ': only align seqs with CM number <n>    in the CM file  (n>0)'
  type: string
  inputBinding:
    prefix: --cm-idx
- id: cm_name
  doc: ': only align seqs with the CM named <s> in the CM file'
  type: string
  inputBinding:
    prefix: --cm-name
- id: t_file
  doc: ': dump individual sequence parsetrees to file <f>'
  type: string
  inputBinding:
    prefix: --tfile
- id: i_file
  doc: ': dump information on per-sequence inserts to file <f>'
  type: string
  inputBinding:
    prefix: --ifile
- id: el_file
  doc: ': dump information on per-sequence EL inserts to file <f>'
  type: string
  inputBinding:
    prefix: --elfile
- id: s_file
  doc: ': dump alignment score information to file <f>'
  type: string
  inputBinding:
    prefix: --sfile
outputs: []
cwlVersion: v1.1
baseCommand:
- ssu-cmalign
