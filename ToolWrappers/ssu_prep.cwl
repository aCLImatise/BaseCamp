class: CommandLineTool
id: ssu_prep.cwl
inputs:
- id: in_force_dir_named
  doc: ': force; if dir named <output dir> already exists, empty it first'
  type: boolean
  inputBinding:
    prefix: -f
- id: in_third_command_line
  doc: ': third command line arg is number of seqs per job, not number of jobs'
  type: boolean
  inputBinding:
    prefix: -q
- id: in_split_seqs_job
  doc: ': split seqs so each job has an equal number of seqs, not nucleotides'
  type: boolean
  inputBinding:
    prefix: -e
- id: in_no_bash
  doc: ': write generic shell script instead of a bash-specific one'
  type: boolean
  inputBinding:
    prefix: --no-bash
- id: in_no_merge
  doc: ': do not have final ssu-align job automatically merge all jobs'
  type: boolean
  inputBinding:
    prefix: --no-merge
- id: in_keep_merge
  doc: ': have final ssu-align job not remove small files as they are merged'
  type: boolean
  inputBinding:
    prefix: --keep-merge
- id: in_use_cm_file
  doc: ': use CM file <f> instead of the default CM file'
  type: File
  inputBinding:
    prefix: -m
- id: in_set_bit_score
  doc: ': set minimum bit score of a surviving subsequence as <x> [default: 50]'
  type: long
  inputBinding:
    prefix: -b
- id: in_set_minimum_length
  doc: ': set minimum length    of a surviving subsequence as <n> [default: 1]'
  type: long
  inputBinding:
    prefix: -l
- id: in_output_alignments_interleaved
  doc: ': output alignments in interleaved Stockholm format (not 1 line/seq)'
  type: boolean
  inputBinding:
    prefix: -i
- id: in_only_search_align
  doc: ": only search with and align to single CM named <s> in CM file\n(default CM\
    \ file includes 'archaea', 'bacteria', 'eukarya')"
  type: File
  inputBinding:
    prefix: -n
- id: in_dna
  doc: ': output alignments as DNA, default is RNA (even if input is DNA)'
  type: boolean
  inputBinding:
    prefix: --dna
- id: in_rf_only
  doc: ": discard inserts, only keep consensus (nongap RF) columns in alignments\n\
    (alignments will be fixed width but won't include all target nucleotides)"
  type: boolean
  inputBinding:
    prefix: --rfonly
- id: in_no_align
  doc: ': only search target sequence file for hits, skip alignment step'
  type: boolean
  inputBinding:
    prefix: --no-align
- id: in_no_search
  doc: ': only align  target sequence file, skip initial search step'
  type: boolean
  inputBinding:
    prefix: --no-search
- id: in_top_only
  doc: ': only search the top strand [default: search both strands]'
  type: boolean
  inputBinding:
    prefix: --toponly
- id: in_forward
  doc: ': use the HMM forward algorithm for searching, not HMM viterbi'
  type: boolean
  inputBinding:
    prefix: --forward
- id: in_global
  doc: ': search with globally configured HMM [default: local]'
  type: boolean
  inputBinding:
    prefix: --global
- id: in_keep_int
  doc: ': keep intermediate files which are normally removed'
  type: boolean
  inputBinding:
    prefix: --keep-int
- id: in_aln_one
  doc: ': only align best-matching sequences to the CM named <s> in CM file'
  type: File
  inputBinding:
    prefix: --aln-one
- id: in_no_trunc
  doc: ': do not truncate seqs to HMM predicted start/end, align full seqs'
  type: boolean
  inputBinding:
    prefix: --no-trunc
- id: in_no_prob
  doc: ': do not append posterior probabilities to alignments'
  type: boolean
  inputBinding:
    prefix: --no-prob
- id: in_mx_size
  doc: ': increase mx size for cmalign to <f> Mb [default: 4096]'
  type: long
  inputBinding:
    prefix: --mxsize
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: in_y
  doc: ''
  type: boolean
  inputBinding:
    prefix: -y
- id: in_x
  doc: ''
  type: boolean
  inputBinding:
    prefix: -x
- id: in_seq_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_dir
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_num_jobs
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: in_prefix_slash_suffix_file
  doc: ''
  type: File
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ssu-prep
