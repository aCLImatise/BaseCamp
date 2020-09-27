class: CommandLineTool
id: ssu_cmstat.cwl
inputs:
- id: in_configure_cm_glocal
  doc: ': configure CM for glocal alignment [default: local]'
  type: boolean
  inputBinding:
    prefix: -g
- id: in_only_print_model
  doc: ': only print one line summary of model statistics  [default]'
  type: boolean
  inputBinding:
    prefix: -m
- id: in_set_database_size
  doc: ': set Z (database size in *Mb*) to <x> for E-value calculations'
  type: long
  inputBinding:
    prefix: -Z
- id: in_all
  doc: ': print model, E-value and filter thresholds stats'
  type: boolean
  inputBinding:
    prefix: --all
- id: in_le
  doc: ': only print one line summary of  local E-value statistics'
  type: boolean
  inputBinding:
    prefix: --le
- id: in_ge
  doc: ': only print one line summary of glocal E-value statistics'
  type: boolean
  inputBinding:
    prefix: --ge
- id: in_beta
  doc: ': set tail loss prob for QDB stats to <x>  [1E-7]  (0<x<1)'
  type: double
  inputBinding:
    prefix: --beta
- id: in_qdb_file
  doc: ': save query-dependent bands (QDBs) for each state to file <f>'
  type: File
  inputBinding:
    prefix: --qdbfile
- id: in_lfi
  doc: ': only print summary of  local Inside filter threshold stats'
  type: boolean
  inputBinding:
    prefix: --lfi
- id: in_gfi
  doc: ': only print summary of glocal Inside filter threshold stats'
  type: boolean
  inputBinding:
    prefix: --gfi
- id: in_lfc
  doc: ': only print summary of  local CYK    filter threshold stats'
  type: boolean
  inputBinding:
    prefix: --lfc
- id: in_gfc
  doc: ': only print summary of glocal CYK    filter threshold stats'
  type: boolean
  inputBinding:
    prefix: --gfc
- id: in_print_cmsearch_e
  doc: ': print HMM filter stats for cmsearch E cutoff <x>  (x>0)'
  type: long
  inputBinding:
    prefix: -E
- id: in_cmsearch_cmsearch_bit
  doc: ': print HMM filter stats for cmsearch bit cutoff <x>'
  type: string
  inputBinding:
    prefix: -T
- id: in_nc
  doc: ': print HMM filter stats for Rfam NC cutoff'
  type: boolean
  inputBinding:
    prefix: --nc
- id: in_ga
  doc: ': print HMM filter stats for Rfam GA cutoff'
  type: boolean
  inputBinding:
    prefix: --ga
- id: in_tc
  doc: ': print HMM filter stats for Rfam TC cutoff'
  type: boolean
  inputBinding:
    prefix: --tc
- id: in_seq_file
  doc: ': compute E-value cutoffs for sequence file <f>'
  type: File
  inputBinding:
    prefix: --seqfile
- id: in_top_only
  doc: ': with --seqfile, only consider top-strand'
  type: boolean
  inputBinding:
    prefix: --toponly
- id: in_search
  doc: ': do search timing experiments'
  type: boolean
  inputBinding:
    prefix: --search
- id: in_wsearch_set_seed
  doc: ': w/--search, set RNG seed to <n> (if 0: one-time arbitrary seed)'
  type: long
  inputBinding:
    prefix: -s
- id: in_cml
  doc: ': length of sequences for CM search stats'
  type: long
  inputBinding:
    prefix: --cmL
- id: in_hmm_l
  doc: ': length of sequences for CP9 HMM search stats'
  type: long
  inputBinding:
    prefix: --hmmL
- id: in_e_file
  doc: ': output HMM filter E-val cutoff vs CM E-val cutoff plots to <f>'
  type: string
  inputBinding:
    prefix: --efile
- id: in_b_file
  doc: ': output HMM filter bit sc cutoff vs CM bit sc cutoff plots to <f>'
  type: string
  inputBinding:
    prefix: --bfile
- id: in_s_file
  doc: ': output predicted survival fraction vs CM cutoff plots to <f>'
  type: string
  inputBinding:
    prefix: --sfile
- id: in_x_file
  doc: ': output predicted xhmm (calcs * HMM) vs CM cutoff plots to <f>'
  type: string
  inputBinding:
    prefix: --xfile
- id: in_a_file
  doc: ': output predicted acceleration vs CM cutoff plots to <f>'
  type: string
  inputBinding:
    prefix: --afile
- id: in_bits
  doc: ': with --{s,x,a}file, plot CM bit score cutoffs not E-values'
  type: boolean
  inputBinding:
    prefix: --bits
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: in_cm_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ssu-cmstat
