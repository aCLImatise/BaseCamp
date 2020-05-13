class: CommandLineTool
id: cmalign.cwl
inputs:
- id: cm_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: seq_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: o
  doc: ': output the alignment to file <f>, not stdout'
  type: string
  inputBinding:
    prefix: -o
- id: g
  doc: ': configure CM for global alignment [default: local]'
  type: boolean
  inputBinding:
    prefix: -g
- id: opt_acc
  doc: ': use the Holmes/Durbin optimal accuracy algorithm  [default]'
  type: boolean
  inputBinding:
    prefix: --optacc
- id: cy_k
  doc: ': use the CYK algorithm'
  type: boolean
  inputBinding:
    prefix: --cyk
- id: sample
  doc: ': sample alignment of each seq from posterior distribution'
  type: boolean
  inputBinding:
    prefix: --sample
- id: seed
  doc: ': w/--sample, set RNG seed to <n> (if 0: one-time arbitrary seed)'
  type: string
  inputBinding:
    prefix: --seed
- id: not_run_c
  doc: ': do not use truncated alignment algorithm'
  type: boolean
  inputBinding:
    prefix: --notrunc
- id: sub
  doc: ': build sub CM for columns b/t HMM predicted start/end points'
  type: boolean
  inputBinding:
    prefix: --sub
- id: h_banded
  doc: ': accelerate using CM plan 9 HMM derived bands  [default]'
  type: boolean
  inputBinding:
    prefix: --hbanded
- id: tau
  doc: ': set tail loss prob for HMM bands to <x>  [1e-7]  (1e-18<x<1)'
  type: string
  inputBinding:
    prefix: --tau
- id: mx_size
  doc: ': set maximum allowable DP matrix size to <x> Mb  [1028.0]  (x>0.)'
  type: string
  inputBinding:
    prefix: --mxsize
- id: fixed_tau
  doc: ': do not adjust tau (tighten bands) until mx size is < limit'
  type: boolean
  inputBinding:
    prefix: --fixedtau
- id: max_tau
  doc: ': set max tau <x> when tightening HMM bands  [0.05]  (0<x<0.5)'
  type: string
  inputBinding:
    prefix: --maxtau
- id: non_banded
  doc: ': do not use HMM bands for faster alignment'
  type: boolean
  inputBinding:
    prefix: --nonbanded
- id: small
  doc: ': use small memory divide and conquer (d&c) algorithm'
  type: boolean
  inputBinding:
    prefix: --small
- id: s_file
  doc: ': dump alignment score information to file <f>'
  type: string
  inputBinding:
    prefix: --sfile
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
- id: map_ali
  doc: ': include alignment in file <f> (same ali that CM came from)'
  type: string
  inputBinding:
    prefix: --mapali
- id: map_str
  doc: ': include structure (w/pknots) from <f> from --mapali <f>'
  type: boolean
  inputBinding:
    prefix: --mapstr
- id: noss
  doc: ': cmbuild --noss option was used w/aln from --mapali <f>'
  type: boolean
  inputBinding:
    prefix: --noss
- id: in_format
  doc: ': assert <seqfile> is in format <s>: no autodetection'
  type: string
  inputBinding:
    prefix: --informat
- id: out_format
  doc: ': output alignment in format <s>  [Stockholm]'
  type: string
  inputBinding:
    prefix: --outformat
- id: dna_out
  doc: ': output alignment as DNA (not RNA) sequence data'
  type: boolean
  inputBinding:
    prefix: --dnaout
- id: no_prob
  doc: ': do not include posterior probabilities in the alignment'
  type: boolean
  inputBinding:
    prefix: --noprob
- id: match_only
  doc: ': include only match columns in output alignment'
  type: boolean
  inputBinding:
    prefix: --matchonly
- id: i_leaved
  doc: ': force output in interleaved Stockholm format'
  type: boolean
  inputBinding:
    prefix: --ileaved
- id: regress
  doc: ': save regression test data to file <f>'
  type: string
  inputBinding:
    prefix: --regress
- id: verbose
  doc: ': report extra information; mainly useful for debugging'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: cpu
  doc: ': number of parallel CPU workers to use for multithreads  (n>=0)'
  type: string
  inputBinding:
    prefix: --cpu
outputs: []
cwlVersion: v1.1
baseCommand:
- cmalign
