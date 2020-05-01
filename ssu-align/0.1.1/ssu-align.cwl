#!/usr/bin/env cwl-runner

baseCommand:
- ssu-align
class: CommandLineTool
cwlVersion: v1.0
id: ssu-align
inputs:
- doc: ''
  id: sequence_file
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: output_dir
  inputBinding:
    position: 1
  type: string
- doc: ': force; if dir named <output dir> already exists, empty it first'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: ': use CM file <f> instead of the default CM file'
  id: m
  inputBinding:
    prefix: -m
  type: string
- doc: ': set minimum bit score of a surviving subsequence as <x> [default: 50]'
  id: b
  inputBinding:
    prefix: -b
  type: string
- doc: ': set minimum length    of a surviving subsequence as <n> [default: 1]'
  id: l
  inputBinding:
    prefix: -l
  type: string
- doc: ': output alignments in interleaved Stockholm format (not 1 line/seq)'
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: ": only search with and align to single CM named <s> in CM file (default CM\
    \ file includes 'archaea', 'bacteria', 'eukarya')"
  id: n
  inputBinding:
    prefix: -n
  type: string
- doc: ': output alignments as DNA, default is RNA (even if input is DNA)'
  id: dna
  inputBinding:
    prefix: --dna
  type: boolean
- doc: ": discard inserts, only keep consensus (nongap RF) columns in alignments (alignments\
    \ will be fixed width but won't include all target nucleotides)"
  id: rf_only
  inputBinding:
    prefix: --rfonly
  type: boolean
- doc: ': only search target sequence file for hits, skip alignment step'
  id: no_align
  inputBinding:
    prefix: --no-align
  type: boolean
- doc: ': only align  target sequence file, skip initial search step'
  id: no_search
  inputBinding:
    prefix: --no-search
  type: boolean
- doc: ': only search the top strand [default: search both strands]'
  id: top_only
  inputBinding:
    prefix: --toponly
  type: boolean
- doc: ': use the HMM forward algorithm for searching, not HMM viterbi'
  id: forward
  inputBinding:
    prefix: --forward
  type: boolean
- doc: ': search with globally configured HMM [default: local]'
  id: global
  inputBinding:
    prefix: --global
  type: boolean
- doc: ': keep intermediate files which are normally removed'
  id: keep_int
  inputBinding:
    prefix: --keep-int
  type: boolean
- doc: ': only align best-matching sequences to the CM named <s> in CM file'
  id: aln_one
  inputBinding:
    prefix: --aln-one
  type: string
- doc: ': do not truncate seqs to HMM predicted start/end, align full seqs'
  id: no_trunc
  inputBinding:
    prefix: --no-trunc
  type: boolean
- doc: ': do not append posterior probabilities to alignments'
  id: no_prob
  inputBinding:
    prefix: --no-prob
  type: boolean
- doc: ': increase mx size for cmalign to <f> Mb [default: 4096]'
  id: mx_size
  inputBinding:
    prefix: --mxsize
  type: string
