class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ssu_align.cwl
inputs:
- id: force_dir_named
  doc: ': force; if dir named <output dir> already exists, empty it first'
  type: boolean
  inputBinding:
    prefix: -f
- id: use_file_f
  doc: ': use CM file <f> instead of the default CM file'
  type: string
  inputBinding:
    prefix: -m
- id: set_bit_score
  doc: ': set minimum bit score of a surviving subsequence as <x> [default: 50]'
  type: string
  inputBinding:
    prefix: -b
- id: set_minimum_length
  doc: ': set minimum length    of a surviving subsequence as <n> [default: 1]'
  type: string
  inputBinding:
    prefix: -l
- id: output_alignments_interleaved
  doc: ': output alignments in interleaved Stockholm format (not 1 line/seq)'
  type: boolean
  inputBinding:
    prefix: -i
- id: only_search_align
  doc: ": only search with and align to single CM named <s> in CM file (default CM\
    \ file includes 'archaea', 'bacteria', 'eukarya')"
  type: string
  inputBinding:
    prefix: -n
- id: dna
  doc: ': output alignments as DNA, default is RNA (even if input is DNA)'
  type: boolean
  inputBinding:
    prefix: --dna
- id: rf_only
  doc: ": discard inserts, only keep consensus (nongap RF) columns in alignments (alignments\
    \ will be fixed width but won't include all target nucleotides)"
  type: boolean
  inputBinding:
    prefix: --rfonly
- id: no_align
  doc: ': only search target sequence file for hits, skip alignment step'
  type: boolean
  inputBinding:
    prefix: --no-align
- id: no_search
  doc: ': only align  target sequence file, skip initial search step'
  type: boolean
  inputBinding:
    prefix: --no-search
- id: top_only
  doc: ': only search the top strand [default: search both strands]'
  type: boolean
  inputBinding:
    prefix: --toponly
- id: forward
  doc: ': use the HMM forward algorithm for searching, not HMM viterbi'
  type: boolean
  inputBinding:
    prefix: --forward
- id: global
  doc: ': search with globally configured HMM [default: local]'
  type: boolean
  inputBinding:
    prefix: --global
- id: keep_int
  doc: ': keep intermediate files which are normally removed'
  type: boolean
  inputBinding:
    prefix: --keep-int
- id: aln_one
  doc: ': only align best-matching sequences to the CM named <s> in CM file'
  type: string
  inputBinding:
    prefix: --aln-one
- id: no_trunc
  doc: ': do not truncate seqs to HMM predicted start/end, align full seqs'
  type: boolean
  inputBinding:
    prefix: --no-trunc
- id: no_prob
  doc: ': do not append posterior probabilities to alignments'
  type: boolean
  inputBinding:
    prefix: --no-prob
- id: mx_size
  doc: ': increase mx size for cmalign to <f> Mb [default: 4096]'
  type: string
  inputBinding:
    prefix: --mxsize
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: sequence_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_dir
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- ssu-align
