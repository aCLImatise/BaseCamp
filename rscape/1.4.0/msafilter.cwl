#!/usr/bin/env cwl-runner

baseCommand:
- msafilter
class: CommandLineTool
cwlVersion: v1.0
id: msafilter
inputs:
- doc: ''
  id: msa_file
  inputBinding:
    position: 0
  type: string
- doc: ': specify a directory for all output files'
  id: outdir
  inputBinding:
    prefix: --outdir
  type: string
- doc: ': be verbose'
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: ': window size  (n>0)'
  id: window
  inputBinding:
    prefix: --window
  type: string
- doc: ': window slide  [50]  (n>0)'
  id: slide
  inputBinding:
    prefix: --slide
  type: string
- doc: ': if file has more than one msa, analyze only the first one'
  id: one_msa
  inputBinding:
    prefix: --onemsa
  type: boolean
- doc: ': filter out seqs <x*seq_cons residues  (0<x<=1.0)'
  id: f
  inputBinding:
    prefix: -F
  type: string
- doc: ': require seqs to have < <x> id  [1.0]  (0<x<=1.0)'
  id: i
  inputBinding:
    prefix: -I
  type: string
- doc: ': require seqs to have >= <x> id  (0<=x<1.0)'
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: ': min alignment position to analyze [1..alen]  (n>0)'
  id: t_start
  inputBinding:
    prefix: --tstart
  type: string
- doc: ': max alignment position to analyze [1..alen]  (n>0)'
  id: tend
  inputBinding:
    prefix: --tend
  type: string
- doc: ': analyze only consensus (seq_cons) positions'
  id: consensus
  inputBinding:
    prefix: --consensus
  type: boolean
- doc: ': take n random sequences from the alignment, all if NULL  (n>0)'
  id: sub_msa
  inputBinding:
    prefix: --submsa
  type: string
- doc: ': minimum number of sequences in the alignment  (n>0)'
  id: n_seq_min
  inputBinding:
    prefix: --nseqmin
  type: string
- doc: ': keep columns with < <x> fraction of gaps  [1.0]  (0<=x<=1)'
  id: gap_thresh
  inputBinding:
    prefix: --gapthresh
  type: string
- doc: ': minimum avgid of the given alignment  (0<x<=1.0)'
  id: mini_d
  inputBinding:
    prefix: --minid
  type: string
- doc: ': maximum avgid of the given alignment  (0<x<=1.0)'
  id: max_id
  inputBinding:
    prefix: --maxid
  type: string
- doc: ': specify format'
  id: in_format
  inputBinding:
    prefix: --informat
  type: string
- doc: ': write msa used to file <f>,'
  id: out_msa
  inputBinding:
    prefix: --outmsa
  type: string
- doc: ': write map file to <f>'
  id: out_map
  inputBinding:
    prefix: --outmap
  type: string
- doc: ': set RNG seed to <n>. Use 0 for a random seed.  [42]  (n>=0)'
  id: seed
  inputBinding:
    prefix: --seed
  type: string
