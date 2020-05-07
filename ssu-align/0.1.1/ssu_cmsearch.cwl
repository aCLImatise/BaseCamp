class: CommandLineTool
id: ssu_cmsearch.cwl
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
  doc: ': direct output to file <f>, not stdout'
  type: string
  inputBinding:
    prefix: -o
- id: g
  doc: ': configure CM/HMM for glocal alignment [default: local]'
  type: boolean
  inputBinding:
    prefix: -g
- id: p
  doc: ': append posterior probabilities to hit alignments'
  type: boolean
  inputBinding:
    prefix: -p
- id: x
  doc: ": annotate non-compensatory bps in output alignments with 'x'"
  type: boolean
  inputBinding:
    prefix: -x
- id: v
  doc: ": annotate negative scoring non-canonical bps with 'v'"
  type: boolean
  inputBinding:
    prefix: -v
- id: z
  doc: ': set Z (database size in *Mb*) to <x> for E-value calculations'
  type: string
  inputBinding:
    prefix: -Z
- id: top_only
  doc: ': only search the top strand'
  type: boolean
  inputBinding:
    prefix: --toponly
- id: bottom_only
  doc: ': only search the bottom strand'
  type: boolean
  inputBinding:
    prefix: --bottomonly
- id: forecast
  doc: ": don't do search, forecast running time with <n> processors"
  type: string
  inputBinding:
    prefix: --forecast
- id: in_format
  doc: ': specify the input file is in format <x>, not FASTA'
  type: string
  inputBinding:
    prefix: --informat
- id: mx_size
  doc: ': set maximum allowable HMM banded DP matrix size to <x> Mb'
  type: string
  inputBinding:
    prefix: --mxsize
- id: devhelp
  doc: ': show list of undocumented developer options'
  type: boolean
  inputBinding:
    prefix: --devhelp
- id: inside
  doc: ': use scanning CM Inside algorithm  [default]'
  type: boolean
  inputBinding:
    prefix: --inside
- id: cy_k
  doc: ': use scanning CM CYK algorithm'
  type: boolean
  inputBinding:
    prefix: --cyk
- id: forward
  doc: ': use scanning HMM Forward algorithm'
  type: boolean
  inputBinding:
    prefix: --forward
- id: viterbi
  doc: ': use scanning HMM Viterbi algorithm'
  type: boolean
  inputBinding:
    prefix: --viterbi
- id: e
  doc: ': use cutoff E-value of <x> for final round of search  [1.0]  (x>0.)'
  type: string
  inputBinding:
    prefix: -E
- id: t
  doc: ': use cutoff bit score of <x> for final round of search  [0.0]'
  type: string
  inputBinding:
    prefix: -T
- id: nc
  doc: ': use CM Rfam NC noise cutoff as cutoff bit score'
  type: boolean
  inputBinding:
    prefix: --nc
- id: ga
  doc: ': use CM Rfam GA gathering threshold as cutoff bit score'
  type: boolean
  inputBinding:
    prefix: --ga
- id: tc
  doc: ': use CM Rfam TC trusted cutoff as cutoff bit score'
  type: boolean
  inputBinding:
    prefix: --tc
- id: no_qdb
  doc: ': do not use QDBs in final round of searching'
  type: boolean
  inputBinding:
    prefix: --no-qdb
- id: beta
  doc: ': set tail loss prob for QDB calculation to <x>  [1e-15]  (0<x<1)'
  type: string
  inputBinding:
    prefix: --beta
- id: h_banded
  doc: ': calculate and use HMM bands in final round of CM search'
  type: boolean
  inputBinding:
    prefix: --hbanded
- id: tau
  doc: ': set tail loss prob for --hbanded to <x>  [1e-7]  (0<x<1)'
  type: string
  inputBinding:
    prefix: --tau
- id: fil_no_hmm
  doc: ': do not filter with HMM Forward algorithm'
  type: boolean
  inputBinding:
    prefix: --fil-no-hmm
- id: fil_no_qdb
  doc: ': do not filter with CM banded CYK'
  type: boolean
  inputBinding:
    prefix: --fil-no-qdb
- id: fil_beta
  doc: ': set tail loss prob for QDB filter to <x>  [1e-10]  (x>0)'
  type: string
  inputBinding:
    prefix: --fil-beta
- id: fil_t_qdb
  doc: ': set QDB CM filter cutoff bit score as <x>  [0.0]'
  type: string
  inputBinding:
    prefix: --fil-T-qdb
- id: fil_t_hmm
  doc: ': set HMM filter cutoff bit score as <x>  [3.0]'
  type: string
  inputBinding:
    prefix: --fil-T-hmm
- id: fil_e_qdb
  doc: ': set QDB CM filter cutoff E-value as <x>'
  type: string
  inputBinding:
    prefix: --fil-E-qdb
- id: fil_e_hmm
  doc: ': set HMM filter cutoff E-value as <x>'
  type: string
  inputBinding:
    prefix: --fil-E-hmm
- id: fil_s_hmm
  doc: ': set HMM filter predicted surv fract as <x>'
  type: string
  inputBinding:
    prefix: --fil-S-hmm
- id: fil_smax_hmm
  doc: ': set maximum HMM survival fraction as <x>  [0.5]'
  type: string
  inputBinding:
    prefix: --fil-Smax-hmm
- id: fil_sm_in_hmm
  doc: ': set minimum HMM survival fraction as <x>  [0.02]'
  type: string
  inputBinding:
    prefix: --fil-Smin-hmm
- id: fil_a_hmm
  doc: ': always filter w/HMM w/surv fract <= <x> from --fil-Smax-hmm'
  type: boolean
  inputBinding:
    prefix: --fil-A-hmm
- id: hmm_w
  doc: ': set HMM window size as <n>  (n>1)'
  type: string
  inputBinding:
    prefix: --hmm-W
- id: hmm_cw
  doc: ': set HMM window size as <x> * consensus length  (x>0.01)'
  type: string
  inputBinding:
    prefix: --hmm-cW
- id: no_align
  doc: ": find start/stop/score only; don't do alignments"
  type: boolean
  inputBinding:
    prefix: --noalign
- id: aln_h_banded
  doc: ': use HMM bands to align hits'
  type: boolean
  inputBinding:
    prefix: --aln-hbanded
- id: aln_opt_acc
  doc: ': align hits with the optimal accuracy algorithm, not CYK'
  type: boolean
  inputBinding:
    prefix: --aln-optacc
- id: cm_idx
  doc: ': only search with CM number <n>    in the CM file  (n>0)'
  type: string
  inputBinding:
    prefix: --cm-idx
- id: cm_name
  doc: ': only search with the CM named <s> in the CM file'
  type: string
  inputBinding:
    prefix: --cm-name
- id: tab_file
  doc: ': save hits in tabular format to file <f>'
  type: string
  inputBinding:
    prefix: --tabfile
- id: gc_file
  doc: ': save GC content stats of target sequence file to <f>'
  type: string
  inputBinding:
    prefix: --gcfile
- id: rna
  doc: ': output hit alignments as RNA sequence data  [default]'
  type: boolean
  inputBinding:
    prefix: --rna
- id: dna
  doc: ': output hit alignments as DNA (not RNA) sequence data'
  type: boolean
  inputBinding:
    prefix: --dna
outputs: []
cwlVersion: v1.1
baseCommand:
- ssu-cmsearch
