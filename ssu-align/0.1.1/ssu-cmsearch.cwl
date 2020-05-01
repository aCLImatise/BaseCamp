#!/usr/bin/env cwl-runner

baseCommand:
- ssu-cmsearch
class: CommandLineTool
cwlVersion: v1.0
id: ssu-cmsearch
inputs:
- doc: ''
  id: cm_file
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: sequence_file
  inputBinding:
    position: 1
  type: string
- doc: ': direct output to file <f>, not stdout'
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ': configure CM/HMM for glocal alignment [default: local]'
  id: g
  inputBinding:
    prefix: -g
  type: boolean
- doc: ': append posterior probabilities to hit alignments'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: ": annotate non-compensatory bps in output alignments with 'x'"
  id: x
  inputBinding:
    prefix: -x
  type: boolean
- doc: ": annotate negative scoring non-canonical bps with 'v'"
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: ': set Z (database size in *Mb*) to <x> for E-value calculations'
  id: z
  inputBinding:
    prefix: -Z
  type: string
- doc: ': only search the top strand'
  id: top_only
  inputBinding:
    prefix: --toponly
  type: boolean
- doc: ': only search the bottom strand'
  id: bottom_only
  inputBinding:
    prefix: --bottomonly
  type: boolean
- doc: ": don't do search, forecast running time with <n> processors"
  id: forecast
  inputBinding:
    prefix: --forecast
  type: string
- doc: ': specify the input file is in format <x>, not FASTA'
  id: in_format
  inputBinding:
    prefix: --informat
  type: string
- doc: ': set maximum allowable HMM banded DP matrix size to <x> Mb'
  id: mx_size
  inputBinding:
    prefix: --mxsize
  type: string
- doc: ': show list of undocumented developer options'
  id: devhelp
  inputBinding:
    prefix: --devhelp
  type: boolean
- doc: ': use scanning CM Inside algorithm  [default]'
  id: inside
  inputBinding:
    prefix: --inside
  type: boolean
- doc: ': use scanning CM CYK algorithm'
  id: cy_k
  inputBinding:
    prefix: --cyk
  type: boolean
- doc: ': use scanning HMM Forward algorithm'
  id: forward
  inputBinding:
    prefix: --forward
  type: boolean
- doc: ': use scanning HMM Viterbi algorithm'
  id: viterbi
  inputBinding:
    prefix: --viterbi
  type: boolean
- doc: ': use cutoff E-value of <x> for final round of search  [1.0]  (x>0.)'
  id: e
  inputBinding:
    prefix: -E
  type: string
- doc: ': use cutoff bit score of <x> for final round of search  [0.0]'
  id: t
  inputBinding:
    prefix: -T
  type: string
- doc: ': use CM Rfam NC noise cutoff as cutoff bit score'
  id: nc
  inputBinding:
    prefix: --nc
  type: boolean
- doc: ': use CM Rfam GA gathering threshold as cutoff bit score'
  id: ga
  inputBinding:
    prefix: --ga
  type: boolean
- doc: ': use CM Rfam TC trusted cutoff as cutoff bit score'
  id: tc
  inputBinding:
    prefix: --tc
  type: boolean
- doc: ': do not use QDBs in final round of searching'
  id: no_qdb
  inputBinding:
    prefix: --no-qdb
  type: boolean
- doc: ': set tail loss prob for QDB calculation to <x>  [1e-15]  (0<x<1)'
  id: beta
  inputBinding:
    prefix: --beta
  type: string
- doc: ': calculate and use HMM bands in final round of CM search'
  id: h_banded
  inputBinding:
    prefix: --hbanded
  type: boolean
- doc: ': set tail loss prob for --hbanded to <x>  [1e-7]  (0<x<1)'
  id: tau
  inputBinding:
    prefix: --tau
  type: string
- doc: ': do not filter with HMM Forward algorithm'
  id: fil_no_hmm
  inputBinding:
    prefix: --fil-no-hmm
  type: boolean
- doc: ': do not filter with CM banded CYK'
  id: fil_no_qdb
  inputBinding:
    prefix: --fil-no-qdb
  type: boolean
- doc: ': set tail loss prob for QDB filter to <x>  [1e-10]  (x>0)'
  id: fil_beta
  inputBinding:
    prefix: --fil-beta
  type: string
- doc: ': set QDB CM filter cutoff bit score as <x>  [0.0]'
  id: fil_t_qdb
  inputBinding:
    prefix: --fil-T-qdb
  type: string
- doc: ': set HMM filter cutoff bit score as <x>  [3.0]'
  id: fil_t_hmm
  inputBinding:
    prefix: --fil-T-hmm
  type: string
- doc: ': set QDB CM filter cutoff E-value as <x>'
  id: fil_e_qdb
  inputBinding:
    prefix: --fil-E-qdb
  type: string
- doc: ': set HMM filter cutoff E-value as <x>'
  id: fil_e_hmm
  inputBinding:
    prefix: --fil-E-hmm
  type: string
- doc: ': set HMM filter predicted surv fract as <x>'
  id: fil_s_hmm
  inputBinding:
    prefix: --fil-S-hmm
  type: string
- doc: ': set maximum HMM survival fraction as <x>  [0.5]'
  id: fil_smax_hmm
  inputBinding:
    prefix: --fil-Smax-hmm
  type: string
- doc: ': set minimum HMM survival fraction as <x>  [0.02]'
  id: fil_sm_in_hmm
  inputBinding:
    prefix: --fil-Smin-hmm
  type: string
- doc: ': always filter w/HMM w/surv fract <= <x> from --fil-Smax-hmm'
  id: fil_a_hmm
  inputBinding:
    prefix: --fil-A-hmm
  type: boolean
- doc: ': set HMM window size as <n>  (n>1)'
  id: hmm_w
  inputBinding:
    prefix: --hmm-W
  type: string
- doc: ': set HMM window size as <x> * consensus length  (x>0.01)'
  id: hmm_cw
  inputBinding:
    prefix: --hmm-cW
  type: string
- doc: ": find start/stop/score only; don't do alignments"
  id: no_align
  inputBinding:
    prefix: --noalign
  type: boolean
- doc: ': use HMM bands to align hits'
  id: aln_h_banded
  inputBinding:
    prefix: --aln-hbanded
  type: boolean
- doc: ': align hits with the optimal accuracy algorithm, not CYK'
  id: aln_opt_acc
  inputBinding:
    prefix: --aln-optacc
  type: boolean
- doc: ': only search with CM number <n>    in the CM file  (n>0)'
  id: cm_idx
  inputBinding:
    prefix: --cm-idx
  type: string
- doc: ': only search with the CM named <s> in the CM file'
  id: cm_name
  inputBinding:
    prefix: --cm-name
  type: string
- doc: ': save hits in tabular format to file <f>'
  id: tab_file
  inputBinding:
    prefix: --tabfile
  type: string
- doc: ': save GC content stats of target sequence file to <f>'
  id: gc_file
  inputBinding:
    prefix: --gcfile
  type: string
- doc: ': output hit alignments as RNA sequence data  [default]'
  id: rna
  inputBinding:
    prefix: --rna
  type: boolean
- doc: ': output hit alignments as DNA (not RNA) sequence data'
  id: dna
  inputBinding:
    prefix: --dna
  type: boolean
